#include "main.h"

/**
 * @brief  系统初始化函数
 * @note   这个函数在startup文件中被调用，用于初始化系统时钟等
 * @param  None
 * @retval None
 */
void SystemInit(void)
{
    // 对于简单的寄存器操作，我们可以保持默认的系统时钟设置
    // 这里可以添加系统时钟配置代码，但对于基本的GPIO操作不是必需的
    
    // 如果需要，可以在这里配置系统时钟
    // 目前使用默认的HSI时钟（16MHz）
}
