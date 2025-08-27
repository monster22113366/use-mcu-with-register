#include "stdint.h"
#include "User.h"

uint8_t led_case = 0;

// 初始化GPIOA的PA0, PA2, PA3为输出模式
void GPIOA_Init(void)
{
    // 1. 使能GPIOA时钟
    RCC->AHB1ENR |= (1 << 0);  // 开启GPIOA时钟

    // 2. 配置PA0, PA2, PA3为通用推挽输出
    GPIOA->MODER &= ~((0x03 << (0 * 2)) | (0x03 << (2 * 2)) | (0x03 << (3 * 2)));   //清除模式位
    GPIOA->MODER |= ((0x01 << (0 * 2)) | (0x01 << (2 * 2)) | (0x01 << (3 * 2)));    //设置为输出模式

    // 3. 配置输出类型为推挽
    GPIOA->OTYPER &= ~((1 << 0) | (1 << 2) | (1 << 3));

    // 4. 配置输出速度（中等速度）
    GPIOA->OSPEEDR &= ~((0x03 << (0 * 2)) | (0x03 << (2 * 2)) | (0x03 << (3 * 2)));   //清除模式位
    GPIOA->OSPEEDR |= ((0x01 << (0 * 2)) | (0x01 << (2 * 2)) | (0x01 << (3 * 2)));    //设置为中等速度


    // 5. 配置上拉
    GPIOA->PUPDR &= ~((0x03 << (0 * 2)) | (0x03 << (2 * 2)) | (0x03 << (3 * 2)));   //清除模式位
    GPIOA->PUPDR |= ((0x01 << (0 * 2)) | (0x01 << (2 * 2)) | (0x01 << (3 * 2)));    //设置为上拉
}


// 熄灭LED
void LED_OFF(uint8_t pin) 
{
    GPIOA->ODR |= (1 << pin);  // 设置对应引脚高电平
}


// 点亮LED
void LED_ON(uint8_t pin) 
{
    GPIOA->ODR &= ~(1 << pin);  // 设置对应引脚低电平
}

void led_display(uint8_t led_case)
{
    switch (led_case)
            {
            case 1:
                LED_ON(0);
                LED_OFF(2);
                LED_OFF(3);
            break;

            case 2:
                LED_ON(2);
                LED_OFF(0);
                LED_OFF(3);
            break;

            case 3:
                LED_ON(3);
                LED_OFF(2);
                LED_OFF(0);
            break;

            default:
                LED_OFF(0);
                LED_OFF(2);
                LED_OFF(3);
                break;
            }
}

void led_task(void *parameter)
{
    while(1)
    {
        led_display(led_case);
        led_case++;
        if(led_case > 3)
        {
            led_case = 0;
        }
        rt_thread_delay(500); // 延时500个OS Tick
        
    }
}

void led_task_init(void)
{
    rt_thread_t tid = rt_thread_create("led_task", led_task, RT_NULL, 1024, 10, 20);
    if (tid != RT_NULL)
    {
        rt_thread_startup(tid);
    }
}
