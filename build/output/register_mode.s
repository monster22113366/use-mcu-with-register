
D:/ELECT/CODE/vscode/ST/stm32f401ccu6/register_test/register_mode/build/output/register_mode.elf:     file format elf32-littlearm


Disassembly of section .text:

08000194 <deregister_tm_clones>:
 8000194:	4803      	ldr	r0, [pc, #12]	@ (80001a4 <deregister_tm_clones+0x10>)
 8000196:	4b04      	ldr	r3, [pc, #16]	@ (80001a8 <deregister_tm_clones+0x14>)
 8000198:	4283      	cmp	r3, r0
 800019a:	d002      	beq.n	80001a2 <deregister_tm_clones+0xe>
 800019c:	4b03      	ldr	r3, [pc, #12]	@ (80001ac <deregister_tm_clones+0x18>)
 800019e:	b103      	cbz	r3, 80001a2 <deregister_tm_clones+0xe>
 80001a0:	4718      	bx	r3
 80001a2:	4770      	bx	lr
 80001a4:	20000030 	.word	0x20000030
 80001a8:	20000030 	.word	0x20000030
 80001ac:	00000000 	.word	0x00000000

080001b0 <register_tm_clones>:
 80001b0:	4805      	ldr	r0, [pc, #20]	@ (80001c8 <register_tm_clones+0x18>)
 80001b2:	4b06      	ldr	r3, [pc, #24]	@ (80001cc <register_tm_clones+0x1c>)
 80001b4:	1a1b      	subs	r3, r3, r0
 80001b6:	0fd9      	lsrs	r1, r3, #31
 80001b8:	eb01 01a3 	add.w	r1, r1, r3, asr #2
 80001bc:	1049      	asrs	r1, r1, #1
 80001be:	d002      	beq.n	80001c6 <register_tm_clones+0x16>
 80001c0:	4b03      	ldr	r3, [pc, #12]	@ (80001d0 <register_tm_clones+0x20>)
 80001c2:	b103      	cbz	r3, 80001c6 <register_tm_clones+0x16>
 80001c4:	4718      	bx	r3
 80001c6:	4770      	bx	lr
 80001c8:	20000030 	.word	0x20000030
 80001cc:	20000030 	.word	0x20000030
 80001d0:	00000000 	.word	0x00000000

080001d4 <__do_global_dtors_aux>:
 80001d4:	b510      	push	{r4, lr}
 80001d6:	4c06      	ldr	r4, [pc, #24]	@ (80001f0 <__do_global_dtors_aux+0x1c>)
 80001d8:	7823      	ldrb	r3, [r4, #0]
 80001da:	b943      	cbnz	r3, 80001ee <__do_global_dtors_aux+0x1a>
 80001dc:	f7ff ffda 	bl	8000194 <deregister_tm_clones>
 80001e0:	4b04      	ldr	r3, [pc, #16]	@ (80001f4 <__do_global_dtors_aux+0x20>)
 80001e2:	b113      	cbz	r3, 80001ea <__do_global_dtors_aux+0x16>
 80001e4:	4804      	ldr	r0, [pc, #16]	@ (80001f8 <__do_global_dtors_aux+0x24>)
 80001e6:	f3af 8000 	nop.w
 80001ea:	2301      	movs	r3, #1
 80001ec:	7023      	strb	r3, [r4, #0]
 80001ee:	bd10      	pop	{r4, pc}
 80001f0:	20000030 	.word	0x20000030
 80001f4:	00000000 	.word	0x00000000
 80001f8:	08000b0c 	.word	0x08000b0c

080001fc <frame_dummy>:
 80001fc:	b508      	push	{r3, lr}
 80001fe:	4b05      	ldr	r3, [pc, #20]	@ (8000214 <frame_dummy+0x18>)
 8000200:	b11b      	cbz	r3, 800020a <frame_dummy+0xe>
 8000202:	4905      	ldr	r1, [pc, #20]	@ (8000218 <frame_dummy+0x1c>)
 8000204:	4805      	ldr	r0, [pc, #20]	@ (800021c <frame_dummy+0x20>)
 8000206:	f3af 8000 	nop.w
 800020a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800020e:	f7ff bfcf 	b.w	80001b0 <register_tm_clones>
 8000212:	bf00      	nop
 8000214:	00000000 	.word	0x00000000
 8000218:	20000034 	.word	0x20000034
 800021c:	08000b0c 	.word	0x08000b0c

08000220 <__libc_init_array>:
 8000220:	b570      	push	{r4, r5, r6, lr}
 8000222:	4b0d      	ldr	r3, [pc, #52]	@ (8000258 <__libc_init_array+0x38>)
 8000224:	4d0d      	ldr	r5, [pc, #52]	@ (800025c <__libc_init_array+0x3c>)
 8000226:	1b5b      	subs	r3, r3, r5
 8000228:	109c      	asrs	r4, r3, #2
 800022a:	2600      	movs	r6, #0
 800022c:	42a6      	cmp	r6, r4
 800022e:	d109      	bne.n	8000244 <__libc_init_array+0x24>
 8000230:	f000 fc6c 	bl	8000b0c <_init>
 8000234:	4d0a      	ldr	r5, [pc, #40]	@ (8000260 <__libc_init_array+0x40>)
 8000236:	4b0b      	ldr	r3, [pc, #44]	@ (8000264 <__libc_init_array+0x44>)
 8000238:	1b5b      	subs	r3, r3, r5
 800023a:	109c      	asrs	r4, r3, #2
 800023c:	2600      	movs	r6, #0
 800023e:	42a6      	cmp	r6, r4
 8000240:	d105      	bne.n	800024e <__libc_init_array+0x2e>
 8000242:	bd70      	pop	{r4, r5, r6, pc}
 8000244:	f855 3b04 	ldr.w	r3, [r5], #4
 8000248:	4798      	blx	r3
 800024a:	3601      	adds	r6, #1
 800024c:	e7ee      	b.n	800022c <__libc_init_array+0xc>
 800024e:	f855 3b04 	ldr.w	r3, [r5], #4
 8000252:	4798      	blx	r3
 8000254:	3601      	adds	r6, #1
 8000256:	e7f2      	b.n	800023e <__libc_init_array+0x1e>
 8000258:	08000b38 	.word	0x08000b38
 800025c:	08000b38 	.word	0x08000b38
 8000260:	08000b38 	.word	0x08000b38
 8000264:	08000b3c 	.word	0x08000b3c

08000268 <dma2_usart1_rx_init>:
 8000268:	b480      	push	{r7}
 800026a:	af00      	add	r7, sp, #0
 800026c:	4b18      	ldr	r3, [pc, #96]	@ (80002d0 <dma2_usart1_rx_init+0x68>)
 800026e:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8000270:	4a17      	ldr	r2, [pc, #92]	@ (80002d0 <dma2_usart1_rx_init+0x68>)
 8000272:	f443 0380 	orr.w	r3, r3, #4194304	@ 0x400000
 8000276:	6313      	str	r3, [r2, #48]	@ 0x30
 8000278:	4b16      	ldr	r3, [pc, #88]	@ (80002d4 <dma2_usart1_rx_init+0x6c>)
 800027a:	2200      	movs	r2, #0
 800027c:	601a      	str	r2, [r3, #0]
 800027e:	bf00      	nop
 8000280:	4b14      	ldr	r3, [pc, #80]	@ (80002d4 <dma2_usart1_rx_init+0x6c>)
 8000282:	681b      	ldr	r3, [r3, #0]
 8000284:	f003 0301 	and.w	r3, r3, #1
 8000288:	2b00      	cmp	r3, #0
 800028a:	d1f9      	bne.n	8000280 <dma2_usart1_rx_init+0x18>
 800028c:	4b11      	ldr	r3, [pc, #68]	@ (80002d4 <dma2_usart1_rx_init+0x6c>)
 800028e:	4a12      	ldr	r2, [pc, #72]	@ (80002d8 <dma2_usart1_rx_init+0x70>)
 8000290:	609a      	str	r2, [r3, #8]
 8000292:	4b10      	ldr	r3, [pc, #64]	@ (80002d4 <dma2_usart1_rx_init+0x6c>)
 8000294:	4a11      	ldr	r2, [pc, #68]	@ (80002dc <dma2_usart1_rx_init+0x74>)
 8000296:	60da      	str	r2, [r3, #12]
 8000298:	4b0e      	ldr	r3, [pc, #56]	@ (80002d4 <dma2_usart1_rx_init+0x6c>)
 800029a:	2240      	movs	r2, #64	@ 0x40
 800029c:	605a      	str	r2, [r3, #4]
 800029e:	4b0d      	ldr	r3, [pc, #52]	@ (80002d4 <dma2_usart1_rx_init+0x6c>)
 80002a0:	681a      	ldr	r2, [r3, #0]
 80002a2:	490c      	ldr	r1, [pc, #48]	@ (80002d4 <dma2_usart1_rx_init+0x6c>)
 80002a4:	4b0e      	ldr	r3, [pc, #56]	@ (80002e0 <dma2_usart1_rx_init+0x78>)
 80002a6:	4013      	ands	r3, r2
 80002a8:	600b      	str	r3, [r1, #0]
 80002aa:	4b0a      	ldr	r3, [pc, #40]	@ (80002d4 <dma2_usart1_rx_init+0x6c>)
 80002ac:	681b      	ldr	r3, [r3, #0]
 80002ae:	4a09      	ldr	r2, [pc, #36]	@ (80002d4 <dma2_usart1_rx_init+0x6c>)
 80002b0:	f043 6300 	orr.w	r3, r3, #134217728	@ 0x8000000
 80002b4:	f443 63a0 	orr.w	r3, r3, #1280	@ 0x500
 80002b8:	6013      	str	r3, [r2, #0]
 80002ba:	4b06      	ldr	r3, [pc, #24]	@ (80002d4 <dma2_usart1_rx_init+0x6c>)
 80002bc:	681b      	ldr	r3, [r3, #0]
 80002be:	4a05      	ldr	r2, [pc, #20]	@ (80002d4 <dma2_usart1_rx_init+0x6c>)
 80002c0:	f043 0301 	orr.w	r3, r3, #1
 80002c4:	6013      	str	r3, [r2, #0]
 80002c6:	bf00      	nop
 80002c8:	46bd      	mov	sp, r7
 80002ca:	f85d 7b04 	ldr.w	r7, [sp], #4
 80002ce:	4770      	bx	lr
 80002d0:	40023800 	.word	0x40023800
 80002d4:	40026440 	.word	0x40026440
 80002d8:	40011004 	.word	0x40011004
 80002dc:	20000094 	.word	0x20000094
 80002e0:	f1ff80bf 	.word	0xf1ff80bf

080002e4 <GPIOA_Init>:
 80002e4:	b480      	push	{r7}
 80002e6:	af00      	add	r7, sp, #0
 80002e8:	4b1a      	ldr	r3, [pc, #104]	@ (8000354 <GPIOA_Init+0x70>)
 80002ea:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80002ec:	4a19      	ldr	r2, [pc, #100]	@ (8000354 <GPIOA_Init+0x70>)
 80002ee:	f043 0301 	orr.w	r3, r3, #1
 80002f2:	6313      	str	r3, [r2, #48]	@ 0x30
 80002f4:	4b18      	ldr	r3, [pc, #96]	@ (8000358 <GPIOA_Init+0x74>)
 80002f6:	681b      	ldr	r3, [r3, #0]
 80002f8:	4a17      	ldr	r2, [pc, #92]	@ (8000358 <GPIOA_Init+0x74>)
 80002fa:	f023 03f3 	bic.w	r3, r3, #243	@ 0xf3
 80002fe:	6013      	str	r3, [r2, #0]
 8000300:	4b15      	ldr	r3, [pc, #84]	@ (8000358 <GPIOA_Init+0x74>)
 8000302:	681b      	ldr	r3, [r3, #0]
 8000304:	4a14      	ldr	r2, [pc, #80]	@ (8000358 <GPIOA_Init+0x74>)
 8000306:	f043 0351 	orr.w	r3, r3, #81	@ 0x51
 800030a:	6013      	str	r3, [r2, #0]
 800030c:	4b12      	ldr	r3, [pc, #72]	@ (8000358 <GPIOA_Init+0x74>)
 800030e:	685b      	ldr	r3, [r3, #4]
 8000310:	4a11      	ldr	r2, [pc, #68]	@ (8000358 <GPIOA_Init+0x74>)
 8000312:	f023 030d 	bic.w	r3, r3, #13
 8000316:	6053      	str	r3, [r2, #4]
 8000318:	4b0f      	ldr	r3, [pc, #60]	@ (8000358 <GPIOA_Init+0x74>)
 800031a:	689b      	ldr	r3, [r3, #8]
 800031c:	4a0e      	ldr	r2, [pc, #56]	@ (8000358 <GPIOA_Init+0x74>)
 800031e:	f023 03f3 	bic.w	r3, r3, #243	@ 0xf3
 8000322:	6093      	str	r3, [r2, #8]
 8000324:	4b0c      	ldr	r3, [pc, #48]	@ (8000358 <GPIOA_Init+0x74>)
 8000326:	689b      	ldr	r3, [r3, #8]
 8000328:	4a0b      	ldr	r2, [pc, #44]	@ (8000358 <GPIOA_Init+0x74>)
 800032a:	f043 0351 	orr.w	r3, r3, #81	@ 0x51
 800032e:	6093      	str	r3, [r2, #8]
 8000330:	4b09      	ldr	r3, [pc, #36]	@ (8000358 <GPIOA_Init+0x74>)
 8000332:	68db      	ldr	r3, [r3, #12]
 8000334:	4a08      	ldr	r2, [pc, #32]	@ (8000358 <GPIOA_Init+0x74>)
 8000336:	f023 03f3 	bic.w	r3, r3, #243	@ 0xf3
 800033a:	60d3      	str	r3, [r2, #12]
 800033c:	4b06      	ldr	r3, [pc, #24]	@ (8000358 <GPIOA_Init+0x74>)
 800033e:	68db      	ldr	r3, [r3, #12]
 8000340:	4a05      	ldr	r2, [pc, #20]	@ (8000358 <GPIOA_Init+0x74>)
 8000342:	f043 0351 	orr.w	r3, r3, #81	@ 0x51
 8000346:	60d3      	str	r3, [r2, #12]
 8000348:	bf00      	nop
 800034a:	46bd      	mov	sp, r7
 800034c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000350:	4770      	bx	lr
 8000352:	bf00      	nop
 8000354:	40023800 	.word	0x40023800
 8000358:	40020000 	.word	0x40020000

0800035c <LED_OFF>:
 800035c:	b480      	push	{r7}
 800035e:	b083      	sub	sp, #12
 8000360:	af00      	add	r7, sp, #0
 8000362:	4603      	mov	r3, r0
 8000364:	71fb      	strb	r3, [r7, #7]
 8000366:	4b08      	ldr	r3, [pc, #32]	@ (8000388 <LED_OFF+0x2c>)
 8000368:	695b      	ldr	r3, [r3, #20]
 800036a:	79fa      	ldrb	r2, [r7, #7]
 800036c:	2101      	movs	r1, #1
 800036e:	fa01 f202 	lsl.w	r2, r1, r2
 8000372:	4611      	mov	r1, r2
 8000374:	4a04      	ldr	r2, [pc, #16]	@ (8000388 <LED_OFF+0x2c>)
 8000376:	430b      	orrs	r3, r1
 8000378:	6153      	str	r3, [r2, #20]
 800037a:	bf00      	nop
 800037c:	370c      	adds	r7, #12
 800037e:	46bd      	mov	sp, r7
 8000380:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000384:	4770      	bx	lr
 8000386:	bf00      	nop
 8000388:	40020000 	.word	0x40020000

0800038c <LED_ON>:
 800038c:	b480      	push	{r7}
 800038e:	b083      	sub	sp, #12
 8000390:	af00      	add	r7, sp, #0
 8000392:	4603      	mov	r3, r0
 8000394:	71fb      	strb	r3, [r7, #7]
 8000396:	4b08      	ldr	r3, [pc, #32]	@ (80003b8 <LED_ON+0x2c>)
 8000398:	695b      	ldr	r3, [r3, #20]
 800039a:	79fa      	ldrb	r2, [r7, #7]
 800039c:	2101      	movs	r1, #1
 800039e:	fa01 f202 	lsl.w	r2, r1, r2
 80003a2:	43d2      	mvns	r2, r2
 80003a4:	4611      	mov	r1, r2
 80003a6:	4a04      	ldr	r2, [pc, #16]	@ (80003b8 <LED_ON+0x2c>)
 80003a8:	400b      	ands	r3, r1
 80003aa:	6153      	str	r3, [r2, #20]
 80003ac:	bf00      	nop
 80003ae:	370c      	adds	r7, #12
 80003b0:	46bd      	mov	sp, r7
 80003b2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003b6:	4770      	bx	lr
 80003b8:	40020000 	.word	0x40020000

080003bc <led_display>:
 80003bc:	b580      	push	{r7, lr}
 80003be:	b082      	sub	sp, #8
 80003c0:	af00      	add	r7, sp, #0
 80003c2:	4603      	mov	r3, r0
 80003c4:	71fb      	strb	r3, [r7, #7]
 80003c6:	79fb      	ldrb	r3, [r7, #7]
 80003c8:	2b03      	cmp	r3, #3
 80003ca:	d01a      	beq.n	8000402 <led_display+0x46>
 80003cc:	2b03      	cmp	r3, #3
 80003ce:	dc22      	bgt.n	8000416 <led_display+0x5a>
 80003d0:	2b01      	cmp	r3, #1
 80003d2:	d002      	beq.n	80003da <led_display+0x1e>
 80003d4:	2b02      	cmp	r3, #2
 80003d6:	d00a      	beq.n	80003ee <led_display+0x32>
 80003d8:	e01d      	b.n	8000416 <led_display+0x5a>
 80003da:	2000      	movs	r0, #0
 80003dc:	f7ff ffd6 	bl	800038c <LED_ON>
 80003e0:	2002      	movs	r0, #2
 80003e2:	f7ff ffbb 	bl	800035c <LED_OFF>
 80003e6:	2003      	movs	r0, #3
 80003e8:	f7ff ffb8 	bl	800035c <LED_OFF>
 80003ec:	e01d      	b.n	800042a <led_display+0x6e>
 80003ee:	2002      	movs	r0, #2
 80003f0:	f7ff ffcc 	bl	800038c <LED_ON>
 80003f4:	2000      	movs	r0, #0
 80003f6:	f7ff ffb1 	bl	800035c <LED_OFF>
 80003fa:	2003      	movs	r0, #3
 80003fc:	f7ff ffae 	bl	800035c <LED_OFF>
 8000400:	e013      	b.n	800042a <led_display+0x6e>
 8000402:	2003      	movs	r0, #3
 8000404:	f7ff ffc2 	bl	800038c <LED_ON>
 8000408:	2002      	movs	r0, #2
 800040a:	f7ff ffa7 	bl	800035c <LED_OFF>
 800040e:	2000      	movs	r0, #0
 8000410:	f7ff ffa4 	bl	800035c <LED_OFF>
 8000414:	e009      	b.n	800042a <led_display+0x6e>
 8000416:	2000      	movs	r0, #0
 8000418:	f7ff ffa0 	bl	800035c <LED_OFF>
 800041c:	2002      	movs	r0, #2
 800041e:	f7ff ff9d 	bl	800035c <LED_OFF>
 8000422:	2003      	movs	r0, #3
 8000424:	f7ff ff9a 	bl	800035c <LED_OFF>
 8000428:	bf00      	nop
 800042a:	bf00      	nop
 800042c:	3708      	adds	r7, #8
 800042e:	46bd      	mov	sp, r7
 8000430:	bd80      	pop	{r7, pc}
	...

08000434 <led_task>:
 8000434:	b580      	push	{r7, lr}
 8000436:	af00      	add	r7, sp, #0
 8000438:	4b03      	ldr	r3, [pc, #12]	@ (8000448 <led_task+0x14>)
 800043a:	781b      	ldrb	r3, [r3, #0]
 800043c:	4618      	mov	r0, r3
 800043e:	f7ff ffbd 	bl	80003bc <led_display>
 8000442:	bf00      	nop
 8000444:	bd80      	pop	{r7, pc}
 8000446:	bf00      	nop
 8000448:	2000004c 	.word	0x2000004c

0800044c <TIM10_Init>:
 800044c:	b480      	push	{r7}
 800044e:	af00      	add	r7, sp, #0
 8000450:	4b13      	ldr	r3, [pc, #76]	@ (80004a0 <TIM10_Init+0x54>)
 8000452:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8000454:	4a12      	ldr	r2, [pc, #72]	@ (80004a0 <TIM10_Init+0x54>)
 8000456:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
 800045a:	6453      	str	r3, [r2, #68]	@ 0x44
 800045c:	4b11      	ldr	r3, [pc, #68]	@ (80004a4 <TIM10_Init+0x58>)
 800045e:	2247      	movs	r2, #71	@ 0x47
 8000460:	629a      	str	r2, [r3, #40]	@ 0x28
 8000462:	4b10      	ldr	r3, [pc, #64]	@ (80004a4 <TIM10_Init+0x58>)
 8000464:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
 8000468:	62da      	str	r2, [r3, #44]	@ 0x2c
 800046a:	4b0e      	ldr	r3, [pc, #56]	@ (80004a4 <TIM10_Init+0x58>)
 800046c:	68db      	ldr	r3, [r3, #12]
 800046e:	4a0d      	ldr	r2, [pc, #52]	@ (80004a4 <TIM10_Init+0x58>)
 8000470:	f043 0301 	orr.w	r3, r3, #1
 8000474:	60d3      	str	r3, [r2, #12]
 8000476:	4b0c      	ldr	r3, [pc, #48]	@ (80004a8 <TIM10_Init+0x5c>)
 8000478:	2210      	movs	r2, #16
 800047a:	f883 2319 	strb.w	r2, [r3, #793]	@ 0x319
 800047e:	4b0a      	ldr	r3, [pc, #40]	@ (80004a8 <TIM10_Init+0x5c>)
 8000480:	681b      	ldr	r3, [r3, #0]
 8000482:	4a09      	ldr	r2, [pc, #36]	@ (80004a8 <TIM10_Init+0x5c>)
 8000484:	f043 7300 	orr.w	r3, r3, #33554432	@ 0x2000000
 8000488:	6013      	str	r3, [r2, #0]
 800048a:	4b06      	ldr	r3, [pc, #24]	@ (80004a4 <TIM10_Init+0x58>)
 800048c:	681b      	ldr	r3, [r3, #0]
 800048e:	4a05      	ldr	r2, [pc, #20]	@ (80004a4 <TIM10_Init+0x58>)
 8000490:	f043 0301 	orr.w	r3, r3, #1
 8000494:	6013      	str	r3, [r2, #0]
 8000496:	bf00      	nop
 8000498:	46bd      	mov	sp, r7
 800049a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800049e:	4770      	bx	lr
 80004a0:	40023800 	.word	0x40023800
 80004a4:	40014400 	.word	0x40014400
 80004a8:	e000e100 	.word	0xe000e100

080004ac <TIM1_UP_TIM10_IRQHandler>:
 80004ac:	b480      	push	{r7}
 80004ae:	af00      	add	r7, sp, #0
 80004b0:	4b0f      	ldr	r3, [pc, #60]	@ (80004f0 <TIM1_UP_TIM10_IRQHandler+0x44>)
 80004b2:	691b      	ldr	r3, [r3, #16]
 80004b4:	f003 0301 	and.w	r3, r3, #1
 80004b8:	2b00      	cmp	r3, #0
 80004ba:	d014      	beq.n	80004e6 <TIM1_UP_TIM10_IRQHandler+0x3a>
 80004bc:	4b0c      	ldr	r3, [pc, #48]	@ (80004f0 <TIM1_UP_TIM10_IRQHandler+0x44>)
 80004be:	691b      	ldr	r3, [r3, #16]
 80004c0:	4a0b      	ldr	r2, [pc, #44]	@ (80004f0 <TIM1_UP_TIM10_IRQHandler+0x44>)
 80004c2:	f023 0301 	bic.w	r3, r3, #1
 80004c6:	6113      	str	r3, [r2, #16]
 80004c8:	4b0a      	ldr	r3, [pc, #40]	@ (80004f4 <TIM1_UP_TIM10_IRQHandler+0x48>)
 80004ca:	881b      	ldrh	r3, [r3, #0]
 80004cc:	3301      	adds	r3, #1
 80004ce:	b29a      	uxth	r2, r3
 80004d0:	4b08      	ldr	r3, [pc, #32]	@ (80004f4 <TIM1_UP_TIM10_IRQHandler+0x48>)
 80004d2:	801a      	strh	r2, [r3, #0]
 80004d4:	4b08      	ldr	r3, [pc, #32]	@ (80004f8 <TIM1_UP_TIM10_IRQHandler+0x4c>)
 80004d6:	695b      	ldr	r3, [r3, #20]
 80004d8:	085b      	lsrs	r3, r3, #1
 80004da:	b2db      	uxtb	r3, r3
 80004dc:	f003 0301 	and.w	r3, r3, #1
 80004e0:	b2da      	uxtb	r2, r3
 80004e2:	4b06      	ldr	r3, [pc, #24]	@ (80004fc <TIM1_UP_TIM10_IRQHandler+0x50>)
 80004e4:	701a      	strb	r2, [r3, #0]
 80004e6:	bf00      	nop
 80004e8:	46bd      	mov	sp, r7
 80004ea:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004ee:	4770      	bx	lr
 80004f0:	40014400 	.word	0x40014400
 80004f4:	2000004e 	.word	0x2000004e
 80004f8:	40020000 	.word	0x40020000
 80004fc:	20000052 	.word	0x20000052

08000500 <TIM2_PWM_Init>:
 8000500:	b480      	push	{r7}
 8000502:	af00      	add	r7, sp, #0
 8000504:	4b41      	ldr	r3, [pc, #260]	@ (800060c <TIM2_PWM_Init+0x10c>)
 8000506:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8000508:	4a40      	ldr	r2, [pc, #256]	@ (800060c <TIM2_PWM_Init+0x10c>)
 800050a:	f043 0301 	orr.w	r3, r3, #1
 800050e:	6313      	str	r3, [r2, #48]	@ 0x30
 8000510:	4b3e      	ldr	r3, [pc, #248]	@ (800060c <TIM2_PWM_Init+0x10c>)
 8000512:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8000514:	f003 0301 	and.w	r3, r3, #1
 8000518:	2b00      	cmp	r3, #0
 800051a:	d101      	bne.n	8000520 <TIM2_PWM_Init+0x20>
 800051c:	2301      	movs	r3, #1
 800051e:	e070      	b.n	8000602 <TIM2_PWM_Init+0x102>
 8000520:	4b3a      	ldr	r3, [pc, #232]	@ (800060c <TIM2_PWM_Init+0x10c>)
 8000522:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000524:	4a39      	ldr	r2, [pc, #228]	@ (800060c <TIM2_PWM_Init+0x10c>)
 8000526:	f043 0301 	orr.w	r3, r3, #1
 800052a:	6413      	str	r3, [r2, #64]	@ 0x40
 800052c:	4b37      	ldr	r3, [pc, #220]	@ (800060c <TIM2_PWM_Init+0x10c>)
 800052e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000530:	f003 0301 	and.w	r3, r3, #1
 8000534:	2b00      	cmp	r3, #0
 8000536:	d101      	bne.n	800053c <TIM2_PWM_Init+0x3c>
 8000538:	2301      	movs	r3, #1
 800053a:	e062      	b.n	8000602 <TIM2_PWM_Init+0x102>
 800053c:	4b34      	ldr	r3, [pc, #208]	@ (8000610 <TIM2_PWM_Init+0x110>)
 800053e:	681b      	ldr	r3, [r3, #0]
 8000540:	4a33      	ldr	r2, [pc, #204]	@ (8000610 <TIM2_PWM_Init+0x110>)
 8000542:	f023 030c 	bic.w	r3, r3, #12
 8000546:	6013      	str	r3, [r2, #0]
 8000548:	4b31      	ldr	r3, [pc, #196]	@ (8000610 <TIM2_PWM_Init+0x110>)
 800054a:	681b      	ldr	r3, [r3, #0]
 800054c:	4a30      	ldr	r2, [pc, #192]	@ (8000610 <TIM2_PWM_Init+0x110>)
 800054e:	f043 0308 	orr.w	r3, r3, #8
 8000552:	6013      	str	r3, [r2, #0]
 8000554:	4b2e      	ldr	r3, [pc, #184]	@ (8000610 <TIM2_PWM_Init+0x110>)
 8000556:	6a1b      	ldr	r3, [r3, #32]
 8000558:	4a2d      	ldr	r2, [pc, #180]	@ (8000610 <TIM2_PWM_Init+0x110>)
 800055a:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 800055e:	6213      	str	r3, [r2, #32]
 8000560:	4b2b      	ldr	r3, [pc, #172]	@ (8000610 <TIM2_PWM_Init+0x110>)
 8000562:	6a1b      	ldr	r3, [r3, #32]
 8000564:	4a2a      	ldr	r2, [pc, #168]	@ (8000610 <TIM2_PWM_Init+0x110>)
 8000566:	f043 0310 	orr.w	r3, r3, #16
 800056a:	6213      	str	r3, [r2, #32]
 800056c:	4b28      	ldr	r3, [pc, #160]	@ (8000610 <TIM2_PWM_Init+0x110>)
 800056e:	689b      	ldr	r3, [r3, #8]
 8000570:	4a27      	ldr	r2, [pc, #156]	@ (8000610 <TIM2_PWM_Init+0x110>)
 8000572:	f043 030c 	orr.w	r3, r3, #12
 8000576:	6093      	str	r3, [r2, #8]
 8000578:	4b25      	ldr	r3, [pc, #148]	@ (8000610 <TIM2_PWM_Init+0x110>)
 800057a:	68db      	ldr	r3, [r3, #12]
 800057c:	4a24      	ldr	r2, [pc, #144]	@ (8000610 <TIM2_PWM_Init+0x110>)
 800057e:	f023 030c 	bic.w	r3, r3, #12
 8000582:	60d3      	str	r3, [r2, #12]
 8000584:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
 8000588:	2201      	movs	r2, #1
 800058a:	629a      	str	r2, [r3, #40]	@ 0x28
 800058c:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
 8000590:	f648 429f 	movw	r2, #35999	@ 0x8c9f
 8000594:	62da      	str	r2, [r3, #44]	@ 0x2c
 8000596:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
 800059a:	f244 624f 	movw	r2, #17999	@ 0x464f
 800059e:	639a      	str	r2, [r3, #56]	@ 0x38
 80005a0:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
 80005a4:	699b      	ldr	r3, [r3, #24]
 80005a6:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
 80005aa:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
 80005ae:	6193      	str	r3, [r2, #24]
 80005b0:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
 80005b4:	699b      	ldr	r3, [r3, #24]
 80005b6:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
 80005ba:	f443 43c0 	orr.w	r3, r3, #24576	@ 0x6000
 80005be:	6193      	str	r3, [r2, #24]
 80005c0:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
 80005c4:	699b      	ldr	r3, [r3, #24]
 80005c6:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
 80005ca:	f443 6300 	orr.w	r3, r3, #2048	@ 0x800
 80005ce:	6193      	str	r3, [r2, #24]
 80005d0:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
 80005d4:	6a1b      	ldr	r3, [r3, #32]
 80005d6:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
 80005da:	f043 0310 	orr.w	r3, r3, #16
 80005de:	6213      	str	r3, [r2, #32]
 80005e0:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
 80005e4:	681b      	ldr	r3, [r3, #0]
 80005e6:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
 80005ea:	f023 0310 	bic.w	r3, r3, #16
 80005ee:	6013      	str	r3, [r2, #0]
 80005f0:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
 80005f4:	681b      	ldr	r3, [r3, #0]
 80005f6:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
 80005fa:	f043 0301 	orr.w	r3, r3, #1
 80005fe:	6013      	str	r3, [r2, #0]
 8000600:	2300      	movs	r3, #0
 8000602:	4618      	mov	r0, r3
 8000604:	46bd      	mov	sp, r7
 8000606:	f85d 7b04 	ldr.w	r7, [sp], #4
 800060a:	4770      	bx	lr
 800060c:	40023800 	.word	0x40023800
 8000610:	40020000 	.word	0x40020000

08000614 <PWM_SetDutyCycle>:
 8000614:	b480      	push	{r7}
 8000616:	b083      	sub	sp, #12
 8000618:	af00      	add	r7, sp, #0
 800061a:	6078      	str	r0, [r7, #4]
 800061c:	687b      	ldr	r3, [r7, #4]
 800061e:	f64e 2260 	movw	r2, #60000	@ 0xea60
 8000622:	4293      	cmp	r3, r2
 8000624:	dd02      	ble.n	800062c <PWM_SetDutyCycle+0x18>
 8000626:	f64e 2360 	movw	r3, #60000	@ 0xea60
 800062a:	607b      	str	r3, [r7, #4]
 800062c:	687b      	ldr	r3, [r7, #4]
 800062e:	2b00      	cmp	r3, #0
 8000630:	da01      	bge.n	8000636 <PWM_SetDutyCycle+0x22>
 8000632:	2300      	movs	r3, #0
 8000634:	607b      	str	r3, [r7, #4]
 8000636:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
 800063a:	687b      	ldr	r3, [r7, #4]
 800063c:	6393      	str	r3, [r2, #56]	@ 0x38
 800063e:	bf00      	nop
 8000640:	370c      	adds	r7, #12
 8000642:	46bd      	mov	sp, r7
 8000644:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000648:	4770      	bx	lr
	...

0800064c <pwm_task>:
 800064c:	b580      	push	{r7, lr}
 800064e:	af00      	add	r7, sp, #0
 8000650:	4b03      	ldr	r3, [pc, #12]	@ (8000660 <pwm_task+0x14>)
 8000652:	881b      	ldrh	r3, [r3, #0]
 8000654:	4618      	mov	r0, r3
 8000656:	f7ff ffdd 	bl	8000614 <PWM_SetDutyCycle>
 800065a:	bf00      	nop
 800065c:	bd80      	pop	{r7, pc}
 800065e:	bf00      	nop
 8000660:	20000050 	.word	0x20000050

08000664 <usart1_init>:
 8000664:	b480      	push	{r7}
 8000666:	af00      	add	r7, sp, #0
 8000668:	4b26      	ldr	r3, [pc, #152]	@ (8000704 <usart1_init+0xa0>)
 800066a:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800066c:	4a25      	ldr	r2, [pc, #148]	@ (8000704 <usart1_init+0xa0>)
 800066e:	f043 0302 	orr.w	r3, r3, #2
 8000672:	6313      	str	r3, [r2, #48]	@ 0x30
 8000674:	4b23      	ldr	r3, [pc, #140]	@ (8000704 <usart1_init+0xa0>)
 8000676:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8000678:	4a22      	ldr	r2, [pc, #136]	@ (8000704 <usart1_init+0xa0>)
 800067a:	f043 0310 	orr.w	r3, r3, #16
 800067e:	6453      	str	r3, [r2, #68]	@ 0x44
 8000680:	4b21      	ldr	r3, [pc, #132]	@ (8000708 <usart1_init+0xa4>)
 8000682:	681b      	ldr	r3, [r3, #0]
 8000684:	4a20      	ldr	r2, [pc, #128]	@ (8000708 <usart1_init+0xa4>)
 8000686:	f423 4370 	bic.w	r3, r3, #61440	@ 0xf000
 800068a:	6013      	str	r3, [r2, #0]
 800068c:	4b1e      	ldr	r3, [pc, #120]	@ (8000708 <usart1_init+0xa4>)
 800068e:	681b      	ldr	r3, [r3, #0]
 8000690:	4a1d      	ldr	r2, [pc, #116]	@ (8000708 <usart1_init+0xa4>)
 8000692:	f443 4320 	orr.w	r3, r3, #40960	@ 0xa000
 8000696:	6013      	str	r3, [r2, #0]
 8000698:	4b1b      	ldr	r3, [pc, #108]	@ (8000708 <usart1_init+0xa4>)
 800069a:	6a1b      	ldr	r3, [r3, #32]
 800069c:	4a1a      	ldr	r2, [pc, #104]	@ (8000708 <usart1_init+0xa4>)
 800069e:	f023 437f 	bic.w	r3, r3, #4278190080	@ 0xff000000
 80006a2:	6213      	str	r3, [r2, #32]
 80006a4:	4b18      	ldr	r3, [pc, #96]	@ (8000708 <usart1_init+0xa4>)
 80006a6:	6a1b      	ldr	r3, [r3, #32]
 80006a8:	4a17      	ldr	r2, [pc, #92]	@ (8000708 <usart1_init+0xa4>)
 80006aa:	f043 43ee 	orr.w	r3, r3, #1996488704	@ 0x77000000
 80006ae:	6213      	str	r3, [r2, #32]
 80006b0:	4b16      	ldr	r3, [pc, #88]	@ (800070c <usart1_init+0xa8>)
 80006b2:	f641 524c 	movw	r2, #7500	@ 0x1d4c
 80006b6:	609a      	str	r2, [r3, #8]
 80006b8:	4b14      	ldr	r3, [pc, #80]	@ (800070c <usart1_init+0xa8>)
 80006ba:	68db      	ldr	r3, [r3, #12]
 80006bc:	4a13      	ldr	r2, [pc, #76]	@ (800070c <usart1_init+0xa8>)
 80006be:	f423 5340 	bic.w	r3, r3, #12288	@ 0x3000
 80006c2:	f023 031c 	bic.w	r3, r3, #28
 80006c6:	60d3      	str	r3, [r2, #12]
 80006c8:	4b10      	ldr	r3, [pc, #64]	@ (800070c <usart1_init+0xa8>)
 80006ca:	68db      	ldr	r3, [r3, #12]
 80006cc:	4a0f      	ldr	r2, [pc, #60]	@ (800070c <usart1_init+0xa8>)
 80006ce:	f443 5300 	orr.w	r3, r3, #8192	@ 0x2000
 80006d2:	f043 031c 	orr.w	r3, r3, #28
 80006d6:	60d3      	str	r3, [r2, #12]
 80006d8:	4b0c      	ldr	r3, [pc, #48]	@ (800070c <usart1_init+0xa8>)
 80006da:	695b      	ldr	r3, [r3, #20]
 80006dc:	4a0b      	ldr	r2, [pc, #44]	@ (800070c <usart1_init+0xa8>)
 80006de:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 80006e2:	6153      	str	r3, [r2, #20]
 80006e4:	4b0a      	ldr	r3, [pc, #40]	@ (8000710 <usart1_init+0xac>)
 80006e6:	685b      	ldr	r3, [r3, #4]
 80006e8:	4a09      	ldr	r2, [pc, #36]	@ (8000710 <usart1_init+0xac>)
 80006ea:	f043 0320 	orr.w	r3, r3, #32
 80006ee:	6053      	str	r3, [r2, #4]
 80006f0:	4b07      	ldr	r3, [pc, #28]	@ (8000710 <usart1_init+0xac>)
 80006f2:	2201      	movs	r2, #1
 80006f4:	f883 2325 	strb.w	r2, [r3, #805]	@ 0x325
 80006f8:	bf00      	nop
 80006fa:	46bd      	mov	sp, r7
 80006fc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000700:	4770      	bx	lr
 8000702:	bf00      	nop
 8000704:	40023800 	.word	0x40023800
 8000708:	40020400 	.word	0x40020400
 800070c:	40011000 	.word	0x40011000
 8000710:	e000e100 	.word	0xe000e100

08000714 <usart1_send_char>:
 8000714:	b480      	push	{r7}
 8000716:	b083      	sub	sp, #12
 8000718:	af00      	add	r7, sp, #0
 800071a:	4603      	mov	r3, r0
 800071c:	71fb      	strb	r3, [r7, #7]
 800071e:	bf00      	nop
 8000720:	4b07      	ldr	r3, [pc, #28]	@ (8000740 <usart1_send_char+0x2c>)
 8000722:	681b      	ldr	r3, [r3, #0]
 8000724:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8000728:	2b00      	cmp	r3, #0
 800072a:	d0f9      	beq.n	8000720 <usart1_send_char+0xc>
 800072c:	4a04      	ldr	r2, [pc, #16]	@ (8000740 <usart1_send_char+0x2c>)
 800072e:	79fb      	ldrb	r3, [r7, #7]
 8000730:	6053      	str	r3, [r2, #4]
 8000732:	bf00      	nop
 8000734:	370c      	adds	r7, #12
 8000736:	46bd      	mov	sp, r7
 8000738:	f85d 7b04 	ldr.w	r7, [sp], #4
 800073c:	4770      	bx	lr
 800073e:	bf00      	nop
 8000740:	40011000 	.word	0x40011000

08000744 <usart1_send_string>:
 8000744:	b580      	push	{r7, lr}
 8000746:	b082      	sub	sp, #8
 8000748:	af00      	add	r7, sp, #0
 800074a:	6078      	str	r0, [r7, #4]
 800074c:	e006      	b.n	800075c <usart1_send_string+0x18>
 800074e:	687b      	ldr	r3, [r7, #4]
 8000750:	1c5a      	adds	r2, r3, #1
 8000752:	607a      	str	r2, [r7, #4]
 8000754:	781b      	ldrb	r3, [r3, #0]
 8000756:	4618      	mov	r0, r3
 8000758:	f7ff ffdc 	bl	8000714 <usart1_send_char>
 800075c:	687b      	ldr	r3, [r7, #4]
 800075e:	781b      	ldrb	r3, [r3, #0]
 8000760:	2b00      	cmp	r3, #0
 8000762:	d1f4      	bne.n	800074e <usart1_send_string+0xa>
 8000764:	bf00      	nop
 8000766:	bf00      	nop
 8000768:	3708      	adds	r7, #8
 800076a:	46bd      	mov	sp, r7
 800076c:	bd80      	pop	{r7, pc}
	...

08000770 <USART1_IRQHandler>:
 8000770:	b580      	push	{r7, lr}
 8000772:	b082      	sub	sp, #8
 8000774:	af00      	add	r7, sp, #0
 8000776:	4b17      	ldr	r3, [pc, #92]	@ (80007d4 <USART1_IRQHandler+0x64>)
 8000778:	681b      	ldr	r3, [r3, #0]
 800077a:	f003 0310 	and.w	r3, r3, #16
 800077e:	2b00      	cmp	r3, #0
 8000780:	d024      	beq.n	80007cc <USART1_IRQHandler+0x5c>
 8000782:	4b14      	ldr	r3, [pc, #80]	@ (80007d4 <USART1_IRQHandler+0x64>)
 8000784:	681b      	ldr	r3, [r3, #0]
 8000786:	607b      	str	r3, [r7, #4]
 8000788:	4b12      	ldr	r3, [pc, #72]	@ (80007d4 <USART1_IRQHandler+0x64>)
 800078a:	685b      	ldr	r3, [r3, #4]
 800078c:	607b      	str	r3, [r7, #4]
 800078e:	4b12      	ldr	r3, [pc, #72]	@ (80007d8 <USART1_IRQHandler+0x68>)
 8000790:	681b      	ldr	r3, [r3, #0]
 8000792:	4a11      	ldr	r2, [pc, #68]	@ (80007d8 <USART1_IRQHandler+0x68>)
 8000794:	f023 0301 	bic.w	r3, r3, #1
 8000798:	6013      	str	r3, [r2, #0]
 800079a:	4b0f      	ldr	r3, [pc, #60]	@ (80007d8 <USART1_IRQHandler+0x68>)
 800079c:	685b      	ldr	r3, [r3, #4]
 800079e:	f1c3 0340 	rsb	r3, r3, #64	@ 0x40
 80007a2:	4a0e      	ldr	r2, [pc, #56]	@ (80007dc <USART1_IRQHandler+0x6c>)
 80007a4:	6013      	str	r3, [r2, #0]
 80007a6:	4b0d      	ldr	r3, [pc, #52]	@ (80007dc <USART1_IRQHandler+0x6c>)
 80007a8:	681b      	ldr	r3, [r3, #0]
 80007aa:	461a      	mov	r2, r3
 80007ac:	490c      	ldr	r1, [pc, #48]	@ (80007e0 <USART1_IRQHandler+0x70>)
 80007ae:	480d      	ldr	r0, [pc, #52]	@ (80007e4 <USART1_IRQHandler+0x74>)
 80007b0:	f000 f99d 	bl	8000aee <memcpy>
 80007b4:	4b0c      	ldr	r3, [pc, #48]	@ (80007e8 <USART1_IRQHandler+0x78>)
 80007b6:	2201      	movs	r2, #1
 80007b8:	701a      	strb	r2, [r3, #0]
 80007ba:	4b07      	ldr	r3, [pc, #28]	@ (80007d8 <USART1_IRQHandler+0x68>)
 80007bc:	2240      	movs	r2, #64	@ 0x40
 80007be:	605a      	str	r2, [r3, #4]
 80007c0:	4b05      	ldr	r3, [pc, #20]	@ (80007d8 <USART1_IRQHandler+0x68>)
 80007c2:	681b      	ldr	r3, [r3, #0]
 80007c4:	4a04      	ldr	r2, [pc, #16]	@ (80007d8 <USART1_IRQHandler+0x68>)
 80007c6:	f043 0301 	orr.w	r3, r3, #1
 80007ca:	6013      	str	r3, [r2, #0]
 80007cc:	bf00      	nop
 80007ce:	3708      	adds	r7, #8
 80007d0:	46bd      	mov	sp, r7
 80007d2:	bd80      	pop	{r7, pc}
 80007d4:	40011000 	.word	0x40011000
 80007d8:	40026440 	.word	0x40026440
 80007dc:	200000d4 	.word	0x200000d4
 80007e0:	20000094 	.word	0x20000094
 80007e4:	20000054 	.word	0x20000054
 80007e8:	200000d8 	.word	0x200000d8

080007ec <usart_task>:
 80007ec:	b580      	push	{r7, lr}
 80007ee:	b082      	sub	sp, #8
 80007f0:	af00      	add	r7, sp, #0
 80007f2:	4b18      	ldr	r3, [pc, #96]	@ (8000854 <usart_task+0x68>)
 80007f4:	781b      	ldrb	r3, [r3, #0]
 80007f6:	3301      	adds	r3, #1
 80007f8:	b2da      	uxtb	r2, r3
 80007fa:	4b16      	ldr	r3, [pc, #88]	@ (8000854 <usart_task+0x68>)
 80007fc:	701a      	strb	r2, [r3, #0]
 80007fe:	4b15      	ldr	r3, [pc, #84]	@ (8000854 <usart_task+0x68>)
 8000800:	781b      	ldrb	r3, [r3, #0]
 8000802:	2b04      	cmp	r3, #4
 8000804:	d905      	bls.n	8000812 <usart_task+0x26>
 8000806:	4814      	ldr	r0, [pc, #80]	@ (8000858 <usart_task+0x6c>)
 8000808:	f7ff ff9c 	bl	8000744 <usart1_send_string>
 800080c:	4b11      	ldr	r3, [pc, #68]	@ (8000854 <usart_task+0x68>)
 800080e:	2200      	movs	r2, #0
 8000810:	701a      	strb	r2, [r3, #0]
 8000812:	4b12      	ldr	r3, [pc, #72]	@ (800085c <usart_task+0x70>)
 8000814:	781b      	ldrb	r3, [r3, #0]
 8000816:	b2db      	uxtb	r3, r3
 8000818:	2b00      	cmp	r3, #0
 800081a:	d016      	beq.n	800084a <usart_task+0x5e>
 800081c:	2300      	movs	r3, #0
 800081e:	80fb      	strh	r3, [r7, #6]
 8000820:	e008      	b.n	8000834 <usart_task+0x48>
 8000822:	88fb      	ldrh	r3, [r7, #6]
 8000824:	4a0e      	ldr	r2, [pc, #56]	@ (8000860 <usart_task+0x74>)
 8000826:	5cd3      	ldrb	r3, [r2, r3]
 8000828:	4618      	mov	r0, r3
 800082a:	f7ff ff73 	bl	8000714 <usart1_send_char>
 800082e:	88fb      	ldrh	r3, [r7, #6]
 8000830:	3301      	adds	r3, #1
 8000832:	80fb      	strh	r3, [r7, #6]
 8000834:	88fa      	ldrh	r2, [r7, #6]
 8000836:	4b0b      	ldr	r3, [pc, #44]	@ (8000864 <usart_task+0x78>)
 8000838:	681b      	ldr	r3, [r3, #0]
 800083a:	429a      	cmp	r2, r3
 800083c:	d3f1      	bcc.n	8000822 <usart_task+0x36>
 800083e:	480a      	ldr	r0, [pc, #40]	@ (8000868 <usart_task+0x7c>)
 8000840:	f7ff ff80 	bl	8000744 <usart1_send_string>
 8000844:	4b05      	ldr	r3, [pc, #20]	@ (800085c <usart_task+0x70>)
 8000846:	2200      	movs	r2, #0
 8000848:	701a      	strb	r2, [r3, #0]
 800084a:	bf00      	nop
 800084c:	3708      	adds	r7, #8
 800084e:	46bd      	mov	sp, r7
 8000850:	bd80      	pop	{r7, pc}
 8000852:	bf00      	nop
 8000854:	200000d9 	.word	0x200000d9
 8000858:	08000b24 	.word	0x08000b24
 800085c:	200000d8 	.word	0x200000d8
 8000860:	20000054 	.word	0x20000054
 8000864:	200000d4 	.word	0x200000d4
 8000868:	08000b34 	.word	0x08000b34

0800086c <tasknum_init>:
 800086c:	b480      	push	{r7}
 800086e:	af00      	add	r7, sp, #0
 8000870:	4b03      	ldr	r3, [pc, #12]	@ (8000880 <tasknum_init+0x14>)
 8000872:	2204      	movs	r2, #4
 8000874:	701a      	strb	r2, [r3, #0]
 8000876:	bf00      	nop
 8000878:	46bd      	mov	sp, r7
 800087a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800087e:	4770      	bx	lr
 8000880:	200000da 	.word	0x200000da

08000884 <task1>:
 8000884:	b480      	push	{r7}
 8000886:	af00      	add	r7, sp, #0
 8000888:	4b05      	ldr	r3, [pc, #20]	@ (80008a0 <task1+0x1c>)
 800088a:	781b      	ldrb	r3, [r3, #0]
 800088c:	3301      	adds	r3, #1
 800088e:	b2da      	uxtb	r2, r3
 8000890:	4b03      	ldr	r3, [pc, #12]	@ (80008a0 <task1+0x1c>)
 8000892:	701a      	strb	r2, [r3, #0]
 8000894:	bf00      	nop
 8000896:	46bd      	mov	sp, r7
 8000898:	f85d 7b04 	ldr.w	r7, [sp], #4
 800089c:	4770      	bx	lr
 800089e:	bf00      	nop
 80008a0:	200000db 	.word	0x200000db

080008a4 <task_run>:
 80008a4:	b580      	push	{r7, lr}
 80008a6:	b082      	sub	sp, #8
 80008a8:	af00      	add	r7, sp, #0
 80008aa:	2300      	movs	r3, #0
 80008ac:	71fb      	strb	r3, [r7, #7]
 80008ae:	e02e      	b.n	800090e <task_run+0x6a>
 80008b0:	4b1c      	ldr	r3, [pc, #112]	@ (8000924 <task_run+0x80>)
 80008b2:	681b      	ldr	r3, [r3, #0]
 80008b4:	603b      	str	r3, [r7, #0]
 80008b6:	79fa      	ldrb	r2, [r7, #7]
 80008b8:	491b      	ldr	r1, [pc, #108]	@ (8000928 <task_run+0x84>)
 80008ba:	4613      	mov	r3, r2
 80008bc:	005b      	lsls	r3, r3, #1
 80008be:	4413      	add	r3, r2
 80008c0:	009b      	lsls	r3, r3, #2
 80008c2:	440b      	add	r3, r1
 80008c4:	3308      	adds	r3, #8
 80008c6:	681b      	ldr	r3, [r3, #0]
 80008c8:	683a      	ldr	r2, [r7, #0]
 80008ca:	1ad1      	subs	r1, r2, r3
 80008cc:	79fa      	ldrb	r2, [r7, #7]
 80008ce:	4816      	ldr	r0, [pc, #88]	@ (8000928 <task_run+0x84>)
 80008d0:	4613      	mov	r3, r2
 80008d2:	005b      	lsls	r3, r3, #1
 80008d4:	4413      	add	r3, r2
 80008d6:	009b      	lsls	r3, r3, #2
 80008d8:	4403      	add	r3, r0
 80008da:	3304      	adds	r3, #4
 80008dc:	881b      	ldrh	r3, [r3, #0]
 80008de:	4299      	cmp	r1, r3
 80008e0:	d312      	bcc.n	8000908 <task_run+0x64>
 80008e2:	79fa      	ldrb	r2, [r7, #7]
 80008e4:	4910      	ldr	r1, [pc, #64]	@ (8000928 <task_run+0x84>)
 80008e6:	4613      	mov	r3, r2
 80008e8:	005b      	lsls	r3, r3, #1
 80008ea:	4413      	add	r3, r2
 80008ec:	009b      	lsls	r3, r3, #2
 80008ee:	440b      	add	r3, r1
 80008f0:	3308      	adds	r3, #8
 80008f2:	683a      	ldr	r2, [r7, #0]
 80008f4:	601a      	str	r2, [r3, #0]
 80008f6:	79fa      	ldrb	r2, [r7, #7]
 80008f8:	490b      	ldr	r1, [pc, #44]	@ (8000928 <task_run+0x84>)
 80008fa:	4613      	mov	r3, r2
 80008fc:	005b      	lsls	r3, r3, #1
 80008fe:	4413      	add	r3, r2
 8000900:	009b      	lsls	r3, r3, #2
 8000902:	440b      	add	r3, r1
 8000904:	681b      	ldr	r3, [r3, #0]
 8000906:	4798      	blx	r3
 8000908:	79fb      	ldrb	r3, [r7, #7]
 800090a:	3301      	adds	r3, #1
 800090c:	71fb      	strb	r3, [r7, #7]
 800090e:	4b07      	ldr	r3, [pc, #28]	@ (800092c <task_run+0x88>)
 8000910:	781b      	ldrb	r3, [r3, #0]
 8000912:	79fa      	ldrb	r2, [r7, #7]
 8000914:	429a      	cmp	r2, r3
 8000916:	d3cb      	bcc.n	80008b0 <task_run+0xc>
 8000918:	bf00      	nop
 800091a:	bf00      	nop
 800091c:	3708      	adds	r7, #8
 800091e:	46bd      	mov	sp, r7
 8000920:	bd80      	pop	{r7, pc}
 8000922:	bf00      	nop
 8000924:	200000dc 	.word	0x200000dc
 8000928:	20000000 	.word	0x20000000
 800092c:	200000da 	.word	0x200000da

08000930 <main>:
 8000930:	b580      	push	{r7, lr}
 8000932:	af00      	add	r7, sp, #0
 8000934:	f000 f86e 	bl	8000a14 <Systick_Config>
 8000938:	f7ff fcd4 	bl	80002e4 <GPIOA_Init>
 800093c:	f7ff fe92 	bl	8000664 <usart1_init>
 8000940:	f7ff fc92 	bl	8000268 <dma2_usart1_rx_init>
 8000944:	f7ff fd82 	bl	800044c <TIM10_Init>
 8000948:	f7ff fdda 	bl	8000500 <TIM2_PWM_Init>
 800094c:	f7ff ff8e 	bl	800086c <tasknum_init>
 8000950:	f7ff ffa8 	bl	80008a4 <task_run>
 8000954:	e7fc      	b.n	8000950 <main+0x20>
	...

08000958 <SystemInit>:
 8000958:	b480      	push	{r7}
 800095a:	af00      	add	r7, sp, #0
 800095c:	4b2a      	ldr	r3, [pc, #168]	@ (8000a08 <SystemInit+0xb0>)
 800095e:	681b      	ldr	r3, [r3, #0]
 8000960:	4a29      	ldr	r2, [pc, #164]	@ (8000a08 <SystemInit+0xb0>)
 8000962:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8000966:	6013      	str	r3, [r2, #0]
 8000968:	bf00      	nop
 800096a:	4b27      	ldr	r3, [pc, #156]	@ (8000a08 <SystemInit+0xb0>)
 800096c:	681b      	ldr	r3, [r3, #0]
 800096e:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8000972:	2b00      	cmp	r3, #0
 8000974:	d0f9      	beq.n	800096a <SystemInit+0x12>
 8000976:	4b25      	ldr	r3, [pc, #148]	@ (8000a0c <SystemInit+0xb4>)
 8000978:	681b      	ldr	r3, [r3, #0]
 800097a:	4a24      	ldr	r2, [pc, #144]	@ (8000a0c <SystemInit+0xb4>)
 800097c:	f023 0307 	bic.w	r3, r3, #7
 8000980:	6013      	str	r3, [r2, #0]
 8000982:	4b22      	ldr	r3, [pc, #136]	@ (8000a0c <SystemInit+0xb4>)
 8000984:	681b      	ldr	r3, [r3, #0]
 8000986:	4a21      	ldr	r2, [pc, #132]	@ (8000a0c <SystemInit+0xb4>)
 8000988:	f043 0302 	orr.w	r3, r3, #2
 800098c:	6013      	str	r3, [r2, #0]
 800098e:	4b1e      	ldr	r3, [pc, #120]	@ (8000a08 <SystemInit+0xb0>)
 8000990:	689b      	ldr	r3, [r3, #8]
 8000992:	4a1d      	ldr	r2, [pc, #116]	@ (8000a08 <SystemInit+0xb0>)
 8000994:	f423 437c 	bic.w	r3, r3, #64512	@ 0xfc00
 8000998:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 800099c:	6093      	str	r3, [r2, #8]
 800099e:	4b1a      	ldr	r3, [pc, #104]	@ (8000a08 <SystemInit+0xb0>)
 80009a0:	689b      	ldr	r3, [r3, #8]
 80009a2:	4a19      	ldr	r2, [pc, #100]	@ (8000a08 <SystemInit+0xb0>)
 80009a4:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
 80009a8:	6093      	str	r3, [r2, #8]
 80009aa:	4b17      	ldr	r3, [pc, #92]	@ (8000a08 <SystemInit+0xb0>)
 80009ac:	681b      	ldr	r3, [r3, #0]
 80009ae:	4a16      	ldr	r2, [pc, #88]	@ (8000a08 <SystemInit+0xb0>)
 80009b0:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 80009b4:	6013      	str	r3, [r2, #0]
 80009b6:	4b14      	ldr	r3, [pc, #80]	@ (8000a08 <SystemInit+0xb0>)
 80009b8:	4a15      	ldr	r2, [pc, #84]	@ (8000a10 <SystemInit+0xb8>)
 80009ba:	605a      	str	r2, [r3, #4]
 80009bc:	4b12      	ldr	r3, [pc, #72]	@ (8000a08 <SystemInit+0xb0>)
 80009be:	681b      	ldr	r3, [r3, #0]
 80009c0:	4a11      	ldr	r2, [pc, #68]	@ (8000a08 <SystemInit+0xb0>)
 80009c2:	f043 7380 	orr.w	r3, r3, #16777216	@ 0x1000000
 80009c6:	6013      	str	r3, [r2, #0]
 80009c8:	bf00      	nop
 80009ca:	4b0f      	ldr	r3, [pc, #60]	@ (8000a08 <SystemInit+0xb0>)
 80009cc:	681b      	ldr	r3, [r3, #0]
 80009ce:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 80009d2:	2b00      	cmp	r3, #0
 80009d4:	d0f9      	beq.n	80009ca <SystemInit+0x72>
 80009d6:	4b0c      	ldr	r3, [pc, #48]	@ (8000a08 <SystemInit+0xb0>)
 80009d8:	689b      	ldr	r3, [r3, #8]
 80009da:	4a0b      	ldr	r2, [pc, #44]	@ (8000a08 <SystemInit+0xb0>)
 80009dc:	f023 0303 	bic.w	r3, r3, #3
 80009e0:	6093      	str	r3, [r2, #8]
 80009e2:	4b09      	ldr	r3, [pc, #36]	@ (8000a08 <SystemInit+0xb0>)
 80009e4:	689b      	ldr	r3, [r3, #8]
 80009e6:	4a08      	ldr	r2, [pc, #32]	@ (8000a08 <SystemInit+0xb0>)
 80009e8:	f043 0302 	orr.w	r3, r3, #2
 80009ec:	6093      	str	r3, [r2, #8]
 80009ee:	bf00      	nop
 80009f0:	4b05      	ldr	r3, [pc, #20]	@ (8000a08 <SystemInit+0xb0>)
 80009f2:	689b      	ldr	r3, [r3, #8]
 80009f4:	f003 030c 	and.w	r3, r3, #12
 80009f8:	2b08      	cmp	r3, #8
 80009fa:	d1f9      	bne.n	80009f0 <SystemInit+0x98>
 80009fc:	bf00      	nop
 80009fe:	bf00      	nop
 8000a00:	46bd      	mov	sp, r7
 8000a02:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000a06:	4770      	bx	lr
 8000a08:	40023800 	.word	0x40023800
 8000a0c:	40023c00 	.word	0x40023c00
 8000a10:	04414819 	.word	0x04414819

08000a14 <Systick_Config>:
 8000a14:	b480      	push	{r7}
 8000a16:	af00      	add	r7, sp, #0
 8000a18:	4b0c      	ldr	r3, [pc, #48]	@ (8000a4c <Systick_Config+0x38>)
 8000a1a:	681b      	ldr	r3, [r3, #0]
 8000a1c:	4a0b      	ldr	r2, [pc, #44]	@ (8000a4c <Systick_Config+0x38>)
 8000a1e:	f023 0307 	bic.w	r3, r3, #7
 8000a22:	6013      	str	r3, [r2, #0]
 8000a24:	4b09      	ldr	r3, [pc, #36]	@ (8000a4c <Systick_Config+0x38>)
 8000a26:	2206      	movs	r2, #6
 8000a28:	601a      	str	r2, [r3, #0]
 8000a2a:	4b08      	ldr	r3, [pc, #32]	@ (8000a4c <Systick_Config+0x38>)
 8000a2c:	4a08      	ldr	r2, [pc, #32]	@ (8000a50 <Systick_Config+0x3c>)
 8000a2e:	605a      	str	r2, [r3, #4]
 8000a30:	4b06      	ldr	r3, [pc, #24]	@ (8000a4c <Systick_Config+0x38>)
 8000a32:	2200      	movs	r2, #0
 8000a34:	609a      	str	r2, [r3, #8]
 8000a36:	4b05      	ldr	r3, [pc, #20]	@ (8000a4c <Systick_Config+0x38>)
 8000a38:	681b      	ldr	r3, [r3, #0]
 8000a3a:	4a04      	ldr	r2, [pc, #16]	@ (8000a4c <Systick_Config+0x38>)
 8000a3c:	f043 0301 	orr.w	r3, r3, #1
 8000a40:	6013      	str	r3, [r2, #0]
 8000a42:	bf00      	nop
 8000a44:	46bd      	mov	sp, r7
 8000a46:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000a4a:	4770      	bx	lr
 8000a4c:	e000e010 	.word	0xe000e010
 8000a50:	0001193f 	.word	0x0001193f

08000a54 <SysTick_Handler>:
 8000a54:	b480      	push	{r7}
 8000a56:	af00      	add	r7, sp, #0
 8000a58:	4b0d      	ldr	r3, [pc, #52]	@ (8000a90 <SysTick_Handler+0x3c>)
 8000a5a:	681b      	ldr	r3, [r3, #0]
 8000a5c:	3301      	adds	r3, #1
 8000a5e:	4a0c      	ldr	r2, [pc, #48]	@ (8000a90 <SysTick_Handler+0x3c>)
 8000a60:	6013      	str	r3, [r2, #0]
 8000a62:	4b0b      	ldr	r3, [pc, #44]	@ (8000a90 <SysTick_Handler+0x3c>)
 8000a64:	681a      	ldr	r2, [r3, #0]
 8000a66:	4b0b      	ldr	r3, [pc, #44]	@ (8000a94 <SysTick_Handler+0x40>)
 8000a68:	fba3 1302 	umull	r1, r3, r3, r2
 8000a6c:	099b      	lsrs	r3, r3, #6
 8000a6e:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
 8000a72:	fb01 f303 	mul.w	r3, r1, r3
 8000a76:	1ad3      	subs	r3, r2, r3
 8000a78:	2b00      	cmp	r3, #0
 8000a7a:	d104      	bne.n	8000a86 <SysTick_Handler+0x32>
 8000a7c:	4b06      	ldr	r3, [pc, #24]	@ (8000a98 <SysTick_Handler+0x44>)
 8000a7e:	681b      	ldr	r3, [r3, #0]
 8000a80:	3301      	adds	r3, #1
 8000a82:	4a05      	ldr	r2, [pc, #20]	@ (8000a98 <SysTick_Handler+0x44>)
 8000a84:	6013      	str	r3, [r2, #0]
 8000a86:	bf00      	nop
 8000a88:	46bd      	mov	sp, r7
 8000a8a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000a8e:	4770      	bx	lr
 8000a90:	200000dc 	.word	0x200000dc
 8000a94:	10624dd3 	.word	0x10624dd3
 8000a98:	200000e0 	.word	0x200000e0

08000a9c <Reset_Handler>:
 8000a9c:	f8df d034 	ldr.w	sp, [pc, #52]	@ 8000ad4 <LoopFillZerobss+0xe>
 8000aa0:	f7ff ff5a 	bl	8000958 <SystemInit>
 8000aa4:	480c      	ldr	r0, [pc, #48]	@ (8000ad8 <LoopFillZerobss+0x12>)
 8000aa6:	490d      	ldr	r1, [pc, #52]	@ (8000adc <LoopFillZerobss+0x16>)
 8000aa8:	4a0d      	ldr	r2, [pc, #52]	@ (8000ae0 <LoopFillZerobss+0x1a>)
 8000aaa:	2300      	movs	r3, #0
 8000aac:	e002      	b.n	8000ab4 <LoopCopyDataInit>

08000aae <CopyDataInit>:
 8000aae:	58d4      	ldr	r4, [r2, r3]
 8000ab0:	50c4      	str	r4, [r0, r3]
 8000ab2:	3304      	adds	r3, #4

08000ab4 <LoopCopyDataInit>:
 8000ab4:	18c4      	adds	r4, r0, r3
 8000ab6:	428c      	cmp	r4, r1
 8000ab8:	d3f9      	bcc.n	8000aae <CopyDataInit>
 8000aba:	4a0a      	ldr	r2, [pc, #40]	@ (8000ae4 <LoopFillZerobss+0x1e>)
 8000abc:	4c0a      	ldr	r4, [pc, #40]	@ (8000ae8 <LoopFillZerobss+0x22>)
 8000abe:	2300      	movs	r3, #0
 8000ac0:	e001      	b.n	8000ac6 <LoopFillZerobss>

08000ac2 <FillZerobss>:
 8000ac2:	6013      	str	r3, [r2, #0]
 8000ac4:	3204      	adds	r2, #4

08000ac6 <LoopFillZerobss>:
 8000ac6:	42a2      	cmp	r2, r4
 8000ac8:	d3fb      	bcc.n	8000ac2 <FillZerobss>
 8000aca:	f7ff fba9 	bl	8000220 <__libc_init_array>
 8000ace:	f7ff ff2f 	bl	8000930 <main>
 8000ad2:	4770      	bx	lr
 8000ad4:	20010000 	.word	0x20010000
 8000ad8:	20000000 	.word	0x20000000
 8000adc:	20000030 	.word	0x20000030
 8000ae0:	08000b40 	.word	0x08000b40
 8000ae4:	20000030 	.word	0x20000030
 8000ae8:	200000e4 	.word	0x200000e4

08000aec <ADC_IRQHandler>:
 8000aec:	e7fe      	b.n	8000aec <ADC_IRQHandler>

08000aee <memcpy>:
 8000aee:	440a      	add	r2, r1
 8000af0:	4291      	cmp	r1, r2
 8000af2:	f100 33ff 	add.w	r3, r0, #4294967295
 8000af6:	d100      	bne.n	8000afa <memcpy+0xc>
 8000af8:	4770      	bx	lr
 8000afa:	b510      	push	{r4, lr}
 8000afc:	f811 4b01 	ldrb.w	r4, [r1], #1
 8000b00:	f803 4f01 	strb.w	r4, [r3, #1]!
 8000b04:	4291      	cmp	r1, r2
 8000b06:	d1f9      	bne.n	8000afc <memcpy+0xe>
 8000b08:	bd10      	pop	{r4, pc}
	...

08000b0c <_init>:
 8000b0c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000b0e:	bf00      	nop
 8000b10:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000b12:	bc08      	pop	{r3}
 8000b14:	469e      	mov	lr, r3
 8000b16:	4770      	bx	lr

08000b18 <_fini>:
 8000b18:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000b1a:	bf00      	nop
 8000b1c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000b1e:	bc08      	pop	{r3}
 8000b20:	469e      	mov	lr, r3
 8000b22:	4770      	bx	lr
