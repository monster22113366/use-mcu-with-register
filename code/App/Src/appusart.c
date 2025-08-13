#include "User.h"

uint8_t rx_buffer[64]; // 接收缓冲区
uint8_t rx_index = 0; // 写指针
uint32_t rx_tick;

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
    // ***新增：开启接收非空中断 (RXNEIE)***
    USART1->CR1 |= (1 << 13) | (1 << 3) | (1 << 2) | (1 << 5);

    // 6. 配置NVIC
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

void USART1_IRQHandler(void) {
    // 检查是否是RXNE中断
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
}



void usart_task(void)
{
    uint8_t send_tick = 0;
    if(++send_tick >= 5)
    {
        // 发送字符串
        usart1_send_string("Hello, USART1!\n");
        send_tick = 0;
    }

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
    
    
}