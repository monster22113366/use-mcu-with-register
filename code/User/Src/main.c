#include "User.h"



uint8_t led_case = 0;
uint8_t num_test = 0;
int main(void)
{
    GPIOA_Init();  // 初始化GPIOA

    LED_OFF(0);
    LED_OFF(1);
    LED_OFF(3);
    while(1)
    {
        if(++num_test > 10)
        {
            num_test = 0;
        }
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
}

