#include "User.h"

/********** 变量声明 **********/
uint32_t uwTick = 0;
uint32_t counter_1s = 0;
/********** 变量声明 **********/

/**
 * @brief  系统初始化函数
 * @note   这个函数在startup文件中被调用，用于初始化系统时钟等
 * @param  None
 * @retval None
 */
void SystemInit(void)
{
    // 1. 使能HSE并等待其稳定
    // HSEON (RCC->CR bit 16)
    RCC->CR |= 0x00010000;
    // HSERDY (RCC->CR bit 17)
    while(!(RCC->CR & 0x00020000));

    // 2. 配置Flash延时
    // 针对72MHz系统时钟，设置2个等待周期
    // LATENCY (FLASH->ACR bits 0-2)
    FLASH->ACR &= ~0x00000007;
    FLASH->ACR |= 0x00000002;

    // 3. 配置AHB、APB总线分频器
    // HPRE: AHB不分频 (bit 4-7 = 0x0)
    // PPRE2: APB2不分频 (bit 10-12 = 0x0)
    // PPRE1: APB1 2分频 (bit 13-15 = 0x4)
    RCC->CFGR &= ~(0x000000F0 | 0x00001C00 | 0x0000E000);
    RCC->CFGR |= 0x00001000; // 0x00000000 (HPRE) | 0x00000000 (PPRE2) | 0x00001000 (PPRE1)

    // 4. 配置PLL参数
    // PLLON (RCC->CR bit 24)
    RCC->CR &= ~0x01000000;

    // PLLSRC: HSE为时钟源 (bit 22 = 1)
    // PLLM: 25MHz / 25 = 1MHz (bits 0-5 = 25)
    // PLLN: 1MHz * 288 = 288MHz (bits 6-14 = 288)
    // PLLP: 288MHz / 4 = 72MHz (bits 16-17 = 1)
    // PLLQ: 288MHz / 4 = 72MHz (bits 24-27 = 4)
    RCC->PLLCFGR = 0x00400000 | (25 << 0) | (288 << 6) | (1 << 16) | (4 << 24);

    // 5. 启用PLL并等待其稳定
    RCC->CR |= 0x01000000;
    // PLLRDY (RCC->CR bit 25)
    while(!(RCC->CR & 0x02000000));

    // 6. 切换系统时钟到PLL
    // SW (RCC->CFGR bits 0-1)
    RCC->CFGR &= ~0x00000003;
    RCC->CFGR |= 0x00000002;

    // 7. 等待系统时钟切换完成
    // SWS (RCC->CFGR bits 2-3)
    while((RCC->CFGR & 0x0000000C) != 0x00000008);
}

/**
 * @brief  配置SysTick定时器
 * @note   以1ms为周期，用于实现时间延迟和时间戳
 * @param  None
 * @retval None
 */
void Systick_Config(void)
{
    // 配置SysTick定时器
    SYSTICK->CTRL &= ~(7 << 0);  // 关闭SysTick定时器
    SYSTICK->CTRL = 0x06;  // 选择AHB时钟作为时钟源
    SYSTICK->LOAD = SYSTEM_CORE_CLOCK / 1000 - 1;   // 设置重载值为1ms
    SYSTICK->VAL = 0;            // 清除当前值
    SYSTICK->CTRL |= 0x00000001; // 启动SysTick定时器
}

// 中断服务函数
void SysTick_Handler(void) 
{
    uwTick++;
    if(uwTick%1000 == 0) counter_1s++;
    rt_interrupt_enter();
    
    rt_tick_increase();

    rt_interrupt_leave();
}
