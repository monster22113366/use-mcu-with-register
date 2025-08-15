#include "User.h"

#ifdef use_dma_idle_interrupt
    uint8_t rx_buffer[DMA_BUFFER_SIZE]; // 接收缓冲区
    uint8_t dma_rx_buffer[DMA_BUFFER_SIZE]; // DMA接收缓冲区
    uint32_t rx_len = 0; // 接收数据长度
    volatile uint8_t rx_flag = 0; // 接收完成标志
#endif

#ifdef use_rx_interrupt
uint8_t rx_index = 0; // 写指针
uint32_t rx_tick;
#endif

void usart1_init(void) {
    // 1. 使能GPIOA和USART1的时钟
    // 使能GPIOB时钟 (AHB1ENR的第1位)
    RCC->AHB1ENR |= (1 << 1);
    // 使能USART1时钟 (APB2ENR的第4位)
    RCC->APB2ENR |= (1 << 4);

    // 2. 配置GPIO引脚PB7和PB6为复用功能
    // 将PB6和PB7配置为复用功能模式（Alternative Function）
    // MODER寄存器，每两位控制一个引脚。PB7是第14、15位，PB6是第12、13位。
    // 00：输入，01：通用输出，10：复用功能，11：模拟
    GPIOB->MODER &= ~((3 << 14) | (3 << 12));  // 清除原来的设置
    GPIOB->MODER |= (2 << 14) | (2 << 12);    // 设置为复用功能

    // 3. 配置复用功能为USART1
    // AFRL/AFRH寄存器，每四位控制一个引脚。PB6和PB7在AFRL中。
    // PB6是AFRL的第24-27位，PB7是第28-31位。USART1的复用功能号是7。
    GPIOB->AFRL &= ~((0xF << 24) | (0xF << 28)); // 清除原来的设置
    GPIOB->AFRL |= (7 << 24) | (7 << 28);       // 设置为AF7 (USART1)

    // 4. 设置波特率
    // APB2时钟为72MHz，波特率为9600
    // BRR = 72000000 / (16 * 9600) = 468.75
    // 整数部分468 (0x1D4)，小数部分0.75*16 = 12 (0xC)
    // BRR = (0x1D4 << 4) | 0xC = 0x1D4C
    USART1->BRR = 0x1D4C;

    // 5. 配置并使能USART1
    // CR1寄存器：
    // UE (USART使能) 第13位
    // M (数据位长度) 第12位，0表示8位
    // PCE (奇偶校验使能) 第10位，0表示禁用
    // TE (发送器使能) 第3位
    // RE (接收器使能) 第2位
    // RXNEIE (接收数据寄存器非空中断使能) 第5位
    // IDLEIE (空闲中断使能) 第4位
    #ifdef use_rx_interrupt
        USART1->CR1 &= ~(1 << 12 | (1 << 13) | (1 << 3) | (1 << 2) | (1 << 5)); // 清除相关位
        USART1->CR1 |=  (0 << 12) | (1 << 13) | (1 << 3) | (1 << 2) | (1 << 5);
    #endif

    #ifdef use_dma_idle_interrupt
        USART1->CR1 &= ~(1 << 12 | (1 << 13) | (1 << 3) | (1 << 2) | (1 << 4)); // 清除相关位
        USART1->CR1 |=  (0 << 12) | (1 << 13) | (1 << 3) | (1 << 2) | (1 << 4);
    #endif
    #ifdef use_dma_idle_interrupt
        // 6. 使能DMA
        USART1->CR3 |= (1 << 6); // DMAR (DMA接收使能) 第6位
    #endif


    // 7. 配置NVIC
    // 中断号37 (USART1) 在 ISER 数组的索引 1 中 (37/32=1), 
    // 且是该寄存器的第 5 位 (37%32=5)
    NVIC->ISER[1] |= (1 << 5);

    // 设置中断优先级 (可选，但推荐)
    // 中断号37对应的IP寄存器索引为37，IP[37]
    // 假设我们设置优先级为 0x01
    // 由于IP数组是uint8_t类型，直接使用数组索引即可
    NVIC->IP[37] = 0x01;
}

void usart1_send_char(unsigned char data) {
    // 检查TXE（发送数据寄存器空）标志位
    // SR寄存器第7位
    while (!(USART1->SR & (1 << 7)));
    // 将数据写入数据寄存器
    USART1->DR = data;
}

void usart1_send_string(const char* str) {
    while (*str) {
        usart1_send_char(*str++);
    }
}

// void usart1_printf(const char* format, ...) {
//     char buffer[128]; // 临时缓冲区
//     va_list args;
//     va_start(args, format);
//     int len = vsnprintf(buffer, sizeof(buffer), format, args);
//     va_end(args);
    
//     if (len > 0) {
//         usart1_send_string(buffer);
//     }
// }

void USART1_IRQHandler(void) 
{
    // 检查是否是RXNE中断
    #ifdef use_rx_interrupt
        if (USART1->SR & (1 << 5)) 
        {
            rx_tick = uwTick; // 记录接收时间
            // 从DR寄存器读取数据，这会清除RXNE标志
            unsigned char received_data = (unsigned char)USART1->DR;
            
            // 将数据存入缓冲区
            if (rx_index < sizeof(rx_buffer)) {
                rx_buffer[rx_index++] = received_data;
            } else {
                // 缓冲区满，可以选择丢弃数据或重置指针
                rx_index = 0; // 简单重置
            }
        }
    #endif

    #ifdef use_dma_idle_interrupt
        if (USART1->SR & (1 << 4)) 
        {
            // 清除IDLE标志位: 先读SR，再读DR
            volatile uint32_t temp = USART1->SR;
            temp = USART1->DR;
            
            // 禁用DMA流
            DMA2_Stream2->CR &= ~(1 << 0);
            
            // 计算接收到的数据长度
            rx_len = DMA_BUFFER_SIZE - DMA2_Stream2->NDTR;
            
            // 将数据从DMA缓冲区复制到用户缓冲区
            memcpy(rx_buffer, dma_rx_buffer, rx_len);
            
            // 设置接收完成标志
            rx_flag = 1;
            
            // 重新配置并使能DMA
            DMA2_Stream2->NDTR = DMA_BUFFER_SIZE;
            DMA2_Stream2->CR |= (1 << 0);
        }
    #endif
}



void usart_task(void)
{
    static uint8_t send_tick = 0;
    if(++send_tick >= 5)
    {
        // 发送字符串
        usart1_send_string("Hello, USART1!\n");
        send_tick = 0;
    }

    #ifdef use_rx_interrupt
        // 处理接收缓冲区中的数据
        if (rx_index == 0) return;
        if (uwTick - rx_tick >=100) // 如果超过100ms没有新数据
        {
            // 处理接收到的数据
            for (uint8_t i = 0; i < rx_index; i++) {
                usart1_send_char(rx_buffer[i]); // 回显接收到的数据
            }
            rx_index = 0; // 清空缓冲区
        }
    #endif

    #ifdef use_dma_idle_interrupt
        if (rx_flag) 
        {
            // 将接收到的数据回显
            // usart1_printf("Received %d bytes: ", rx_len);
            for (uint16_t i = 0; i < rx_len; i++) {
                usart1_send_char(rx_buffer[i]);
            }
            usart1_send_string("\n");
            // usart1_printf("\n");
            
            // 清除标志
            rx_flag = 0;
        }
    #endif
    
    
}