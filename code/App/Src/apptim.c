#include "User.h"
uint16_t ms_counter;
uint16_t ccr;
uint8_t PA1;



// TIM10 初始化：1ms 计数器
void TIM10_Init(void) 
{
    // 注意：假设系统时钟为 72 MHz，APB2 时钟为 72 MHz
    // 请通过 RCC->CFGR 的 PPRE2（位 15:13）验证 APB2 时钟分频
    // 配置顺序：时钟使能 -> PSC/ARR -> 中断使能 -> NVIC -> 启动定时器

    //1. 时钟使能
    RCC->APB2ENR |= (1UL << 17); // 第 17 位置 1，使能 TIM10 时钟，其他位不变


    //2. 配置 PSC/ARR
    // 配置 TIM10：1ms = 72 MHz / (71 + 1) / (1000 + 1)
    // 若需调整周期（如 2ms），修改 ARR（如 ARR = 2000）
    TIM10->PSC = 71;    // 预分频器：72 MHz / 72 = 1 MHz
    TIM10->ARR = 1000;  // 自动重载值：1 MHz / 1000 = 1 kHz (1ms 周期)

    //3.配置中断
    TIM10->DIER |= (1UL << 0); // 第 0 位置 1，使能更新中断，其他位不变

    // 配置 NVIC（TIM10_IRQn = 25）
    // ISER[0] 控制 IRQ 0-31，IP[25] 设置 TIM10 优先级
    // 优先级设置在中断使能前，避免意外中断触发
    NVIC->IP[25] = 0x10;       // 设置 TIM10 优先级为 1（高 4 位有效，0x10=0001_0000，范围 0-15）
    NVIC->ISER[0] |= (1UL << 25); // 第 25 位置 1，使能 TIM10 中断（25 % 32 = 25）

    //4.启动定时器
    TIM10->CR1 |= (1UL << 0); // 第 0 位置 1，启动定时器，其他位不变
}

// TIM10 中断处理函数
void TIM1_UP_TIM10_IRQHandler(void) 
{
    if (TIM10->SR & (1UL << 0))     // 检查第 0 位（更新中断标志）
    { 
        TIM10->SR &= ~(1UL << 0); // 第 0 位清 0，清除更新中断标志
        ms_counter++;             // 毫秒计数器加 1（用于时间戳或任务调度）
        PA1 = (((GPIOA->ODR) >> 1) & 1); // 读取 PA1 状态（假设 PA1 用于某种状态指示）
    }
}

// 初始化 TIM2 PWM (PA1, TIM2_CH2, 1kHz, ARR=60000, 50% 占空比)
uint8_t TIM2_PWM_Init(void) {
    // 1. 启用 GPIOA 和 TIM2 时钟
    RCC->AHB1ENR |= (1 << 0);  // GPIOA 时钟使能 (位 0)
    if (!(RCC->AHB1ENR & (1 << 0))) return PWM_ERR;
    RCC->APB1ENR |= (1 << 0);  // TIM2 时钟使能 (位 0)
    if (!(RCC->APB1ENR & (1 << 0))) return PWM_ERR;

    // 2. 配置 PA1 为复用功能 (TIM2_CH2, AF1)
    GPIOA->MODER &= ~(0x3 << 2);  // 清除 PA1 模式 (位 3:2)
    GPIOA->MODER |= (0x2 << 2);   // 设置为复用功能 (10)
    GPIOA->AFRL &= ~(0xF << 4); // 清除 AF 配置 (位 7:4)
    GPIOA->AFRL |= (0x1 << 4);  // 设置 AF1 (TIM2, 0001)
    GPIOA->OSPEEDR |= (0x3 << 2); // 高速度 (11)
    GPIOA->PUPDR &= ~(0x3 << 2);  // 无上拉/下拉 (00)

    // 3. 配置 TIM2 PWM 通道 2
    // 系统时钟 = 72MHz, APB1 = 72MHz
    TIM2->PSC = 1;               // 预分频 2 (72MHz / (1+1) = 36MHz)
    TIM2->ARR = 36000 - 1;           // 周期 60001 (36MHz / (60000+1) ≈ 999.98Hz) 36000000 / 36000 = 1000
    TIM2->CCR2 = 18000 - 1;          // 占空比 50% (30000/60001)
    TIM2->CCMR1 &= ~(0x7 << 12); // 清除通道 2 模式 (位 14:12)
    TIM2->CCMR1 |= (0x6 << 12);  // PWM 模式 1 (110)
    TIM2->CCMR1 |= (1 << 11);    // 启用通道 2 预装载 (OC2PE, 位 11)
    TIM2->CCER |= (1 << 4);      // 启用通道 2 输出 (CC2E, 位 4)
    TIM2->CR1 &= ~(1 << 4);      // DIR=0，向上计数 (位 4)
    TIM2->CR1 |= (1 << 0);       // 启动计数器 (CEN, 位 0)

    return PWM_OK;
}

// 设置 PWM 占空比 (0-60000，对应 0%-100%)
void PWM_SetDutyCycle(int32_t duty) {
    if (duty > 60000) duty = 60000;
    if (duty < 0) duty = 0;
    TIM2->CCR2 = duty;  // 设置捕获/比较寄存器 2
}

void pwm_task(void)
{
    PWM_SetDutyCycle(ccr);
}
