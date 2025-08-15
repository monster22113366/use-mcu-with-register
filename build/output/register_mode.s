
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
 80001a4:	20000024 	.word	0x20000024
 80001a8:	20000024 	.word	0x20000024
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
 80001c8:	20000024 	.word	0x20000024
 80001cc:	20000024 	.word	0x20000024
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
 80001f0:	20000024 	.word	0x20000024
 80001f4:	00000000 	.word	0x00000000
 80001f8:	080008ec 	.word	0x080008ec

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
 8000218:	20000028 	.word	0x20000028
 800021c:	080008ec 	.word	0x080008ec

08000220 <__libc_init_array>:
 8000220:	b570      	push	{r4, r5, r6, lr}
 8000222:	4b0d      	ldr	r3, [pc, #52]	@ (8000258 <__libc_init_array+0x38>)
 8000224:	4d0d      	ldr	r5, [pc, #52]	@ (800025c <__libc_init_array+0x3c>)
 8000226:	1b5b      	subs	r3, r3, r5
 8000228:	109c      	asrs	r4, r3, #2
 800022a:	2600      	movs	r6, #0
 800022c:	42a6      	cmp	r6, r4
 800022e:	d109      	bne.n	8000244 <__libc_init_array+0x24>
 8000230:	f000 fb5c 	bl	80008ec <_init>
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
 8000258:	08000918 	.word	0x08000918
 800025c:	08000918 	.word	0x08000918
 8000260:	08000918 	.word	0x08000918
 8000264:	0800091c 	.word	0x0800091c

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
 80002dc:	20000084 	.word	0x20000084
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
 8000448:	20000040 	.word	0x20000040

0800044c <usart1_init>:
 800044c:	b480      	push	{r7}
 800044e:	af00      	add	r7, sp, #0
 8000450:	4b26      	ldr	r3, [pc, #152]	@ (80004ec <usart1_init+0xa0>)
 8000452:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8000454:	4a25      	ldr	r2, [pc, #148]	@ (80004ec <usart1_init+0xa0>)
 8000456:	f043 0302 	orr.w	r3, r3, #2
 800045a:	6313      	str	r3, [r2, #48]	@ 0x30
 800045c:	4b23      	ldr	r3, [pc, #140]	@ (80004ec <usart1_init+0xa0>)
 800045e:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8000460:	4a22      	ldr	r2, [pc, #136]	@ (80004ec <usart1_init+0xa0>)
 8000462:	f043 0310 	orr.w	r3, r3, #16
 8000466:	6453      	str	r3, [r2, #68]	@ 0x44
 8000468:	4b21      	ldr	r3, [pc, #132]	@ (80004f0 <usart1_init+0xa4>)
 800046a:	681b      	ldr	r3, [r3, #0]
 800046c:	4a20      	ldr	r2, [pc, #128]	@ (80004f0 <usart1_init+0xa4>)
 800046e:	f423 4370 	bic.w	r3, r3, #61440	@ 0xf000
 8000472:	6013      	str	r3, [r2, #0]
 8000474:	4b1e      	ldr	r3, [pc, #120]	@ (80004f0 <usart1_init+0xa4>)
 8000476:	681b      	ldr	r3, [r3, #0]
 8000478:	4a1d      	ldr	r2, [pc, #116]	@ (80004f0 <usart1_init+0xa4>)
 800047a:	f443 4320 	orr.w	r3, r3, #40960	@ 0xa000
 800047e:	6013      	str	r3, [r2, #0]
 8000480:	4b1b      	ldr	r3, [pc, #108]	@ (80004f0 <usart1_init+0xa4>)
 8000482:	6a1b      	ldr	r3, [r3, #32]
 8000484:	4a1a      	ldr	r2, [pc, #104]	@ (80004f0 <usart1_init+0xa4>)
 8000486:	f023 437f 	bic.w	r3, r3, #4278190080	@ 0xff000000
 800048a:	6213      	str	r3, [r2, #32]
 800048c:	4b18      	ldr	r3, [pc, #96]	@ (80004f0 <usart1_init+0xa4>)
 800048e:	6a1b      	ldr	r3, [r3, #32]
 8000490:	4a17      	ldr	r2, [pc, #92]	@ (80004f0 <usart1_init+0xa4>)
 8000492:	f043 43ee 	orr.w	r3, r3, #1996488704	@ 0x77000000
 8000496:	6213      	str	r3, [r2, #32]
 8000498:	4b16      	ldr	r3, [pc, #88]	@ (80004f4 <usart1_init+0xa8>)
 800049a:	f641 524c 	movw	r2, #7500	@ 0x1d4c
 800049e:	609a      	str	r2, [r3, #8]
 80004a0:	4b14      	ldr	r3, [pc, #80]	@ (80004f4 <usart1_init+0xa8>)
 80004a2:	68db      	ldr	r3, [r3, #12]
 80004a4:	4a13      	ldr	r2, [pc, #76]	@ (80004f4 <usart1_init+0xa8>)
 80004a6:	f423 5340 	bic.w	r3, r3, #12288	@ 0x3000
 80004aa:	f023 031c 	bic.w	r3, r3, #28
 80004ae:	60d3      	str	r3, [r2, #12]
 80004b0:	4b10      	ldr	r3, [pc, #64]	@ (80004f4 <usart1_init+0xa8>)
 80004b2:	68db      	ldr	r3, [r3, #12]
 80004b4:	4a0f      	ldr	r2, [pc, #60]	@ (80004f4 <usart1_init+0xa8>)
 80004b6:	f443 5300 	orr.w	r3, r3, #8192	@ 0x2000
 80004ba:	f043 031c 	orr.w	r3, r3, #28
 80004be:	60d3      	str	r3, [r2, #12]
 80004c0:	4b0c      	ldr	r3, [pc, #48]	@ (80004f4 <usart1_init+0xa8>)
 80004c2:	695b      	ldr	r3, [r3, #20]
 80004c4:	4a0b      	ldr	r2, [pc, #44]	@ (80004f4 <usart1_init+0xa8>)
 80004c6:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 80004ca:	6153      	str	r3, [r2, #20]
 80004cc:	4b0a      	ldr	r3, [pc, #40]	@ (80004f8 <usart1_init+0xac>)
 80004ce:	685b      	ldr	r3, [r3, #4]
 80004d0:	4a09      	ldr	r2, [pc, #36]	@ (80004f8 <usart1_init+0xac>)
 80004d2:	f043 0320 	orr.w	r3, r3, #32
 80004d6:	6053      	str	r3, [r2, #4]
 80004d8:	4b07      	ldr	r3, [pc, #28]	@ (80004f8 <usart1_init+0xac>)
 80004da:	2201      	movs	r2, #1
 80004dc:	f883 2325 	strb.w	r2, [r3, #805]	@ 0x325
 80004e0:	bf00      	nop
 80004e2:	46bd      	mov	sp, r7
 80004e4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004e8:	4770      	bx	lr
 80004ea:	bf00      	nop
 80004ec:	40023800 	.word	0x40023800
 80004f0:	40020400 	.word	0x40020400
 80004f4:	40011000 	.word	0x40011000
 80004f8:	e000e100 	.word	0xe000e100

080004fc <usart1_send_char>:
 80004fc:	b480      	push	{r7}
 80004fe:	b083      	sub	sp, #12
 8000500:	af00      	add	r7, sp, #0
 8000502:	4603      	mov	r3, r0
 8000504:	71fb      	strb	r3, [r7, #7]
 8000506:	bf00      	nop
 8000508:	4b07      	ldr	r3, [pc, #28]	@ (8000528 <usart1_send_char+0x2c>)
 800050a:	681b      	ldr	r3, [r3, #0]
 800050c:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8000510:	2b00      	cmp	r3, #0
 8000512:	d0f9      	beq.n	8000508 <usart1_send_char+0xc>
 8000514:	4a04      	ldr	r2, [pc, #16]	@ (8000528 <usart1_send_char+0x2c>)
 8000516:	79fb      	ldrb	r3, [r7, #7]
 8000518:	6053      	str	r3, [r2, #4]
 800051a:	bf00      	nop
 800051c:	370c      	adds	r7, #12
 800051e:	46bd      	mov	sp, r7
 8000520:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000524:	4770      	bx	lr
 8000526:	bf00      	nop
 8000528:	40011000 	.word	0x40011000

0800052c <usart1_send_string>:
 800052c:	b580      	push	{r7, lr}
 800052e:	b082      	sub	sp, #8
 8000530:	af00      	add	r7, sp, #0
 8000532:	6078      	str	r0, [r7, #4]
 8000534:	e006      	b.n	8000544 <usart1_send_string+0x18>
 8000536:	687b      	ldr	r3, [r7, #4]
 8000538:	1c5a      	adds	r2, r3, #1
 800053a:	607a      	str	r2, [r7, #4]
 800053c:	781b      	ldrb	r3, [r3, #0]
 800053e:	4618      	mov	r0, r3
 8000540:	f7ff ffdc 	bl	80004fc <usart1_send_char>
 8000544:	687b      	ldr	r3, [r7, #4]
 8000546:	781b      	ldrb	r3, [r3, #0]
 8000548:	2b00      	cmp	r3, #0
 800054a:	d1f4      	bne.n	8000536 <usart1_send_string+0xa>
 800054c:	bf00      	nop
 800054e:	bf00      	nop
 8000550:	3708      	adds	r7, #8
 8000552:	46bd      	mov	sp, r7
 8000554:	bd80      	pop	{r7, pc}
	...

08000558 <USART1_IRQHandler>:
 8000558:	b580      	push	{r7, lr}
 800055a:	b082      	sub	sp, #8
 800055c:	af00      	add	r7, sp, #0
 800055e:	4b17      	ldr	r3, [pc, #92]	@ (80005bc <USART1_IRQHandler+0x64>)
 8000560:	681b      	ldr	r3, [r3, #0]
 8000562:	f003 0310 	and.w	r3, r3, #16
 8000566:	2b00      	cmp	r3, #0
 8000568:	d024      	beq.n	80005b4 <USART1_IRQHandler+0x5c>
 800056a:	4b14      	ldr	r3, [pc, #80]	@ (80005bc <USART1_IRQHandler+0x64>)
 800056c:	681b      	ldr	r3, [r3, #0]
 800056e:	607b      	str	r3, [r7, #4]
 8000570:	4b12      	ldr	r3, [pc, #72]	@ (80005bc <USART1_IRQHandler+0x64>)
 8000572:	685b      	ldr	r3, [r3, #4]
 8000574:	607b      	str	r3, [r7, #4]
 8000576:	4b12      	ldr	r3, [pc, #72]	@ (80005c0 <USART1_IRQHandler+0x68>)
 8000578:	681b      	ldr	r3, [r3, #0]
 800057a:	4a11      	ldr	r2, [pc, #68]	@ (80005c0 <USART1_IRQHandler+0x68>)
 800057c:	f023 0301 	bic.w	r3, r3, #1
 8000580:	6013      	str	r3, [r2, #0]
 8000582:	4b0f      	ldr	r3, [pc, #60]	@ (80005c0 <USART1_IRQHandler+0x68>)
 8000584:	685b      	ldr	r3, [r3, #4]
 8000586:	f1c3 0340 	rsb	r3, r3, #64	@ 0x40
 800058a:	4a0e      	ldr	r2, [pc, #56]	@ (80005c4 <USART1_IRQHandler+0x6c>)
 800058c:	6013      	str	r3, [r2, #0]
 800058e:	4b0d      	ldr	r3, [pc, #52]	@ (80005c4 <USART1_IRQHandler+0x6c>)
 8000590:	681b      	ldr	r3, [r3, #0]
 8000592:	461a      	mov	r2, r3
 8000594:	490c      	ldr	r1, [pc, #48]	@ (80005c8 <USART1_IRQHandler+0x70>)
 8000596:	480d      	ldr	r0, [pc, #52]	@ (80005cc <USART1_IRQHandler+0x74>)
 8000598:	f000 f999 	bl	80008ce <memcpy>
 800059c:	4b0c      	ldr	r3, [pc, #48]	@ (80005d0 <USART1_IRQHandler+0x78>)
 800059e:	2201      	movs	r2, #1
 80005a0:	701a      	strb	r2, [r3, #0]
 80005a2:	4b07      	ldr	r3, [pc, #28]	@ (80005c0 <USART1_IRQHandler+0x68>)
 80005a4:	2240      	movs	r2, #64	@ 0x40
 80005a6:	605a      	str	r2, [r3, #4]
 80005a8:	4b05      	ldr	r3, [pc, #20]	@ (80005c0 <USART1_IRQHandler+0x68>)
 80005aa:	681b      	ldr	r3, [r3, #0]
 80005ac:	4a04      	ldr	r2, [pc, #16]	@ (80005c0 <USART1_IRQHandler+0x68>)
 80005ae:	f043 0301 	orr.w	r3, r3, #1
 80005b2:	6013      	str	r3, [r2, #0]
 80005b4:	bf00      	nop
 80005b6:	3708      	adds	r7, #8
 80005b8:	46bd      	mov	sp, r7
 80005ba:	bd80      	pop	{r7, pc}
 80005bc:	40011000 	.word	0x40011000
 80005c0:	40026440 	.word	0x40026440
 80005c4:	200000c4 	.word	0x200000c4
 80005c8:	20000084 	.word	0x20000084
 80005cc:	20000044 	.word	0x20000044
 80005d0:	200000c8 	.word	0x200000c8

080005d4 <usart_task>:
 80005d4:	b580      	push	{r7, lr}
 80005d6:	b082      	sub	sp, #8
 80005d8:	af00      	add	r7, sp, #0
 80005da:	4b18      	ldr	r3, [pc, #96]	@ (800063c <usart_task+0x68>)
 80005dc:	781b      	ldrb	r3, [r3, #0]
 80005de:	3301      	adds	r3, #1
 80005e0:	b2da      	uxtb	r2, r3
 80005e2:	4b16      	ldr	r3, [pc, #88]	@ (800063c <usart_task+0x68>)
 80005e4:	701a      	strb	r2, [r3, #0]
 80005e6:	4b15      	ldr	r3, [pc, #84]	@ (800063c <usart_task+0x68>)
 80005e8:	781b      	ldrb	r3, [r3, #0]
 80005ea:	2b04      	cmp	r3, #4
 80005ec:	d905      	bls.n	80005fa <usart_task+0x26>
 80005ee:	4814      	ldr	r0, [pc, #80]	@ (8000640 <usart_task+0x6c>)
 80005f0:	f7ff ff9c 	bl	800052c <usart1_send_string>
 80005f4:	4b11      	ldr	r3, [pc, #68]	@ (800063c <usart_task+0x68>)
 80005f6:	2200      	movs	r2, #0
 80005f8:	701a      	strb	r2, [r3, #0]
 80005fa:	4b12      	ldr	r3, [pc, #72]	@ (8000644 <usart_task+0x70>)
 80005fc:	781b      	ldrb	r3, [r3, #0]
 80005fe:	b2db      	uxtb	r3, r3
 8000600:	2b00      	cmp	r3, #0
 8000602:	d016      	beq.n	8000632 <usart_task+0x5e>
 8000604:	2300      	movs	r3, #0
 8000606:	80fb      	strh	r3, [r7, #6]
 8000608:	e008      	b.n	800061c <usart_task+0x48>
 800060a:	88fb      	ldrh	r3, [r7, #6]
 800060c:	4a0e      	ldr	r2, [pc, #56]	@ (8000648 <usart_task+0x74>)
 800060e:	5cd3      	ldrb	r3, [r2, r3]
 8000610:	4618      	mov	r0, r3
 8000612:	f7ff ff73 	bl	80004fc <usart1_send_char>
 8000616:	88fb      	ldrh	r3, [r7, #6]
 8000618:	3301      	adds	r3, #1
 800061a:	80fb      	strh	r3, [r7, #6]
 800061c:	88fa      	ldrh	r2, [r7, #6]
 800061e:	4b0b      	ldr	r3, [pc, #44]	@ (800064c <usart_task+0x78>)
 8000620:	681b      	ldr	r3, [r3, #0]
 8000622:	429a      	cmp	r2, r3
 8000624:	d3f1      	bcc.n	800060a <usart_task+0x36>
 8000626:	480a      	ldr	r0, [pc, #40]	@ (8000650 <usart_task+0x7c>)
 8000628:	f7ff ff80 	bl	800052c <usart1_send_string>
 800062c:	4b05      	ldr	r3, [pc, #20]	@ (8000644 <usart_task+0x70>)
 800062e:	2200      	movs	r2, #0
 8000630:	701a      	strb	r2, [r3, #0]
 8000632:	bf00      	nop
 8000634:	3708      	adds	r7, #8
 8000636:	46bd      	mov	sp, r7
 8000638:	bd80      	pop	{r7, pc}
 800063a:	bf00      	nop
 800063c:	200000c9 	.word	0x200000c9
 8000640:	08000904 	.word	0x08000904
 8000644:	200000c8 	.word	0x200000c8
 8000648:	20000044 	.word	0x20000044
 800064c:	200000c4 	.word	0x200000c4
 8000650:	08000914 	.word	0x08000914

08000654 <tasknum_init>:
 8000654:	b480      	push	{r7}
 8000656:	af00      	add	r7, sp, #0
 8000658:	4b03      	ldr	r3, [pc, #12]	@ (8000668 <tasknum_init+0x14>)
 800065a:	2203      	movs	r2, #3
 800065c:	701a      	strb	r2, [r3, #0]
 800065e:	bf00      	nop
 8000660:	46bd      	mov	sp, r7
 8000662:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000666:	4770      	bx	lr
 8000668:	200000ca 	.word	0x200000ca

0800066c <task1>:
 800066c:	b480      	push	{r7}
 800066e:	af00      	add	r7, sp, #0
 8000670:	4b05      	ldr	r3, [pc, #20]	@ (8000688 <task1+0x1c>)
 8000672:	781b      	ldrb	r3, [r3, #0]
 8000674:	3301      	adds	r3, #1
 8000676:	b2da      	uxtb	r2, r3
 8000678:	4b03      	ldr	r3, [pc, #12]	@ (8000688 <task1+0x1c>)
 800067a:	701a      	strb	r2, [r3, #0]
 800067c:	bf00      	nop
 800067e:	46bd      	mov	sp, r7
 8000680:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000684:	4770      	bx	lr
 8000686:	bf00      	nop
 8000688:	200000cb 	.word	0x200000cb

0800068c <task_run>:
 800068c:	b580      	push	{r7, lr}
 800068e:	b082      	sub	sp, #8
 8000690:	af00      	add	r7, sp, #0
 8000692:	2300      	movs	r3, #0
 8000694:	71fb      	strb	r3, [r7, #7]
 8000696:	e02e      	b.n	80006f6 <task_run+0x6a>
 8000698:	4b1c      	ldr	r3, [pc, #112]	@ (800070c <task_run+0x80>)
 800069a:	681b      	ldr	r3, [r3, #0]
 800069c:	603b      	str	r3, [r7, #0]
 800069e:	79fa      	ldrb	r2, [r7, #7]
 80006a0:	491b      	ldr	r1, [pc, #108]	@ (8000710 <task_run+0x84>)
 80006a2:	4613      	mov	r3, r2
 80006a4:	005b      	lsls	r3, r3, #1
 80006a6:	4413      	add	r3, r2
 80006a8:	009b      	lsls	r3, r3, #2
 80006aa:	440b      	add	r3, r1
 80006ac:	3308      	adds	r3, #8
 80006ae:	681b      	ldr	r3, [r3, #0]
 80006b0:	683a      	ldr	r2, [r7, #0]
 80006b2:	1ad1      	subs	r1, r2, r3
 80006b4:	79fa      	ldrb	r2, [r7, #7]
 80006b6:	4816      	ldr	r0, [pc, #88]	@ (8000710 <task_run+0x84>)
 80006b8:	4613      	mov	r3, r2
 80006ba:	005b      	lsls	r3, r3, #1
 80006bc:	4413      	add	r3, r2
 80006be:	009b      	lsls	r3, r3, #2
 80006c0:	4403      	add	r3, r0
 80006c2:	3304      	adds	r3, #4
 80006c4:	881b      	ldrh	r3, [r3, #0]
 80006c6:	4299      	cmp	r1, r3
 80006c8:	d312      	bcc.n	80006f0 <task_run+0x64>
 80006ca:	79fa      	ldrb	r2, [r7, #7]
 80006cc:	4910      	ldr	r1, [pc, #64]	@ (8000710 <task_run+0x84>)
 80006ce:	4613      	mov	r3, r2
 80006d0:	005b      	lsls	r3, r3, #1
 80006d2:	4413      	add	r3, r2
 80006d4:	009b      	lsls	r3, r3, #2
 80006d6:	440b      	add	r3, r1
 80006d8:	3308      	adds	r3, #8
 80006da:	683a      	ldr	r2, [r7, #0]
 80006dc:	601a      	str	r2, [r3, #0]
 80006de:	79fa      	ldrb	r2, [r7, #7]
 80006e0:	490b      	ldr	r1, [pc, #44]	@ (8000710 <task_run+0x84>)
 80006e2:	4613      	mov	r3, r2
 80006e4:	005b      	lsls	r3, r3, #1
 80006e6:	4413      	add	r3, r2
 80006e8:	009b      	lsls	r3, r3, #2
 80006ea:	440b      	add	r3, r1
 80006ec:	681b      	ldr	r3, [r3, #0]
 80006ee:	4798      	blx	r3
 80006f0:	79fb      	ldrb	r3, [r7, #7]
 80006f2:	3301      	adds	r3, #1
 80006f4:	71fb      	strb	r3, [r7, #7]
 80006f6:	4b07      	ldr	r3, [pc, #28]	@ (8000714 <task_run+0x88>)
 80006f8:	781b      	ldrb	r3, [r3, #0]
 80006fa:	79fa      	ldrb	r2, [r7, #7]
 80006fc:	429a      	cmp	r2, r3
 80006fe:	d3cb      	bcc.n	8000698 <task_run+0xc>
 8000700:	bf00      	nop
 8000702:	bf00      	nop
 8000704:	3708      	adds	r7, #8
 8000706:	46bd      	mov	sp, r7
 8000708:	bd80      	pop	{r7, pc}
 800070a:	bf00      	nop
 800070c:	200000cc 	.word	0x200000cc
 8000710:	20000000 	.word	0x20000000
 8000714:	200000ca 	.word	0x200000ca

08000718 <main>:
 8000718:	b580      	push	{r7, lr}
 800071a:	af00      	add	r7, sp, #0
 800071c:	f000 f86a 	bl	80007f4 <Systick_Config>
 8000720:	f7ff fde0 	bl	80002e4 <GPIOA_Init>
 8000724:	f7ff fe92 	bl	800044c <usart1_init>
 8000728:	f7ff fd9e 	bl	8000268 <dma2_usart1_rx_init>
 800072c:	f7ff ff92 	bl	8000654 <tasknum_init>
 8000730:	f7ff ffac 	bl	800068c <task_run>
 8000734:	e7fc      	b.n	8000730 <main+0x18>
	...

08000738 <SystemInit>:
 8000738:	b480      	push	{r7}
 800073a:	af00      	add	r7, sp, #0
 800073c:	4b2a      	ldr	r3, [pc, #168]	@ (80007e8 <SystemInit+0xb0>)
 800073e:	681b      	ldr	r3, [r3, #0]
 8000740:	4a29      	ldr	r2, [pc, #164]	@ (80007e8 <SystemInit+0xb0>)
 8000742:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8000746:	6013      	str	r3, [r2, #0]
 8000748:	bf00      	nop
 800074a:	4b27      	ldr	r3, [pc, #156]	@ (80007e8 <SystemInit+0xb0>)
 800074c:	681b      	ldr	r3, [r3, #0]
 800074e:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8000752:	2b00      	cmp	r3, #0
 8000754:	d0f9      	beq.n	800074a <SystemInit+0x12>
 8000756:	4b25      	ldr	r3, [pc, #148]	@ (80007ec <SystemInit+0xb4>)
 8000758:	681b      	ldr	r3, [r3, #0]
 800075a:	4a24      	ldr	r2, [pc, #144]	@ (80007ec <SystemInit+0xb4>)
 800075c:	f023 0307 	bic.w	r3, r3, #7
 8000760:	6013      	str	r3, [r2, #0]
 8000762:	4b22      	ldr	r3, [pc, #136]	@ (80007ec <SystemInit+0xb4>)
 8000764:	681b      	ldr	r3, [r3, #0]
 8000766:	4a21      	ldr	r2, [pc, #132]	@ (80007ec <SystemInit+0xb4>)
 8000768:	f043 0302 	orr.w	r3, r3, #2
 800076c:	6013      	str	r3, [r2, #0]
 800076e:	4b1e      	ldr	r3, [pc, #120]	@ (80007e8 <SystemInit+0xb0>)
 8000770:	689b      	ldr	r3, [r3, #8]
 8000772:	4a1d      	ldr	r2, [pc, #116]	@ (80007e8 <SystemInit+0xb0>)
 8000774:	f423 437c 	bic.w	r3, r3, #64512	@ 0xfc00
 8000778:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 800077c:	6093      	str	r3, [r2, #8]
 800077e:	4b1a      	ldr	r3, [pc, #104]	@ (80007e8 <SystemInit+0xb0>)
 8000780:	689b      	ldr	r3, [r3, #8]
 8000782:	4a19      	ldr	r2, [pc, #100]	@ (80007e8 <SystemInit+0xb0>)
 8000784:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
 8000788:	6093      	str	r3, [r2, #8]
 800078a:	4b17      	ldr	r3, [pc, #92]	@ (80007e8 <SystemInit+0xb0>)
 800078c:	681b      	ldr	r3, [r3, #0]
 800078e:	4a16      	ldr	r2, [pc, #88]	@ (80007e8 <SystemInit+0xb0>)
 8000790:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 8000794:	6013      	str	r3, [r2, #0]
 8000796:	4b14      	ldr	r3, [pc, #80]	@ (80007e8 <SystemInit+0xb0>)
 8000798:	4a15      	ldr	r2, [pc, #84]	@ (80007f0 <SystemInit+0xb8>)
 800079a:	605a      	str	r2, [r3, #4]
 800079c:	4b12      	ldr	r3, [pc, #72]	@ (80007e8 <SystemInit+0xb0>)
 800079e:	681b      	ldr	r3, [r3, #0]
 80007a0:	4a11      	ldr	r2, [pc, #68]	@ (80007e8 <SystemInit+0xb0>)
 80007a2:	f043 7380 	orr.w	r3, r3, #16777216	@ 0x1000000
 80007a6:	6013      	str	r3, [r2, #0]
 80007a8:	bf00      	nop
 80007aa:	4b0f      	ldr	r3, [pc, #60]	@ (80007e8 <SystemInit+0xb0>)
 80007ac:	681b      	ldr	r3, [r3, #0]
 80007ae:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 80007b2:	2b00      	cmp	r3, #0
 80007b4:	d0f9      	beq.n	80007aa <SystemInit+0x72>
 80007b6:	4b0c      	ldr	r3, [pc, #48]	@ (80007e8 <SystemInit+0xb0>)
 80007b8:	689b      	ldr	r3, [r3, #8]
 80007ba:	4a0b      	ldr	r2, [pc, #44]	@ (80007e8 <SystemInit+0xb0>)
 80007bc:	f023 0303 	bic.w	r3, r3, #3
 80007c0:	6093      	str	r3, [r2, #8]
 80007c2:	4b09      	ldr	r3, [pc, #36]	@ (80007e8 <SystemInit+0xb0>)
 80007c4:	689b      	ldr	r3, [r3, #8]
 80007c6:	4a08      	ldr	r2, [pc, #32]	@ (80007e8 <SystemInit+0xb0>)
 80007c8:	f043 0302 	orr.w	r3, r3, #2
 80007cc:	6093      	str	r3, [r2, #8]
 80007ce:	bf00      	nop
 80007d0:	4b05      	ldr	r3, [pc, #20]	@ (80007e8 <SystemInit+0xb0>)
 80007d2:	689b      	ldr	r3, [r3, #8]
 80007d4:	f003 030c 	and.w	r3, r3, #12
 80007d8:	2b08      	cmp	r3, #8
 80007da:	d1f9      	bne.n	80007d0 <SystemInit+0x98>
 80007dc:	bf00      	nop
 80007de:	bf00      	nop
 80007e0:	46bd      	mov	sp, r7
 80007e2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80007e6:	4770      	bx	lr
 80007e8:	40023800 	.word	0x40023800
 80007ec:	40023c00 	.word	0x40023c00
 80007f0:	04414819 	.word	0x04414819

080007f4 <Systick_Config>:
 80007f4:	b480      	push	{r7}
 80007f6:	af00      	add	r7, sp, #0
 80007f8:	4b0c      	ldr	r3, [pc, #48]	@ (800082c <Systick_Config+0x38>)
 80007fa:	681b      	ldr	r3, [r3, #0]
 80007fc:	4a0b      	ldr	r2, [pc, #44]	@ (800082c <Systick_Config+0x38>)
 80007fe:	f023 0307 	bic.w	r3, r3, #7
 8000802:	6013      	str	r3, [r2, #0]
 8000804:	4b09      	ldr	r3, [pc, #36]	@ (800082c <Systick_Config+0x38>)
 8000806:	2206      	movs	r2, #6
 8000808:	601a      	str	r2, [r3, #0]
 800080a:	4b08      	ldr	r3, [pc, #32]	@ (800082c <Systick_Config+0x38>)
 800080c:	4a08      	ldr	r2, [pc, #32]	@ (8000830 <Systick_Config+0x3c>)
 800080e:	605a      	str	r2, [r3, #4]
 8000810:	4b06      	ldr	r3, [pc, #24]	@ (800082c <Systick_Config+0x38>)
 8000812:	2200      	movs	r2, #0
 8000814:	609a      	str	r2, [r3, #8]
 8000816:	4b05      	ldr	r3, [pc, #20]	@ (800082c <Systick_Config+0x38>)
 8000818:	681b      	ldr	r3, [r3, #0]
 800081a:	4a04      	ldr	r2, [pc, #16]	@ (800082c <Systick_Config+0x38>)
 800081c:	f043 0301 	orr.w	r3, r3, #1
 8000820:	6013      	str	r3, [r2, #0]
 8000822:	bf00      	nop
 8000824:	46bd      	mov	sp, r7
 8000826:	f85d 7b04 	ldr.w	r7, [sp], #4
 800082a:	4770      	bx	lr
 800082c:	e000e010 	.word	0xe000e010
 8000830:	0001193f 	.word	0x0001193f

08000834 <SysTick_Handler>:
 8000834:	b480      	push	{r7}
 8000836:	af00      	add	r7, sp, #0
 8000838:	4b0d      	ldr	r3, [pc, #52]	@ (8000870 <SysTick_Handler+0x3c>)
 800083a:	681b      	ldr	r3, [r3, #0]
 800083c:	3301      	adds	r3, #1
 800083e:	4a0c      	ldr	r2, [pc, #48]	@ (8000870 <SysTick_Handler+0x3c>)
 8000840:	6013      	str	r3, [r2, #0]
 8000842:	4b0b      	ldr	r3, [pc, #44]	@ (8000870 <SysTick_Handler+0x3c>)
 8000844:	681a      	ldr	r2, [r3, #0]
 8000846:	4b0b      	ldr	r3, [pc, #44]	@ (8000874 <SysTick_Handler+0x40>)
 8000848:	fba3 1302 	umull	r1, r3, r3, r2
 800084c:	099b      	lsrs	r3, r3, #6
 800084e:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
 8000852:	fb01 f303 	mul.w	r3, r1, r3
 8000856:	1ad3      	subs	r3, r2, r3
 8000858:	2b00      	cmp	r3, #0
 800085a:	d104      	bne.n	8000866 <SysTick_Handler+0x32>
 800085c:	4b06      	ldr	r3, [pc, #24]	@ (8000878 <SysTick_Handler+0x44>)
 800085e:	681b      	ldr	r3, [r3, #0]
 8000860:	3301      	adds	r3, #1
 8000862:	4a05      	ldr	r2, [pc, #20]	@ (8000878 <SysTick_Handler+0x44>)
 8000864:	6013      	str	r3, [r2, #0]
 8000866:	bf00      	nop
 8000868:	46bd      	mov	sp, r7
 800086a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800086e:	4770      	bx	lr
 8000870:	200000cc 	.word	0x200000cc
 8000874:	10624dd3 	.word	0x10624dd3
 8000878:	200000d0 	.word	0x200000d0

0800087c <Reset_Handler>:
 800087c:	f8df d034 	ldr.w	sp, [pc, #52]	@ 80008b4 <LoopFillZerobss+0xe>
 8000880:	f7ff ff5a 	bl	8000738 <SystemInit>
 8000884:	480c      	ldr	r0, [pc, #48]	@ (80008b8 <LoopFillZerobss+0x12>)
 8000886:	490d      	ldr	r1, [pc, #52]	@ (80008bc <LoopFillZerobss+0x16>)
 8000888:	4a0d      	ldr	r2, [pc, #52]	@ (80008c0 <LoopFillZerobss+0x1a>)
 800088a:	2300      	movs	r3, #0
 800088c:	e002      	b.n	8000894 <LoopCopyDataInit>

0800088e <CopyDataInit>:
 800088e:	58d4      	ldr	r4, [r2, r3]
 8000890:	50c4      	str	r4, [r0, r3]
 8000892:	3304      	adds	r3, #4

08000894 <LoopCopyDataInit>:
 8000894:	18c4      	adds	r4, r0, r3
 8000896:	428c      	cmp	r4, r1
 8000898:	d3f9      	bcc.n	800088e <CopyDataInit>
 800089a:	4a0a      	ldr	r2, [pc, #40]	@ (80008c4 <LoopFillZerobss+0x1e>)
 800089c:	4c0a      	ldr	r4, [pc, #40]	@ (80008c8 <LoopFillZerobss+0x22>)
 800089e:	2300      	movs	r3, #0
 80008a0:	e001      	b.n	80008a6 <LoopFillZerobss>

080008a2 <FillZerobss>:
 80008a2:	6013      	str	r3, [r2, #0]
 80008a4:	3204      	adds	r2, #4

080008a6 <LoopFillZerobss>:
 80008a6:	42a2      	cmp	r2, r4
 80008a8:	d3fb      	bcc.n	80008a2 <FillZerobss>
 80008aa:	f7ff fcb9 	bl	8000220 <__libc_init_array>
 80008ae:	f7ff ff33 	bl	8000718 <main>
 80008b2:	4770      	bx	lr
 80008b4:	20010000 	.word	0x20010000
 80008b8:	20000000 	.word	0x20000000
 80008bc:	20000024 	.word	0x20000024
 80008c0:	08000920 	.word	0x08000920
 80008c4:	20000024 	.word	0x20000024
 80008c8:	200000d4 	.word	0x200000d4

080008cc <ADC_IRQHandler>:
 80008cc:	e7fe      	b.n	80008cc <ADC_IRQHandler>

080008ce <memcpy>:
 80008ce:	440a      	add	r2, r1
 80008d0:	4291      	cmp	r1, r2
 80008d2:	f100 33ff 	add.w	r3, r0, #4294967295
 80008d6:	d100      	bne.n	80008da <memcpy+0xc>
 80008d8:	4770      	bx	lr
 80008da:	b510      	push	{r4, lr}
 80008dc:	f811 4b01 	ldrb.w	r4, [r1], #1
 80008e0:	f803 4f01 	strb.w	r4, [r3, #1]!
 80008e4:	4291      	cmp	r1, r2
 80008e6:	d1f9      	bne.n	80008dc <memcpy+0xe>
 80008e8:	bd10      	pop	{r4, pc}
	...

080008ec <_init>:
 80008ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80008ee:	bf00      	nop
 80008f0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80008f2:	bc08      	pop	{r3}
 80008f4:	469e      	mov	lr, r3
 80008f6:	4770      	bx	lr

080008f8 <_fini>:
 80008f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80008fa:	bf00      	nop
 80008fc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80008fe:	bc08      	pop	{r3}
 8000900:	469e      	mov	lr, r3
 8000902:	4770      	bx	lr
