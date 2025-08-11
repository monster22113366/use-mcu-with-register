
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
 80001a4:	20000000 	.word	0x20000000
 80001a8:	20000000 	.word	0x20000000
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
 80001c8:	20000000 	.word	0x20000000
 80001cc:	20000000 	.word	0x20000000
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
 80001f0:	20000000 	.word	0x20000000
 80001f4:	00000000 	.word	0x00000000
 80001f8:	08000448 	.word	0x08000448

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
 8000218:	20000004 	.word	0x20000004
 800021c:	08000448 	.word	0x08000448

08000220 <__libc_init_array>:
 8000220:	b570      	push	{r4, r5, r6, lr}
 8000222:	4b0d      	ldr	r3, [pc, #52]	@ (8000258 <__libc_init_array+0x38>)
 8000224:	4d0d      	ldr	r5, [pc, #52]	@ (800025c <__libc_init_array+0x3c>)
 8000226:	1b5b      	subs	r3, r3, r5
 8000228:	109c      	asrs	r4, r3, #2
 800022a:	2600      	movs	r6, #0
 800022c:	42a6      	cmp	r6, r4
 800022e:	d109      	bne.n	8000244 <__libc_init_array+0x24>
 8000230:	f000 f90a 	bl	8000448 <_init>
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
 8000258:	08000460 	.word	0x08000460
 800025c:	08000460 	.word	0x08000460
 8000260:	08000460 	.word	0x08000460
 8000264:	08000464 	.word	0x08000464

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

08000340 <main>:
 8000340:	b580      	push	{r7, lr}
 8000342:	af00      	add	r7, sp, #0
 8000344:	f7ff ff90 	bl	8000268 <GPIOA_Init>
 8000348:	2000      	movs	r0, #0
 800034a:	f7ff ffc9 	bl	80002e0 <LED_OFF>
 800034e:	2001      	movs	r0, #1
 8000350:	f7ff ffc6 	bl	80002e0 <LED_OFF>
 8000354:	2003      	movs	r0, #3
 8000356:	f7ff ffc3 	bl	80002e0 <LED_OFF>
 800035a:	4b20      	ldr	r3, [pc, #128]	@ (80003dc <main+0x9c>)
 800035c:	781b      	ldrb	r3, [r3, #0]
 800035e:	3301      	adds	r3, #1
 8000360:	b2da      	uxtb	r2, r3
 8000362:	4b1e      	ldr	r3, [pc, #120]	@ (80003dc <main+0x9c>)
 8000364:	701a      	strb	r2, [r3, #0]
 8000366:	4b1d      	ldr	r3, [pc, #116]	@ (80003dc <main+0x9c>)
 8000368:	781b      	ldrb	r3, [r3, #0]
 800036a:	2b0a      	cmp	r3, #10
 800036c:	d902      	bls.n	8000374 <main+0x34>
 800036e:	4b1b      	ldr	r3, [pc, #108]	@ (80003dc <main+0x9c>)
 8000370:	2200      	movs	r2, #0
 8000372:	701a      	strb	r2, [r3, #0]
 8000374:	4b1a      	ldr	r3, [pc, #104]	@ (80003e0 <main+0xa0>)
 8000376:	781b      	ldrb	r3, [r3, #0]
 8000378:	2b03      	cmp	r3, #3
 800037a:	d01a      	beq.n	80003b2 <main+0x72>
 800037c:	2b03      	cmp	r3, #3
 800037e:	dc22      	bgt.n	80003c6 <main+0x86>
 8000380:	2b01      	cmp	r3, #1
 8000382:	d002      	beq.n	800038a <main+0x4a>
 8000384:	2b02      	cmp	r3, #2
 8000386:	d00a      	beq.n	800039e <main+0x5e>
 8000388:	e01d      	b.n	80003c6 <main+0x86>
 800038a:	2000      	movs	r0, #0
 800038c:	f7ff ffc0 	bl	8000310 <LED_ON>
 8000390:	2002      	movs	r0, #2
 8000392:	f7ff ffa5 	bl	80002e0 <LED_OFF>
 8000396:	2003      	movs	r0, #3
 8000398:	f7ff ffa2 	bl	80002e0 <LED_OFF>
 800039c:	e01d      	b.n	80003da <main+0x9a>
 800039e:	2002      	movs	r0, #2
 80003a0:	f7ff ffb6 	bl	8000310 <LED_ON>
 80003a4:	2000      	movs	r0, #0
 80003a6:	f7ff ff9b 	bl	80002e0 <LED_OFF>
 80003aa:	2003      	movs	r0, #3
 80003ac:	f7ff ff98 	bl	80002e0 <LED_OFF>
 80003b0:	e013      	b.n	80003da <main+0x9a>
 80003b2:	2003      	movs	r0, #3
 80003b4:	f7ff ffac 	bl	8000310 <LED_ON>
 80003b8:	2002      	movs	r0, #2
 80003ba:	f7ff ff91 	bl	80002e0 <LED_OFF>
 80003be:	2000      	movs	r0, #0
 80003c0:	f7ff ff8e 	bl	80002e0 <LED_OFF>
 80003c4:	e009      	b.n	80003da <main+0x9a>
 80003c6:	2000      	movs	r0, #0
 80003c8:	f7ff ff8a 	bl	80002e0 <LED_OFF>
 80003cc:	2002      	movs	r0, #2
 80003ce:	f7ff ff87 	bl	80002e0 <LED_OFF>
 80003d2:	2003      	movs	r0, #3
 80003d4:	f7ff ff84 	bl	80002e0 <LED_OFF>
 80003d8:	bf00      	nop
 80003da:	e7be      	b.n	800035a <main+0x1a>
 80003dc:	2000001d 	.word	0x2000001d
 80003e0:	2000001c 	.word	0x2000001c

080003e4 <SystemInit>:
 80003e4:	b480      	push	{r7}
 80003e6:	af00      	add	r7, sp, #0
 80003e8:	bf00      	nop
 80003ea:	46bd      	mov	sp, r7
 80003ec:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003f0:	4770      	bx	lr
	...

080003f4 <Reset_Handler>:
 80003f4:	f8df d034 	ldr.w	sp, [pc, #52]	@ 800042c <LoopFillZerobss+0xe>
 80003f8:	f7ff fff4 	bl	80003e4 <SystemInit>
 80003fc:	480c      	ldr	r0, [pc, #48]	@ (8000430 <LoopFillZerobss+0x12>)
 80003fe:	490d      	ldr	r1, [pc, #52]	@ (8000434 <LoopFillZerobss+0x16>)
 8000400:	4a0d      	ldr	r2, [pc, #52]	@ (8000438 <LoopFillZerobss+0x1a>)
 8000402:	2300      	movs	r3, #0
 8000404:	e002      	b.n	800040c <LoopCopyDataInit>

08000406 <CopyDataInit>:
 8000406:	58d4      	ldr	r4, [r2, r3]
 8000408:	50c4      	str	r4, [r0, r3]
 800040a:	3304      	adds	r3, #4

0800040c <LoopCopyDataInit>:
 800040c:	18c4      	adds	r4, r0, r3
 800040e:	428c      	cmp	r4, r1
 8000410:	d3f9      	bcc.n	8000406 <CopyDataInit>
 8000412:	4a0a      	ldr	r2, [pc, #40]	@ (800043c <LoopFillZerobss+0x1e>)
 8000414:	4c0a      	ldr	r4, [pc, #40]	@ (8000440 <LoopFillZerobss+0x22>)
 8000416:	2300      	movs	r3, #0
 8000418:	e001      	b.n	800041e <LoopFillZerobss>

0800041a <FillZerobss>:
 800041a:	6013      	str	r3, [r2, #0]
 800041c:	3204      	adds	r2, #4

0800041e <LoopFillZerobss>:
 800041e:	42a2      	cmp	r2, r4
 8000420:	d3fb      	bcc.n	800041a <FillZerobss>
 8000422:	f7ff fefd 	bl	8000220 <__libc_init_array>
 8000426:	f7ff ff8b 	bl	8000340 <main>
 800042a:	4770      	bx	lr
 800042c:	20010000 	.word	0x20010000
 8000430:	20000000 	.word	0x20000000
 8000434:	20000000 	.word	0x20000000
 8000438:	08000468 	.word	0x08000468
 800043c:	20000000 	.word	0x20000000
 8000440:	20000020 	.word	0x20000020

08000444 <ADC_IRQHandler>:
 8000444:	e7fe      	b.n	8000444 <ADC_IRQHandler>
	...

08000448 <_init>:
 8000448:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800044a:	bf00      	nop
 800044c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800044e:	bc08      	pop	{r3}
 8000450:	469e      	mov	lr, r3
 8000452:	4770      	bx	lr

08000454 <_fini>:
 8000454:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000456:	bf00      	nop
 8000458:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800045a:	bc08      	pop	{r3}
 800045c:	469e      	mov	lr, r3
 800045e:	4770      	bx	lr
