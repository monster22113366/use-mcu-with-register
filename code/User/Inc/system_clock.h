#ifndef SYSTEM_CLOCK_H
#define SYSTEM_CLOCK_H

// 系统初始化函数声明
void SystemInit(void);
void Systick_Config(void);

//定义系统时钟频率
#define SYSTEM_CORE_CLOCK  72000000UL

#endif //SYSTEM_CLOCK_H