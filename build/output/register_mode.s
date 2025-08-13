
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
 80001f8:	08000818 	.word	0x08000818

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
 800021c:	08000818 	.word	0x08000818

08000220 <__libc_init_array>:
 8000220:	b570      	push	{r4, r5, r6, lr}
 8000222:	4b0d      	ldr	r3, [pc, #52]	@ (8000258 <__libc_init_array+0x38>)
 8000224:	4d0d      	ldr	r5, [pc, #52]	@ (800025c <__libc_init_array+0x3c>)
 8000226:	1b5b      	subs	r3, r3, r5
 8000228:	109c      	asrs	r4, r3, #2
 800022a:	2600      	movs	r6, #0
 800022c:	42a6      	cmp	r6, r4
 800022e:	d109      	bne.n	8000244 <__libc_init_array+0x24>
 8000230:	f000 faf2 	bl	8000818 <_init>
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
 8000258:	08000840 	.word	0x08000840
 800025c:	08000840 	.word	0x08000840
 8000260:	08000840 	.word	0x08000840
 8000264:	08000844 	.word	0x08000844

08000268 <GPIOA_Init>:
 8000268:	b480      	push	{r7}
 800026a:	af00      	add	r7, sp, #0
 800026c:	4b1a      	ldr	r3, [pc, #104]	@ (80002d8 <GPIOA_Init+0x70>)
 800026e:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8000270:	4a19      	ldr	r2, [pc, #100]	@ (80002d8 <GPIOA_Init+0x70>)
 8000272:	f043 0301 	orr.w	r3, r3, #1
 8000276:	6313      	str	r3, [r2, #48]	@ 0x30
 8000278:	4b18      	ldr	r3, [pc, #96]	@ (80002dc <GPIOA_Init+0x74>)
 800027a:	681b      	ldr	r3, [r3, #0]
 800027c:	4a17      	ldr	r2, [pc, #92]	@ (80002dc <GPIOA_Init+0x74>)
 800027e:	f023 03f3 	bic.w	r3, r3, #243	@ 0xf3
 8000282:	6013      	str	r3, [r2, #0]
 8000284:	4b15      	ldr	r3, [pc, #84]	@ (80002dc <GPIOA_Init+0x74>)
 8000286:	681b      	ldr	r3, [r3, #0]
 8000288:	4a14      	ldr	r2, [pc, #80]	@ (80002dc <GPIOA_Init+0x74>)
 800028a:	f043 0351 	orr.w	r3, r3, #81	@ 0x51
 800028e:	6013      	str	r3, [r2, #0]
 8000290:	4b12      	ldr	r3, [pc, #72]	@ (80002dc <GPIOA_Init+0x74>)
 8000292:	685b      	ldr	r3, [r3, #4]
 8000294:	4a11      	ldr	r2, [pc, #68]	@ (80002dc <GPIOA_Init+0x74>)
 8000296:	f023 030d 	bic.w	r3, r3, #13
 800029a:	6053      	str	r3, [r2, #4]
 800029c:	4b0f      	ldr	r3, [pc, #60]	@ (80002dc <GPIOA_Init+0x74>)
 800029e:	689b      	ldr	r3, [r3, #8]
 80002a0:	4a0e      	ldr	r2, [pc, #56]	@ (80002dc <GPIOA_Init+0x74>)
 80002a2:	f023 03f3 	bic.w	r3, r3, #243	@ 0xf3
 80002a6:	6093      	str	r3, [r2, #8]
 80002a8:	4b0c      	ldr	r3, [pc, #48]	@ (80002dc <GPIOA_Init+0x74>)
 80002aa:	689b      	ldr	r3, [r3, #8]
 80002ac:	4a0b      	ldr	r2, [pc, #44]	@ (80002dc <GPIOA_Init+0x74>)
 80002ae:	f043 0351 	orr.w	r3, r3, #81	@ 0x51
 80002b2:	6093      	str	r3, [r2, #8]
 80002b4:	4b09      	ldr	r3, [pc, #36]	@ (80002dc <GPIOA_Init+0x74>)
 80002b6:	68db      	ldr	r3, [r3, #12]
 80002b8:	4a08      	ldr	r2, [pc, #32]	@ (80002dc <GPIOA_Init+0x74>)
 80002ba:	f023 03f3 	bic.w	r3, r3, #243	@ 0xf3
 80002be:	60d3      	str	r3, [r2, #12]
 80002c0:	4b06      	ldr	r3, [pc, #24]	@ (80002dc <GPIOA_Init+0x74>)
 80002c2:	68db      	ldr	r3, [r3, #12]
 80002c4:	4a05      	ldr	r2, [pc, #20]	@ (80002dc <GPIOA_Init+0x74>)
 80002c6:	f043 0351 	orr.w	r3, r3, #81	@ 0x51
 80002ca:	60d3      	str	r3, [r2, #12]
 80002cc:	bf00      	nop
 80002ce:	46bd      	mov	sp, r7
 80002d0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80002d4:	4770      	bx	lr
 80002d6:	bf00      	nop
 80002d8:	40023800 	.word	0x40023800
 80002dc:	40020000 	.word	0x40020000

080002e0 <LED_OFF>:
 80002e0:	b480      	push	{r7}
 80002e2:	b083      	sub	sp, #12
 80002e4:	af00      	add	r7, sp, #0
 80002e6:	4603      	mov	r3, r0
 80002e8:	71fb      	strb	r3, [r7, #7]
 80002ea:	4b08      	ldr	r3, [pc, #32]	@ (800030c <LED_OFF+0x2c>)
 80002ec:	695b      	ldr	r3, [r3, #20]
 80002ee:	79fa      	ldrb	r2, [r7, #7]
 80002f0:	2101      	movs	r1, #1
 80002f2:	fa01 f202 	lsl.w	r2, r1, r2
 80002f6:	4611      	mov	r1, r2
 80002f8:	4a04      	ldr	r2, [pc, #16]	@ (800030c <LED_OFF+0x2c>)
 80002fa:	430b      	orrs	r3, r1
 80002fc:	6153      	str	r3, [r2, #20]
 80002fe:	bf00      	nop
 8000300:	370c      	adds	r7, #12
 8000302:	46bd      	mov	sp, r7
 8000304:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000308:	4770      	bx	lr
 800030a:	bf00      	nop
 800030c:	40020000 	.word	0x40020000

08000310 <LED_ON>:
 8000310:	b480      	push	{r7}
 8000312:	b083      	sub	sp, #12
 8000314:	af00      	add	r7, sp, #0
 8000316:	4603      	mov	r3, r0
 8000318:	71fb      	strb	r3, [r7, #7]
 800031a:	4b08      	ldr	r3, [pc, #32]	@ (800033c <LED_ON+0x2c>)
 800031c:	695b      	ldr	r3, [r3, #20]
 800031e:	79fa      	ldrb	r2, [r7, #7]
 8000320:	2101      	movs	r1, #1
 8000322:	fa01 f202 	lsl.w	r2, r1, r2
 8000326:	43d2      	mvns	r2, r2
 8000328:	4611      	mov	r1, r2
 800032a:	4a04      	ldr	r2, [pc, #16]	@ (800033c <LED_ON+0x2c>)
 800032c:	400b      	ands	r3, r1
 800032e:	6153      	str	r3, [r2, #20]
 8000330:	bf00      	nop
 8000332:	370c      	adds	r7, #12
 8000334:	46bd      	mov	sp, r7
 8000336:	f85d 7b04 	ldr.w	r7, [sp], #4
 800033a:	4770      	bx	lr
 800033c:	40020000 	.word	0x40020000

08000340 <led_display>:
 8000340:	b580      	push	{r7, lr}
 8000342:	b082      	sub	sp, #8
 8000344:	af00      	add	r7, sp, #0
 8000346:	4603      	mov	r3, r0
 8000348:	71fb      	strb	r3, [r7, #7]
 800034a:	79fb      	ldrb	r3, [r7, #7]
 800034c:	2b03      	cmp	r3, #3
 800034e:	d01a      	beq.n	8000386 <led_display+0x46>
 8000350:	2b03      	cmp	r3, #3
 8000352:	dc22      	bgt.n	800039a <led_display+0x5a>
 8000354:	2b01      	cmp	r3, #1
 8000356:	d002      	beq.n	800035e <led_display+0x1e>
 8000358:	2b02      	cmp	r3, #2
 800035a:	d00a      	beq.n	8000372 <led_display+0x32>
 800035c:	e01d      	b.n	800039a <led_display+0x5a>
 800035e:	2000      	movs	r0, #0
 8000360:	f7ff ffd6 	bl	8000310 <LED_ON>
 8000364:	2002      	movs	r0, #2
 8000366:	f7ff ffbb 	bl	80002e0 <LED_OFF>
 800036a:	2003      	movs	r0, #3
 800036c:	f7ff ffb8 	bl	80002e0 <LED_OFF>
 8000370:	e01d      	b.n	80003ae <led_display+0x6e>
 8000372:	2002      	movs	r0, #2
 8000374:	f7ff ffcc 	bl	8000310 <LED_ON>
 8000378:	2000      	movs	r0, #0
 800037a:	f7ff ffb1 	bl	80002e0 <LED_OFF>
 800037e:	2003      	movs	r0, #3
 8000380:	f7ff ffae 	bl	80002e0 <LED_OFF>
 8000384:	e013      	b.n	80003ae <led_display+0x6e>
 8000386:	2003      	movs	r0, #3
 8000388:	f7ff ffc2 	bl	8000310 <LED_ON>
 800038c:	2002      	movs	r0, #2
 800038e:	f7ff ffa7 	bl	80002e0 <LED_OFF>
 8000392:	2000      	movs	r0, #0
 8000394:	f7ff ffa4 	bl	80002e0 <LED_OFF>
 8000398:	e009      	b.n	80003ae <led_display+0x6e>
 800039a:	2000      	movs	r0, #0
 800039c:	f7ff ffa0 	bl	80002e0 <LED_OFF>
 80003a0:	2002      	movs	r0, #2
 80003a2:	f7ff ff9d 	bl	80002e0 <LED_OFF>
 80003a6:	2003      	movs	r0, #3
 80003a8:	f7ff ff9a 	bl	80002e0 <LED_OFF>
 80003ac:	bf00      	nop
 80003ae:	bf00      	nop
 80003b0:	3708      	adds	r7, #8
 80003b2:	46bd      	mov	sp, r7
 80003b4:	bd80      	pop	{r7, pc}
	...

080003b8 <led_task>:
 80003b8:	b580      	push	{r7, lr}
 80003ba:	af00      	add	r7, sp, #0
 80003bc:	4b03      	ldr	r3, [pc, #12]	@ (80003cc <led_task+0x14>)
 80003be:	781b      	ldrb	r3, [r3, #0]
 80003c0:	4618      	mov	r0, r3
 80003c2:	f7ff ffbd 	bl	8000340 <led_display>
 80003c6:	bf00      	nop
 80003c8:	bd80      	pop	{r7, pc}
 80003ca:	bf00      	nop
 80003cc:	20000040 	.word	0x20000040

080003d0 <usart1_init>:
 80003d0:	b480      	push	{r7}
 80003d2:	af00      	add	r7, sp, #0
 80003d4:	4b1f      	ldr	r3, [pc, #124]	@ (8000454 <usart1_init+0x84>)
 80003d6:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80003d8:	4a1e      	ldr	r2, [pc, #120]	@ (8000454 <usart1_init+0x84>)
 80003da:	f043 0302 	orr.w	r3, r3, #2
 80003de:	6313      	str	r3, [r2, #48]	@ 0x30
 80003e0:	4b1c      	ldr	r3, [pc, #112]	@ (8000454 <usart1_init+0x84>)
 80003e2:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 80003e4:	4a1b      	ldr	r2, [pc, #108]	@ (8000454 <usart1_init+0x84>)
 80003e6:	f043 0310 	orr.w	r3, r3, #16
 80003ea:	6453      	str	r3, [r2, #68]	@ 0x44
 80003ec:	4b1a      	ldr	r3, [pc, #104]	@ (8000458 <usart1_init+0x88>)
 80003ee:	681b      	ldr	r3, [r3, #0]
 80003f0:	4a19      	ldr	r2, [pc, #100]	@ (8000458 <usart1_init+0x88>)
 80003f2:	f423 4370 	bic.w	r3, r3, #61440	@ 0xf000
 80003f6:	6013      	str	r3, [r2, #0]
 80003f8:	4b17      	ldr	r3, [pc, #92]	@ (8000458 <usart1_init+0x88>)
 80003fa:	681b      	ldr	r3, [r3, #0]
 80003fc:	4a16      	ldr	r2, [pc, #88]	@ (8000458 <usart1_init+0x88>)
 80003fe:	f443 4320 	orr.w	r3, r3, #40960	@ 0xa000
 8000402:	6013      	str	r3, [r2, #0]
 8000404:	4b14      	ldr	r3, [pc, #80]	@ (8000458 <usart1_init+0x88>)
 8000406:	6a1b      	ldr	r3, [r3, #32]
 8000408:	4a13      	ldr	r2, [pc, #76]	@ (8000458 <usart1_init+0x88>)
 800040a:	f023 437f 	bic.w	r3, r3, #4278190080	@ 0xff000000
 800040e:	6213      	str	r3, [r2, #32]
 8000410:	4b11      	ldr	r3, [pc, #68]	@ (8000458 <usart1_init+0x88>)
 8000412:	6a1b      	ldr	r3, [r3, #32]
 8000414:	4a10      	ldr	r2, [pc, #64]	@ (8000458 <usart1_init+0x88>)
 8000416:	f043 43ee 	orr.w	r3, r3, #1996488704	@ 0x77000000
 800041a:	6213      	str	r3, [r2, #32]
 800041c:	4b0f      	ldr	r3, [pc, #60]	@ (800045c <usart1_init+0x8c>)
 800041e:	f641 524c 	movw	r2, #7500	@ 0x1d4c
 8000422:	609a      	str	r2, [r3, #8]
 8000424:	4b0d      	ldr	r3, [pc, #52]	@ (800045c <usart1_init+0x8c>)
 8000426:	68db      	ldr	r3, [r3, #12]
 8000428:	4a0c      	ldr	r2, [pc, #48]	@ (800045c <usart1_init+0x8c>)
 800042a:	f443 5300 	orr.w	r3, r3, #8192	@ 0x2000
 800042e:	f043 032c 	orr.w	r3, r3, #44	@ 0x2c
 8000432:	60d3      	str	r3, [r2, #12]
 8000434:	4b0a      	ldr	r3, [pc, #40]	@ (8000460 <usart1_init+0x90>)
 8000436:	685b      	ldr	r3, [r3, #4]
 8000438:	4a09      	ldr	r2, [pc, #36]	@ (8000460 <usart1_init+0x90>)
 800043a:	f043 0320 	orr.w	r3, r3, #32
 800043e:	6053      	str	r3, [r2, #4]
 8000440:	4b07      	ldr	r3, [pc, #28]	@ (8000460 <usart1_init+0x90>)
 8000442:	2201      	movs	r2, #1
 8000444:	f883 2325 	strb.w	r2, [r3, #805]	@ 0x325
 8000448:	bf00      	nop
 800044a:	46bd      	mov	sp, r7
 800044c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000450:	4770      	bx	lr
 8000452:	bf00      	nop
 8000454:	40023800 	.word	0x40023800
 8000458:	40020400 	.word	0x40020400
 800045c:	40011000 	.word	0x40011000
 8000460:	e000e100 	.word	0xe000e100

08000464 <usart1_send_char>:
 8000464:	b480      	push	{r7}
 8000466:	b083      	sub	sp, #12
 8000468:	af00      	add	r7, sp, #0
 800046a:	4603      	mov	r3, r0
 800046c:	71fb      	strb	r3, [r7, #7]
 800046e:	bf00      	nop
 8000470:	4b07      	ldr	r3, [pc, #28]	@ (8000490 <usart1_send_char+0x2c>)
 8000472:	681b      	ldr	r3, [r3, #0]
 8000474:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8000478:	2b00      	cmp	r3, #0
 800047a:	d0f9      	beq.n	8000470 <usart1_send_char+0xc>
 800047c:	4a04      	ldr	r2, [pc, #16]	@ (8000490 <usart1_send_char+0x2c>)
 800047e:	79fb      	ldrb	r3, [r7, #7]
 8000480:	6053      	str	r3, [r2, #4]
 8000482:	bf00      	nop
 8000484:	370c      	adds	r7, #12
 8000486:	46bd      	mov	sp, r7
 8000488:	f85d 7b04 	ldr.w	r7, [sp], #4
 800048c:	4770      	bx	lr
 800048e:	bf00      	nop
 8000490:	40011000 	.word	0x40011000

08000494 <usart1_send_string>:
 8000494:	b580      	push	{r7, lr}
 8000496:	b082      	sub	sp, #8
 8000498:	af00      	add	r7, sp, #0
 800049a:	6078      	str	r0, [r7, #4]
 800049c:	e006      	b.n	80004ac <usart1_send_string+0x18>
 800049e:	687b      	ldr	r3, [r7, #4]
 80004a0:	1c5a      	adds	r2, r3, #1
 80004a2:	607a      	str	r2, [r7, #4]
 80004a4:	781b      	ldrb	r3, [r3, #0]
 80004a6:	4618      	mov	r0, r3
 80004a8:	f7ff ffdc 	bl	8000464 <usart1_send_char>
 80004ac:	687b      	ldr	r3, [r7, #4]
 80004ae:	781b      	ldrb	r3, [r3, #0]
 80004b0:	2b00      	cmp	r3, #0
 80004b2:	d1f4      	bne.n	800049e <usart1_send_string+0xa>
 80004b4:	bf00      	nop
 80004b6:	bf00      	nop
 80004b8:	3708      	adds	r7, #8
 80004ba:	46bd      	mov	sp, r7
 80004bc:	bd80      	pop	{r7, pc}
	...

080004c0 <USART1_IRQHandler>:
 80004c0:	b480      	push	{r7}
 80004c2:	b083      	sub	sp, #12
 80004c4:	af00      	add	r7, sp, #0
 80004c6:	4b12      	ldr	r3, [pc, #72]	@ (8000510 <USART1_IRQHandler+0x50>)
 80004c8:	681b      	ldr	r3, [r3, #0]
 80004ca:	f003 0320 	and.w	r3, r3, #32
 80004ce:	2b00      	cmp	r3, #0
 80004d0:	d018      	beq.n	8000504 <USART1_IRQHandler+0x44>
 80004d2:	4b10      	ldr	r3, [pc, #64]	@ (8000514 <USART1_IRQHandler+0x54>)
 80004d4:	681b      	ldr	r3, [r3, #0]
 80004d6:	4a10      	ldr	r2, [pc, #64]	@ (8000518 <USART1_IRQHandler+0x58>)
 80004d8:	6013      	str	r3, [r2, #0]
 80004da:	4b0d      	ldr	r3, [pc, #52]	@ (8000510 <USART1_IRQHandler+0x50>)
 80004dc:	685b      	ldr	r3, [r3, #4]
 80004de:	71fb      	strb	r3, [r7, #7]
 80004e0:	4b0e      	ldr	r3, [pc, #56]	@ (800051c <USART1_IRQHandler+0x5c>)
 80004e2:	781b      	ldrb	r3, [r3, #0]
 80004e4:	2b3f      	cmp	r3, #63	@ 0x3f
 80004e6:	d80a      	bhi.n	80004fe <USART1_IRQHandler+0x3e>
 80004e8:	4b0c      	ldr	r3, [pc, #48]	@ (800051c <USART1_IRQHandler+0x5c>)
 80004ea:	781b      	ldrb	r3, [r3, #0]
 80004ec:	1c5a      	adds	r2, r3, #1
 80004ee:	b2d1      	uxtb	r1, r2
 80004f0:	4a0a      	ldr	r2, [pc, #40]	@ (800051c <USART1_IRQHandler+0x5c>)
 80004f2:	7011      	strb	r1, [r2, #0]
 80004f4:	4619      	mov	r1, r3
 80004f6:	4a0a      	ldr	r2, [pc, #40]	@ (8000520 <USART1_IRQHandler+0x60>)
 80004f8:	79fb      	ldrb	r3, [r7, #7]
 80004fa:	5453      	strb	r3, [r2, r1]
 80004fc:	e002      	b.n	8000504 <USART1_IRQHandler+0x44>
 80004fe:	4b07      	ldr	r3, [pc, #28]	@ (800051c <USART1_IRQHandler+0x5c>)
 8000500:	2200      	movs	r2, #0
 8000502:	701a      	strb	r2, [r3, #0]
 8000504:	bf00      	nop
 8000506:	370c      	adds	r7, #12
 8000508:	46bd      	mov	sp, r7
 800050a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800050e:	4770      	bx	lr
 8000510:	40011000 	.word	0x40011000
 8000514:	20000090 	.word	0x20000090
 8000518:	20000088 	.word	0x20000088
 800051c:	20000084 	.word	0x20000084
 8000520:	20000044 	.word	0x20000044

08000524 <usart_task>:
 8000524:	b580      	push	{r7, lr}
 8000526:	b082      	sub	sp, #8
 8000528:	af00      	add	r7, sp, #0
 800052a:	2300      	movs	r3, #0
 800052c:	71bb      	strb	r3, [r7, #6]
 800052e:	79bb      	ldrb	r3, [r7, #6]
 8000530:	3301      	adds	r3, #1
 8000532:	71bb      	strb	r3, [r7, #6]
 8000534:	79bb      	ldrb	r3, [r7, #6]
 8000536:	2b04      	cmp	r3, #4
 8000538:	d904      	bls.n	8000544 <usart_task+0x20>
 800053a:	4814      	ldr	r0, [pc, #80]	@ (800058c <usart_task+0x68>)
 800053c:	f7ff ffaa 	bl	8000494 <usart1_send_string>
 8000540:	2300      	movs	r3, #0
 8000542:	71bb      	strb	r3, [r7, #6]
 8000544:	4b12      	ldr	r3, [pc, #72]	@ (8000590 <usart_task+0x6c>)
 8000546:	781b      	ldrb	r3, [r3, #0]
 8000548:	2b00      	cmp	r3, #0
 800054a:	d01b      	beq.n	8000584 <usart_task+0x60>
 800054c:	4b11      	ldr	r3, [pc, #68]	@ (8000594 <usart_task+0x70>)
 800054e:	681a      	ldr	r2, [r3, #0]
 8000550:	4b11      	ldr	r3, [pc, #68]	@ (8000598 <usart_task+0x74>)
 8000552:	681b      	ldr	r3, [r3, #0]
 8000554:	1ad3      	subs	r3, r2, r3
 8000556:	2b63      	cmp	r3, #99	@ 0x63
 8000558:	d915      	bls.n	8000586 <usart_task+0x62>
 800055a:	2300      	movs	r3, #0
 800055c:	71fb      	strb	r3, [r7, #7]
 800055e:	e008      	b.n	8000572 <usart_task+0x4e>
 8000560:	79fb      	ldrb	r3, [r7, #7]
 8000562:	4a0e      	ldr	r2, [pc, #56]	@ (800059c <usart_task+0x78>)
 8000564:	5cd3      	ldrb	r3, [r2, r3]
 8000566:	4618      	mov	r0, r3
 8000568:	f7ff ff7c 	bl	8000464 <usart1_send_char>
 800056c:	79fb      	ldrb	r3, [r7, #7]
 800056e:	3301      	adds	r3, #1
 8000570:	71fb      	strb	r3, [r7, #7]
 8000572:	4b07      	ldr	r3, [pc, #28]	@ (8000590 <usart_task+0x6c>)
 8000574:	781b      	ldrb	r3, [r3, #0]
 8000576:	79fa      	ldrb	r2, [r7, #7]
 8000578:	429a      	cmp	r2, r3
 800057a:	d3f1      	bcc.n	8000560 <usart_task+0x3c>
 800057c:	4b04      	ldr	r3, [pc, #16]	@ (8000590 <usart_task+0x6c>)
 800057e:	2200      	movs	r2, #0
 8000580:	701a      	strb	r2, [r3, #0]
 8000582:	e000      	b.n	8000586 <usart_task+0x62>
 8000584:	bf00      	nop
 8000586:	3708      	adds	r7, #8
 8000588:	46bd      	mov	sp, r7
 800058a:	bd80      	pop	{r7, pc}
 800058c:	08000830 	.word	0x08000830
 8000590:	20000084 	.word	0x20000084
 8000594:	20000090 	.word	0x20000090
 8000598:	20000088 	.word	0x20000088
 800059c:	20000044 	.word	0x20000044

080005a0 <tasknum_init>:
 80005a0:	b480      	push	{r7}
 80005a2:	af00      	add	r7, sp, #0
 80005a4:	4b03      	ldr	r3, [pc, #12]	@ (80005b4 <tasknum_init+0x14>)
 80005a6:	2203      	movs	r2, #3
 80005a8:	701a      	strb	r2, [r3, #0]
 80005aa:	bf00      	nop
 80005ac:	46bd      	mov	sp, r7
 80005ae:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005b2:	4770      	bx	lr
 80005b4:	2000008c 	.word	0x2000008c

080005b8 <task1>:
 80005b8:	b480      	push	{r7}
 80005ba:	af00      	add	r7, sp, #0
 80005bc:	4b05      	ldr	r3, [pc, #20]	@ (80005d4 <task1+0x1c>)
 80005be:	781b      	ldrb	r3, [r3, #0]
 80005c0:	3301      	adds	r3, #1
 80005c2:	b2da      	uxtb	r2, r3
 80005c4:	4b03      	ldr	r3, [pc, #12]	@ (80005d4 <task1+0x1c>)
 80005c6:	701a      	strb	r2, [r3, #0]
 80005c8:	bf00      	nop
 80005ca:	46bd      	mov	sp, r7
 80005cc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005d0:	4770      	bx	lr
 80005d2:	bf00      	nop
 80005d4:	2000008d 	.word	0x2000008d

080005d8 <task_run>:
 80005d8:	b580      	push	{r7, lr}
 80005da:	b082      	sub	sp, #8
 80005dc:	af00      	add	r7, sp, #0
 80005de:	2300      	movs	r3, #0
 80005e0:	71fb      	strb	r3, [r7, #7]
 80005e2:	e02e      	b.n	8000642 <task_run+0x6a>
 80005e4:	4b1c      	ldr	r3, [pc, #112]	@ (8000658 <task_run+0x80>)
 80005e6:	681b      	ldr	r3, [r3, #0]
 80005e8:	603b      	str	r3, [r7, #0]
 80005ea:	79fa      	ldrb	r2, [r7, #7]
 80005ec:	491b      	ldr	r1, [pc, #108]	@ (800065c <task_run+0x84>)
 80005ee:	4613      	mov	r3, r2
 80005f0:	005b      	lsls	r3, r3, #1
 80005f2:	4413      	add	r3, r2
 80005f4:	009b      	lsls	r3, r3, #2
 80005f6:	440b      	add	r3, r1
 80005f8:	3308      	adds	r3, #8
 80005fa:	681b      	ldr	r3, [r3, #0]
 80005fc:	683a      	ldr	r2, [r7, #0]
 80005fe:	1ad1      	subs	r1, r2, r3
 8000600:	79fa      	ldrb	r2, [r7, #7]
 8000602:	4816      	ldr	r0, [pc, #88]	@ (800065c <task_run+0x84>)
 8000604:	4613      	mov	r3, r2
 8000606:	005b      	lsls	r3, r3, #1
 8000608:	4413      	add	r3, r2
 800060a:	009b      	lsls	r3, r3, #2
 800060c:	4403      	add	r3, r0
 800060e:	3304      	adds	r3, #4
 8000610:	881b      	ldrh	r3, [r3, #0]
 8000612:	4299      	cmp	r1, r3
 8000614:	d312      	bcc.n	800063c <task_run+0x64>
 8000616:	79fa      	ldrb	r2, [r7, #7]
 8000618:	4910      	ldr	r1, [pc, #64]	@ (800065c <task_run+0x84>)
 800061a:	4613      	mov	r3, r2
 800061c:	005b      	lsls	r3, r3, #1
 800061e:	4413      	add	r3, r2
 8000620:	009b      	lsls	r3, r3, #2
 8000622:	440b      	add	r3, r1
 8000624:	3308      	adds	r3, #8
 8000626:	683a      	ldr	r2, [r7, #0]
 8000628:	601a      	str	r2, [r3, #0]
 800062a:	79fa      	ldrb	r2, [r7, #7]
 800062c:	490b      	ldr	r1, [pc, #44]	@ (800065c <task_run+0x84>)
 800062e:	4613      	mov	r3, r2
 8000630:	005b      	lsls	r3, r3, #1
 8000632:	4413      	add	r3, r2
 8000634:	009b      	lsls	r3, r3, #2
 8000636:	440b      	add	r3, r1
 8000638:	681b      	ldr	r3, [r3, #0]
 800063a:	4798      	blx	r3
 800063c:	79fb      	ldrb	r3, [r7, #7]
 800063e:	3301      	adds	r3, #1
 8000640:	71fb      	strb	r3, [r7, #7]
 8000642:	4b07      	ldr	r3, [pc, #28]	@ (8000660 <task_run+0x88>)
 8000644:	781b      	ldrb	r3, [r3, #0]
 8000646:	79fa      	ldrb	r2, [r7, #7]
 8000648:	429a      	cmp	r2, r3
 800064a:	d3cb      	bcc.n	80005e4 <task_run+0xc>
 800064c:	bf00      	nop
 800064e:	bf00      	nop
 8000650:	3708      	adds	r7, #8
 8000652:	46bd      	mov	sp, r7
 8000654:	bd80      	pop	{r7, pc}
 8000656:	bf00      	nop
 8000658:	20000090 	.word	0x20000090
 800065c:	20000000 	.word	0x20000000
 8000660:	2000008c 	.word	0x2000008c

08000664 <main>:
 8000664:	b580      	push	{r7, lr}
 8000666:	af00      	add	r7, sp, #0
 8000668:	f000 f868 	bl	800073c <Systick_Config>
 800066c:	f7ff fdfc 	bl	8000268 <GPIOA_Init>
 8000670:	f7ff feae 	bl	80003d0 <usart1_init>
 8000674:	f7ff ff94 	bl	80005a0 <tasknum_init>
 8000678:	f7ff ffae 	bl	80005d8 <task_run>
 800067c:	e7fc      	b.n	8000678 <main+0x14>
	...

08000680 <SystemInit>:
 8000680:	b480      	push	{r7}
 8000682:	af00      	add	r7, sp, #0
 8000684:	4b2a      	ldr	r3, [pc, #168]	@ (8000730 <SystemInit+0xb0>)
 8000686:	681b      	ldr	r3, [r3, #0]
 8000688:	4a29      	ldr	r2, [pc, #164]	@ (8000730 <SystemInit+0xb0>)
 800068a:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 800068e:	6013      	str	r3, [r2, #0]
 8000690:	bf00      	nop
 8000692:	4b27      	ldr	r3, [pc, #156]	@ (8000730 <SystemInit+0xb0>)
 8000694:	681b      	ldr	r3, [r3, #0]
 8000696:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 800069a:	2b00      	cmp	r3, #0
 800069c:	d0f9      	beq.n	8000692 <SystemInit+0x12>
 800069e:	4b25      	ldr	r3, [pc, #148]	@ (8000734 <SystemInit+0xb4>)
 80006a0:	681b      	ldr	r3, [r3, #0]
 80006a2:	4a24      	ldr	r2, [pc, #144]	@ (8000734 <SystemInit+0xb4>)
 80006a4:	f023 0307 	bic.w	r3, r3, #7
 80006a8:	6013      	str	r3, [r2, #0]
 80006aa:	4b22      	ldr	r3, [pc, #136]	@ (8000734 <SystemInit+0xb4>)
 80006ac:	681b      	ldr	r3, [r3, #0]
 80006ae:	4a21      	ldr	r2, [pc, #132]	@ (8000734 <SystemInit+0xb4>)
 80006b0:	f043 0302 	orr.w	r3, r3, #2
 80006b4:	6013      	str	r3, [r2, #0]
 80006b6:	4b1e      	ldr	r3, [pc, #120]	@ (8000730 <SystemInit+0xb0>)
 80006b8:	689b      	ldr	r3, [r3, #8]
 80006ba:	4a1d      	ldr	r2, [pc, #116]	@ (8000730 <SystemInit+0xb0>)
 80006bc:	f423 437c 	bic.w	r3, r3, #64512	@ 0xfc00
 80006c0:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 80006c4:	6093      	str	r3, [r2, #8]
 80006c6:	4b1a      	ldr	r3, [pc, #104]	@ (8000730 <SystemInit+0xb0>)
 80006c8:	689b      	ldr	r3, [r3, #8]
 80006ca:	4a19      	ldr	r2, [pc, #100]	@ (8000730 <SystemInit+0xb0>)
 80006cc:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
 80006d0:	6093      	str	r3, [r2, #8]
 80006d2:	4b17      	ldr	r3, [pc, #92]	@ (8000730 <SystemInit+0xb0>)
 80006d4:	681b      	ldr	r3, [r3, #0]
 80006d6:	4a16      	ldr	r2, [pc, #88]	@ (8000730 <SystemInit+0xb0>)
 80006d8:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 80006dc:	6013      	str	r3, [r2, #0]
 80006de:	4b14      	ldr	r3, [pc, #80]	@ (8000730 <SystemInit+0xb0>)
 80006e0:	4a15      	ldr	r2, [pc, #84]	@ (8000738 <SystemInit+0xb8>)
 80006e2:	605a      	str	r2, [r3, #4]
 80006e4:	4b12      	ldr	r3, [pc, #72]	@ (8000730 <SystemInit+0xb0>)
 80006e6:	681b      	ldr	r3, [r3, #0]
 80006e8:	4a11      	ldr	r2, [pc, #68]	@ (8000730 <SystemInit+0xb0>)
 80006ea:	f043 7380 	orr.w	r3, r3, #16777216	@ 0x1000000
 80006ee:	6013      	str	r3, [r2, #0]
 80006f0:	bf00      	nop
 80006f2:	4b0f      	ldr	r3, [pc, #60]	@ (8000730 <SystemInit+0xb0>)
 80006f4:	681b      	ldr	r3, [r3, #0]
 80006f6:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 80006fa:	2b00      	cmp	r3, #0
 80006fc:	d0f9      	beq.n	80006f2 <SystemInit+0x72>
 80006fe:	4b0c      	ldr	r3, [pc, #48]	@ (8000730 <SystemInit+0xb0>)
 8000700:	689b      	ldr	r3, [r3, #8]
 8000702:	4a0b      	ldr	r2, [pc, #44]	@ (8000730 <SystemInit+0xb0>)
 8000704:	f023 0303 	bic.w	r3, r3, #3
 8000708:	6093      	str	r3, [r2, #8]
 800070a:	4b09      	ldr	r3, [pc, #36]	@ (8000730 <SystemInit+0xb0>)
 800070c:	689b      	ldr	r3, [r3, #8]
 800070e:	4a08      	ldr	r2, [pc, #32]	@ (8000730 <SystemInit+0xb0>)
 8000710:	f043 0302 	orr.w	r3, r3, #2
 8000714:	6093      	str	r3, [r2, #8]
 8000716:	bf00      	nop
 8000718:	4b05      	ldr	r3, [pc, #20]	@ (8000730 <SystemInit+0xb0>)
 800071a:	689b      	ldr	r3, [r3, #8]
 800071c:	f003 030c 	and.w	r3, r3, #12
 8000720:	2b08      	cmp	r3, #8
 8000722:	d1f9      	bne.n	8000718 <SystemInit+0x98>
 8000724:	bf00      	nop
 8000726:	bf00      	nop
 8000728:	46bd      	mov	sp, r7
 800072a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800072e:	4770      	bx	lr
 8000730:	40023800 	.word	0x40023800
 8000734:	40023c00 	.word	0x40023c00
 8000738:	04414819 	.word	0x04414819

0800073c <Systick_Config>:
 800073c:	b480      	push	{r7}
 800073e:	af00      	add	r7, sp, #0
 8000740:	4b0c      	ldr	r3, [pc, #48]	@ (8000774 <Systick_Config+0x38>)
 8000742:	681b      	ldr	r3, [r3, #0]
 8000744:	4a0b      	ldr	r2, [pc, #44]	@ (8000774 <Systick_Config+0x38>)
 8000746:	f023 0307 	bic.w	r3, r3, #7
 800074a:	6013      	str	r3, [r2, #0]
 800074c:	4b09      	ldr	r3, [pc, #36]	@ (8000774 <Systick_Config+0x38>)
 800074e:	2206      	movs	r2, #6
 8000750:	601a      	str	r2, [r3, #0]
 8000752:	4b08      	ldr	r3, [pc, #32]	@ (8000774 <Systick_Config+0x38>)
 8000754:	4a08      	ldr	r2, [pc, #32]	@ (8000778 <Systick_Config+0x3c>)
 8000756:	605a      	str	r2, [r3, #4]
 8000758:	4b06      	ldr	r3, [pc, #24]	@ (8000774 <Systick_Config+0x38>)
 800075a:	2200      	movs	r2, #0
 800075c:	609a      	str	r2, [r3, #8]
 800075e:	4b05      	ldr	r3, [pc, #20]	@ (8000774 <Systick_Config+0x38>)
 8000760:	681b      	ldr	r3, [r3, #0]
 8000762:	4a04      	ldr	r2, [pc, #16]	@ (8000774 <Systick_Config+0x38>)
 8000764:	f043 0301 	orr.w	r3, r3, #1
 8000768:	6013      	str	r3, [r2, #0]
 800076a:	bf00      	nop
 800076c:	46bd      	mov	sp, r7
 800076e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000772:	4770      	bx	lr
 8000774:	e000e010 	.word	0xe000e010
 8000778:	0001193f 	.word	0x0001193f

0800077c <SysTick_Handler>:
 800077c:	b480      	push	{r7}
 800077e:	af00      	add	r7, sp, #0
 8000780:	4b0d      	ldr	r3, [pc, #52]	@ (80007b8 <SysTick_Handler+0x3c>)
 8000782:	681b      	ldr	r3, [r3, #0]
 8000784:	3301      	adds	r3, #1
 8000786:	4a0c      	ldr	r2, [pc, #48]	@ (80007b8 <SysTick_Handler+0x3c>)
 8000788:	6013      	str	r3, [r2, #0]
 800078a:	4b0b      	ldr	r3, [pc, #44]	@ (80007b8 <SysTick_Handler+0x3c>)
 800078c:	681a      	ldr	r2, [r3, #0]
 800078e:	4b0b      	ldr	r3, [pc, #44]	@ (80007bc <SysTick_Handler+0x40>)
 8000790:	fba3 1302 	umull	r1, r3, r3, r2
 8000794:	099b      	lsrs	r3, r3, #6
 8000796:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
 800079a:	fb01 f303 	mul.w	r3, r1, r3
 800079e:	1ad3      	subs	r3, r2, r3
 80007a0:	2b00      	cmp	r3, #0
 80007a2:	d104      	bne.n	80007ae <SysTick_Handler+0x32>
 80007a4:	4b06      	ldr	r3, [pc, #24]	@ (80007c0 <SysTick_Handler+0x44>)
 80007a6:	681b      	ldr	r3, [r3, #0]
 80007a8:	3301      	adds	r3, #1
 80007aa:	4a05      	ldr	r2, [pc, #20]	@ (80007c0 <SysTick_Handler+0x44>)
 80007ac:	6013      	str	r3, [r2, #0]
 80007ae:	bf00      	nop
 80007b0:	46bd      	mov	sp, r7
 80007b2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80007b6:	4770      	bx	lr
 80007b8:	20000090 	.word	0x20000090
 80007bc:	10624dd3 	.word	0x10624dd3
 80007c0:	20000094 	.word	0x20000094

080007c4 <Reset_Handler>:
 80007c4:	f8df d034 	ldr.w	sp, [pc, #52]	@ 80007fc <LoopFillZerobss+0xe>
 80007c8:	f7ff ff5a 	bl	8000680 <SystemInit>
 80007cc:	480c      	ldr	r0, [pc, #48]	@ (8000800 <LoopFillZerobss+0x12>)
 80007ce:	490d      	ldr	r1, [pc, #52]	@ (8000804 <LoopFillZerobss+0x16>)
 80007d0:	4a0d      	ldr	r2, [pc, #52]	@ (8000808 <LoopFillZerobss+0x1a>)
 80007d2:	2300      	movs	r3, #0
 80007d4:	e002      	b.n	80007dc <LoopCopyDataInit>

080007d6 <CopyDataInit>:
 80007d6:	58d4      	ldr	r4, [r2, r3]
 80007d8:	50c4      	str	r4, [r0, r3]
 80007da:	3304      	adds	r3, #4

080007dc <LoopCopyDataInit>:
 80007dc:	18c4      	adds	r4, r0, r3
 80007de:	428c      	cmp	r4, r1
 80007e0:	d3f9      	bcc.n	80007d6 <CopyDataInit>
 80007e2:	4a0a      	ldr	r2, [pc, #40]	@ (800080c <LoopFillZerobss+0x1e>)
 80007e4:	4c0a      	ldr	r4, [pc, #40]	@ (8000810 <LoopFillZerobss+0x22>)
 80007e6:	2300      	movs	r3, #0
 80007e8:	e001      	b.n	80007ee <LoopFillZerobss>

080007ea <FillZerobss>:
 80007ea:	6013      	str	r3, [r2, #0]
 80007ec:	3204      	adds	r2, #4

080007ee <LoopFillZerobss>:
 80007ee:	42a2      	cmp	r2, r4
 80007f0:	d3fb      	bcc.n	80007ea <FillZerobss>
 80007f2:	f7ff fd15 	bl	8000220 <__libc_init_array>
 80007f6:	f7ff ff35 	bl	8000664 <main>
 80007fa:	4770      	bx	lr
 80007fc:	20010000 	.word	0x20010000
 8000800:	20000000 	.word	0x20000000
 8000804:	20000024 	.word	0x20000024
 8000808:	08000848 	.word	0x08000848
 800080c:	20000024 	.word	0x20000024
 8000810:	20000098 	.word	0x20000098

08000814 <ADC_IRQHandler>:
 8000814:	e7fe      	b.n	8000814 <ADC_IRQHandler>
	...

08000818 <_init>:
 8000818:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800081a:	bf00      	nop
 800081c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800081e:	bc08      	pop	{r3}
 8000820:	469e      	mov	lr, r3
 8000822:	4770      	bx	lr

08000824 <_fini>:
 8000824:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000826:	bf00      	nop
 8000828:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800082a:	bc08      	pop	{r3}
 800082c:	469e      	mov	lr, r3
 800082e:	4770      	bx	lr
