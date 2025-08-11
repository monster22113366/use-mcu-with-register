#ifndef USER_H
#define USER_H

/* 引入c头文件 */
#include "stdio.h"
#include "stdint.h"
#include "string.h"
#include "stdbool.h"



/*引入user层头文件*/
#include "main.h"


/* 引入App层头文件 */
#include "appled.h"

/* 引入Component层头文件 */


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


/* 寄存器地址声明 */
#define GPIOA ((GPIO_TypeDef *) 0x40020000)
#define RCC ((RCC_TypeDef *) 0x40023800)



#endif //USER_H

