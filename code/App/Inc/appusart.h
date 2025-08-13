#ifndef APPUSART_H
#define APPUSART_H

void usart1_init(void);
void usart1_send_char(unsigned char data);
unsigned char usart1_receive_char(void);
void usart1_send_string(const char* str);
void usart_task(void);


#endif //APPUSART_H

