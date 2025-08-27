#ifndef USER_H
#define USER_H

/* 引入c头文件 */
#include "stdio.h"
#include "stdint.h"
#include "string.h"
#include "stdarg.h"
#include "stdbool.h"



/*引入user层头文件*/
#include "main.h"
#include "system_clock.h"


/* 引入App层头文件 */
#include "appled.h"
#include "appusart.h"
#include "appdma.h"
#include "apptim.h"

/* 引入Component层头文件 */

/* 引入rtthread头文件 */
#include "rtthread.h"


/*寄存器结构体定义*/
typedef struct
{
    volatile uint32_t MODER;    //模式寄存器
    volatile uint32_t OTYPER;   //输出类型寄存器
    volatile uint32_t OSPEEDR;  //输出速度寄存器
    volatile uint32_t PUPDR;    //上拉/下拉寄存器
    volatile uint32_t IDR;      //输入数据寄存器
    volatile uint32_t ODR;      //输出数据寄存器
    volatile uint32_t BSRR;     //位设置/复位寄存器
    volatile uint32_t LCKR;     //配置锁定寄存器
    volatile uint32_t AFRL;     //复用功能低寄存器
    volatile uint32_t AFRH;     //复用功能高寄存器
} GPIO_TypeDef;

typedef struct
{
    /* data */
    volatile uint32_t CR;
    volatile uint32_t PLLCFGR;
    volatile uint32_t CFGR;
    volatile uint32_t CIR;
    volatile uint32_t AHB1RSTR;
    volatile uint32_t AHB2RSTR;
    volatile uint32_t AHB3RSTR;
    volatile uint32_t RESERVED0;
    volatile uint32_t APB1RSTR;
    volatile uint32_t APB2RSTR;
    volatile uint32_t RESERVED1[2];
    volatile uint32_t AHB1ENR;
    volatile uint32_t AHB2ENR;
    volatile uint32_t AHB3ENR;
    volatile uint32_t RESERVED2;
    volatile uint32_t APB1ENR;
    volatile uint32_t APB2ENR;
    volatile uint32_t RESERVED3[2];
    volatile uint32_t AHB1LPENR;
    volatile uint32_t AHB2LPENR;
    volatile uint32_t AHB3LPENR;
    volatile uint32_t RESERVED4;
    volatile uint32_t APB1LPENR;
    volatile uint32_t APB2LPENR;
    volatile uint32_t RESERVED5[2];
    volatile uint32_t BDCR;
    volatile uint32_t CSR;
    volatile uint32_t RESERVED6[2];
    volatile uint32_t SSCGR;
    volatile uint32_t PLLI2SCFGR;
    volatile uint32_t RESERVED7[5];
}RCC_TypeDef;

typedef struct 
{
    /* data */
    volatile uint32_t CTRL;
    volatile uint32_t LOAD;
    volatile uint32_t VAL;
    volatile uint32_t CALIB;
}Systick_TypeDef;

typedef struct 
{
    /* data */
    volatile uint32_t ACR;
    volatile uint32_t KEYR;
    volatile uint32_t OPTKEYR;
    volatile uint32_t SR;
    volatile uint32_t CR;
    volatile uint32_t OPTCR;
}Flash_TypeDef;

typedef struct 
{
    /* data */
    volatile uint32_t SR;
    volatile uint32_t DR;
    volatile uint32_t BRR;
    volatile uint32_t CR1;
    volatile uint32_t CR2;
    volatile uint32_t CR3;
    volatile uint32_t GTPR;
}USART_TypeDef;

typedef struct 
{
    /* data */
    volatile uint32_t ISER[8];   // 中断使能寄存器
    volatile uint32_t RESERVED0[24];
    volatile uint32_t ICER[8];   // 中断清除使能寄存器
    volatile uint32_t RESERVED1[24];
    volatile uint32_t ISPR[8];   // 中断设置挂起寄存器
    volatile uint32_t RESERVED2[24];
    volatile uint32_t ICPR[8];   // 中断清除挂起寄存器
    volatile uint32_t RESERVED3[24];
    volatile uint32_t IABR[8];   // 中断活动位寄存器
    volatile uint32_t RESERVED4[56];
    volatile uint8_t  IP[240];   // 中断优先级寄存器
} NVIC_TypeDef;

