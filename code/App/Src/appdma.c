#include "User.h"

void dma2_usart1_rx_init(void) 
{
    // 1. 使能DMA2时钟 (在AHB1ENR的第22位)
    RCC->AHB1ENR |= (1 << 22); 

    // 2. 配置DMA2 Stream5 Channel4
    // DMA2 Stream5用于USART1_RX
    DMA2_Stream2->CR = 0; // 清除配置
    while (DMA2_Stream2->CR & 1); // 等待DMA流停止
    
    // 3. 设置DMA传输参数
    DMA2_Stream2->PAR = (uint32_t)&USART1->DR;            // 外设地址
    DMA2_Stream2->M0AR = (uint32_t)dma_rx_buffer;       // 内存地址
    DMA2_Stream2->NDTR = DMA_BUFFER_SIZE;               // 传输数量
    
    // 4. 配置DMA模式
    // 方向: 外设到内存 (0b00)
    // 循环模式: 使能 (1)
    // 外设地址增量: 禁用 (0)
    // 内存地址增量: 使能 (1)
    // 数据宽度: 8位 (0b00)
    // 通道选择: 通道4 (USART1_RX)
    DMA2_Stream2->CR &= ~((1 << 6) | (1 << 8) | (1 << 9) | (1 << 10) | (3 << 11) | (3 << 13)  | (7 << 25)); 
    DMA2_Stream2->CR |= (0 << 6) | (1 << 8) | (0 << 9) | (1 << 10) | (0 << 11) | (0 << 13) | (4 << 25); 

    // 5. 使能DMA流
    DMA2_Stream2->CR |= (1 << 0);
}