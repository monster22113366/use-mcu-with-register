#include "User.h"




int main(void)
{
    Systick_Config(); // 配置SysTick定时器
    GPIOA_Init();  // 初始化GPIOA
    usart1_init(); // 初始化USART1
    dma2_usart1_rx_init(); // 初始化DMA接收

    tasknum_init();

    while(1)
    {
        task_run();
    }
}