typedef struct 
{
    /* data */
    volatile uint32_t CR;        // DMA控制寄存器
    volatile uint32_t NDTR;      // DMA数据传输计数寄存器
    volatile uint32_t PAR;       // DMA外设地址寄存器
    volatile uint32_t M0AR;      // DMA内存0地址寄存器
    volatile uint32_t M1AR;      // DMA内存1地址寄存器
    volatile uint32_t FCR;       // DMA流控制寄存器
}DMA_Stream_TypeDef;

typedef struct 
{
    /* data */
    volatile uint32_t CR1;      // 控制寄存器1
    volatile uint32_t RESERVED0;  // 控制寄存器2
    volatile uint32_t SMCR;     // 从模式控制寄存器
    volatile uint32_t DIER;     // 中断使能寄存器
    volatile uint32_t SR;       // 状态寄存器
    volatile uint32_t EGR;      // 事件生成寄存器
    volatile uint32_t CCMR1;    // 捕获/比较模式寄存器1
    volatile uint32_t RESERVED1;    // 捕获/比较模式寄存器2
    volatile uint32_t CCER;     // 捕获/比较使能寄存器
    volatile uint32_t CNT;      // 计数器
    volatile uint32_t PSC;      // 预分频器
    volatile uint32_t ARR;      // 自动重装载寄存器
    volatile uint32_t RESERVED2;
    volatile uint32_t CCR1;     // 捕获/比较寄存器1
    volatile uint32_t RESERVED3;
    volatile uint32_t RESERVED4;
    volatile uint32_t OR;
}TIM10_TypeDef;

typedef struct {
    volatile uint32_t CR1;      // 控制寄存器 1
    volatile uint32_t CR2;      // 控制寄存器 2
    volatile uint32_t SMCR;     // 从模式控制寄存器
    volatile uint32_t DIER;     // DMA/中断使能寄存器
    volatile uint32_t SR;       // 状态寄存器
    volatile uint32_t EGR;      // 事件生成寄存器
    volatile uint32_t CCMR1;    // 捕获/比较模式寄存器 1
    volatile uint32_t CCMR2;    // 捕获/比较模式寄存器 2
    volatile uint32_t CCER;     // 捕获/比较使能寄存器
    volatile uint32_t CNT;      // 计数器
    volatile uint32_t PSC;      // 预分频器
    volatile uint32_t ARR;      // 自动重装载寄存器
    volatile uint32_t RESERVED0;
    volatile uint32_t CCR1;     // 捕获/比较寄存器 1
    volatile uint32_t CCR2;     // 捕获/比较寄存器 2
    volatile uint32_t CCR3;     // 捕获/比较寄存器 3
    volatile uint32_t CCR4;     // 捕获/比较寄存器 4
    volatile uint32_t RESERVED1;     
    volatile uint32_t DCR;      // DMA 控制寄存器
    volatile uint32_t DMAR;     // DMA 地址寄存器
    volatile uint32_t OR;
} TIM2_TypeDef;





/* 寄存器地址声明 */
#define GPIOA ((GPIO_TypeDef *) 0x40020000)
#define GPIOB ((GPIO_TypeDef *) 0x40020400)
#define RCC ((RCC_TypeDef *) 0x40023800)
#define SYSTICK ((Systick_TypeDef *) 0xE000E010)
#define FLASH ((Flash_TypeDef *) 0x40023C00)
#define USART1 ((USART_TypeDef *) 0x40011000)
#define NVIC ((NVIC_TypeDef *) 0xE000E100)
#define DMA2_Stream2 ((DMA_Stream_TypeDef *) 0x40026440) // DMA2 Stream2 for USART1_RX 0x4002 6440
#define TIM10 ((TIM10_TypeDef *) 0x40014400)
#define TIM2 ((TIM2_TypeDef *) 0x40000000)

/* 全局宏定义 */
#define use_dma_idle_interrupt
#ifdef use_dma_idle_interrupt
    #define DMA_BUFFER_SIZE 64 // DMA缓冲区大小
#endif

/* 全局变量 */
#define PWM_OK  0
#define PWM_ERR 1
extern uint32_t uwTick;
extern uint8_t dma_rx_buffer[DMA_BUFFER_SIZE]; // DMA接收缓冲区



#endif //USER_H

