
D:/ELECT/CODE/vscode/ST/stm32f401ccu6/register_test/register_mode/build/output/register_mode.elf:     file format elf32-littlearm


Disassembly of section .text:

08000194 <rt_hw_interrupt_disable>:
 8000194:	f3ef 8010 	mrs	r0, PRIMASK
 8000198:	b672      	cpsid	i
 800019a:	4770      	bx	lr

0800019c <rt_hw_interrupt_enable>:
 800019c:	f380 8810 	msr	PRIMASK, r0
 80001a0:	4770      	bx	lr

080001a2 <rt_hw_context_switch>:
 80001a2:	4a46      	ldr	r2, [pc, #280]	@ (80002bc <_update_done+0x12>)
 80001a4:	6813      	ldr	r3, [r2, #0]
 80001a6:	2b01      	cmp	r3, #1
 80001a8:	d004      	beq.n	80001b4 <_reswitch>
 80001aa:	f04f 0301 	mov.w	r3, #1
 80001ae:	6013      	str	r3, [r2, #0]
 80001b0:	4a43      	ldr	r2, [pc, #268]	@ (80002c0 <_update_done+0x16>)
 80001b2:	6010      	str	r0, [r2, #0]

080001b4 <_reswitch>:
 80001b4:	4a43      	ldr	r2, [pc, #268]	@ (80002c4 <_update_done+0x1a>)
 80001b6:	6011      	str	r1, [r2, #0]
 80001b8:	4843      	ldr	r0, [pc, #268]	@ (80002c8 <_update_done+0x1e>)
 80001ba:	f04f 5180 	mov.w	r1, #268435456	@ 0x10000000
 80001be:	6001      	str	r1, [r0, #0]
 80001c0:	4770      	bx	lr

080001c2 <PendSV_Handler>:
 80001c2:	f3ef 8210 	mrs	r2, PRIMASK
 80001c6:	b672      	cpsid	i
 80001c8:	483c      	ldr	r0, [pc, #240]	@ (80002bc <_update_done+0x12>)
 80001ca:	6801      	ldr	r1, [r0, #0]
 80001cc:	b351      	cbz	r1, 8000224 <pendsv_exit>
 80001ce:	f04f 0100 	mov.w	r1, #0
 80001d2:	6001      	str	r1, [r0, #0]
 80001d4:	483a      	ldr	r0, [pc, #232]	@ (80002c0 <_update_done+0x16>)
 80001d6:	6801      	ldr	r1, [r0, #0]
 80001d8:	b191      	cbz	r1, 8000200 <switch_to_thread>
 80001da:	f3ef 8109 	mrs	r1, PSP
 80001de:	f01e 0f10 	tst.w	lr, #16
 80001e2:	bf08      	it	eq
 80001e4:	ed21 8b10 	vstmdbeq	r1!, {d8-d15}
 80001e8:	e921 0ff0 	stmdb	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80001ec:	f04f 0400 	mov.w	r4, #0
 80001f0:	f01e 0f10 	tst.w	lr, #16
 80001f4:	bf08      	it	eq
 80001f6:	2401      	moveq	r4, #1
 80001f8:	f841 4d04 	str.w	r4, [r1, #-4]!
 80001fc:	6800      	ldr	r0, [r0, #0]
 80001fe:	6001      	str	r1, [r0, #0]

08000200 <switch_to_thread>:
 8000200:	4930      	ldr	r1, [pc, #192]	@ (80002c4 <_update_done+0x1a>)
 8000202:	6809      	ldr	r1, [r1, #0]
 8000204:	6809      	ldr	r1, [r1, #0]
 8000206:	c908      	ldmia	r1!, {r3}
 8000208:	e8b1 0ff0 	ldmia.w	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800020c:	2b00      	cmp	r3, #0
 800020e:	bf18      	it	ne
 8000210:	ecb1 8b10 	vldmiane	r1!, {d8-d15}
 8000214:	f381 8809 	msr	PSP, r1
 8000218:	f04e 0e10 	orr.w	lr, lr, #16
 800021c:	2b00      	cmp	r3, #0
 800021e:	bf18      	it	ne
 8000220:	f02e 0e10 	bicne.w	lr, lr, #16

08000224 <pendsv_exit>:
 8000224:	f382 8810 	msr	PRIMASK, r2
 8000228:	f04e 0e04 	orr.w	lr, lr, #4
 800022c:	4770      	bx	lr

0800022e <rt_hw_context_switch_to>:
 800022e:	4925      	ldr	r1, [pc, #148]	@ (80002c4 <_update_done+0x1a>)
 8000230:	6008      	str	r0, [r1, #0]
 8000232:	f3ef 8214 	mrs	r2, CONTROL
 8000236:	f022 0204 	bic.w	r2, r2, #4
 800023a:	f382 8814 	msr	CONTROL, r2
 800023e:	4920      	ldr	r1, [pc, #128]	@ (80002c0 <_update_done+0x16>)
 8000240:	f04f 0000 	mov.w	r0, #0
 8000244:	6008      	str	r0, [r1, #0]
 8000246:	491d      	ldr	r1, [pc, #116]	@ (80002bc <_update_done+0x12>)
 8000248:	f04f 0001 	mov.w	r0, #1
 800024c:	6008      	str	r0, [r1, #0]
 800024e:	481f      	ldr	r0, [pc, #124]	@ (80002cc <_update_done+0x22>)
 8000250:	491f      	ldr	r1, [pc, #124]	@ (80002d0 <_update_done+0x26>)
 8000252:	f8d0 2000 	ldr.w	r2, [r0]
 8000256:	ea41 0102 	orr.w	r1, r1, r2
 800025a:	6001      	str	r1, [r0, #0]
 800025c:	481a      	ldr	r0, [pc, #104]	@ (80002c8 <_update_done+0x1e>)
 800025e:	f04f 5180 	mov.w	r1, #268435456	@ 0x10000000
 8000262:	6001      	str	r1, [r0, #0]
 8000264:	481b      	ldr	r0, [pc, #108]	@ (80002d4 <_update_done+0x2a>)
 8000266:	6800      	ldr	r0, [r0, #0]
 8000268:	6800      	ldr	r0, [r0, #0]
 800026a:	bf00      	nop
 800026c:	f380 8808 	msr	MSP, r0
 8000270:	b661      	cpsie	f
 8000272:	b662      	cpsie	i
 8000274:	f3bf 8f4f 	dsb	sy
 8000278:	f3bf 8f6f 	isb	sy

0800027c <rt_hw_interrupt_thread_switch>:
 800027c:	4770      	bx	lr
 800027e:	bf00      	nop

08000280 <HardFault_Handler>:
 8000280:	f3ef 8008 	mrs	r0, MSP
 8000284:	f01e 0f04 	tst.w	lr, #4
 8000288:	d001      	beq.n	800028e <_get_sp_done>
 800028a:	f3ef 8009 	mrs	r0, PSP

0800028e <_get_sp_done>:
 800028e:	e920 0ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000292:	f840 ed04 	str.w	lr, [r0, #-4]!
 8000296:	f840 ed04 	str.w	lr, [r0, #-4]!
 800029a:	f01e 0f04 	tst.w	lr, #4
 800029e:	d002      	beq.n	80002a6 <_update_msp>
 80002a0:	f380 8809 	msr	PSP, r0
 80002a4:	e001      	b.n	80002aa <_update_done>

080002a6 <_update_msp>:
 80002a6:	f380 8808 	msr	MSP, r0

080002aa <_update_done>:
 80002aa:	b500      	push	{lr}
 80002ac:	f000 fc0e 	bl	8000acc <rt_hw_hard_fault_exception>
 80002b0:	f85d eb04 	ldr.w	lr, [sp], #4
 80002b4:	f04e 0e04 	orr.w	lr, lr, #4
 80002b8:	4770      	bx	lr
 80002ba:	0000      	.short	0x0000
 80002bc:	20000114 	.word	0x20000114
 80002c0:	2000010c 	.word	0x2000010c
 80002c4:	20000110 	.word	0x20000110
 80002c8:	e000ed04 	.word	0xe000ed04
 80002cc:	e000ed20 	.word	0xe000ed20
 80002d0:	ffff0000 	.word	0xffff0000
 80002d4:	e000ed08 	.word	0xe000ed08

080002d8 <deregister_tm_clones>:
 80002d8:	4803      	ldr	r0, [pc, #12]	@ (80002e8 <deregister_tm_clones+0x10>)
 80002da:	4b04      	ldr	r3, [pc, #16]	@ (80002ec <deregister_tm_clones+0x14>)
 80002dc:	4283      	cmp	r3, r0
 80002de:	d002      	beq.n	80002e6 <deregister_tm_clones+0xe>
 80002e0:	4b03      	ldr	r3, [pc, #12]	@ (80002f0 <deregister_tm_clones+0x18>)
 80002e2:	b103      	cbz	r3, 80002e6 <deregister_tm_clones+0xe>
 80002e4:	4718      	bx	r3
 80002e6:	4770      	bx	lr
 80002e8:	20000058 	.word	0x20000058
 80002ec:	20000058 	.word	0x20000058
 80002f0:	00000000 	.word	0x00000000

080002f4 <register_tm_clones>:
 80002f4:	4805      	ldr	r0, [pc, #20]	@ (800030c <register_tm_clones+0x18>)
 80002f6:	4b06      	ldr	r3, [pc, #24]	@ (8000310 <register_tm_clones+0x1c>)
 80002f8:	1a1b      	subs	r3, r3, r0
 80002fa:	0fd9      	lsrs	r1, r3, #31
 80002fc:	eb01 01a3 	add.w	r1, r1, r3, asr #2
 8000300:	1049      	asrs	r1, r1, #1
 8000302:	d002      	beq.n	800030a <register_tm_clones+0x16>
 8000304:	4b03      	ldr	r3, [pc, #12]	@ (8000314 <register_tm_clones+0x20>)
 8000306:	b103      	cbz	r3, 800030a <register_tm_clones+0x16>
 8000308:	4718      	bx	r3
 800030a:	4770      	bx	lr
 800030c:	20000058 	.word	0x20000058
 8000310:	20000058 	.word	0x20000058
 8000314:	00000000 	.word	0x00000000

08000318 <__do_global_dtors_aux>:
 8000318:	b510      	push	{r4, lr}
 800031a:	4c06      	ldr	r4, [pc, #24]	@ (8000334 <__do_global_dtors_aux+0x1c>)
 800031c:	7823      	ldrb	r3, [r4, #0]
 800031e:	b943      	cbnz	r3, 8000332 <__do_global_dtors_aux+0x1a>
 8000320:	f7ff ffda 	bl	80002d8 <deregister_tm_clones>
 8000324:	4b04      	ldr	r3, [pc, #16]	@ (8000338 <__do_global_dtors_aux+0x20>)
 8000326:	b113      	cbz	r3, 800032e <__do_global_dtors_aux+0x16>
 8000328:	4804      	ldr	r0, [pc, #16]	@ (800033c <__do_global_dtors_aux+0x24>)
 800032a:	f3af 8000 	nop.w
 800032e:	2301      	movs	r3, #1
 8000330:	7023      	strb	r3, [r4, #0]
 8000332:	bd10      	pop	{r4, pc}
 8000334:	20000058 	.word	0x20000058
 8000338:	00000000 	.word	0x00000000
 800033c:	08002cd0 	.word	0x08002cd0

08000340 <frame_dummy>:
 8000340:	b508      	push	{r3, lr}
 8000342:	4b05      	ldr	r3, [pc, #20]	@ (8000358 <frame_dummy+0x18>)
 8000344:	b11b      	cbz	r3, 800034e <frame_dummy+0xe>
 8000346:	4905      	ldr	r1, [pc, #20]	@ (800035c <frame_dummy+0x1c>)
 8000348:	4805      	ldr	r0, [pc, #20]	@ (8000360 <frame_dummy+0x20>)
 800034a:	f3af 8000 	nop.w
 800034e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000352:	f7ff bfcf 	b.w	80002f4 <register_tm_clones>
 8000356:	bf00      	nop
 8000358:	00000000 	.word	0x00000000
 800035c:	2000005c 	.word	0x2000005c
 8000360:	08002cd0 	.word	0x08002cd0

08000364 <__libc_init_array>:
 8000364:	b570      	push	{r4, r5, r6, lr}
 8000366:	4b0d      	ldr	r3, [pc, #52]	@ (800039c <__libc_init_array+0x38>)
 8000368:	4d0d      	ldr	r5, [pc, #52]	@ (80003a0 <__libc_init_array+0x3c>)
 800036a:	1b5b      	subs	r3, r3, r5
 800036c:	109c      	asrs	r4, r3, #2
 800036e:	2600      	movs	r6, #0
 8000370:	42a6      	cmp	r6, r4
 8000372:	d109      	bne.n	8000388 <__libc_init_array+0x24>
 8000374:	f002 fcac 	bl	8002cd0 <_init>
 8000378:	4d0a      	ldr	r5, [pc, #40]	@ (80003a4 <__libc_init_array+0x40>)
 800037a:	4b0b      	ldr	r3, [pc, #44]	@ (80003a8 <__libc_init_array+0x44>)
 800037c:	1b5b      	subs	r3, r3, r5
 800037e:	109c      	asrs	r4, r3, #2
 8000380:	2600      	movs	r6, #0
 8000382:	42a6      	cmp	r6, r4
 8000384:	d105      	bne.n	8000392 <__libc_init_array+0x2e>
 8000386:	bd70      	pop	{r4, r5, r6, pc}
 8000388:	f855 3b04 	ldr.w	r3, [r5], #4
 800038c:	4798      	blx	r3
 800038e:	3601      	adds	r6, #1
 8000390:	e7ee      	b.n	8000370 <__libc_init_array+0xc>
 8000392:	f855 3b04 	ldr.w	r3, [r5], #4
 8000396:	4798      	blx	r3
 8000398:	3601      	adds	r6, #1
 800039a:	e7f2      	b.n	8000382 <__libc_init_array+0x1e>
 800039c:	08002ec8 	.word	0x08002ec8
 80003a0:	08002ec8 	.word	0x08002ec8
 80003a4:	08002ec8 	.word	0x08002ec8
 80003a8:	08002ecc 	.word	0x08002ecc

080003ac <dma2_usart1_rx_init>:
 80003ac:	b480      	push	{r7}
 80003ae:	af00      	add	r7, sp, #0
 80003b0:	4b18      	ldr	r3, [pc, #96]	@ (8000414 <dma2_usart1_rx_init+0x68>)
 80003b2:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80003b4:	4a17      	ldr	r2, [pc, #92]	@ (8000414 <dma2_usart1_rx_init+0x68>)
 80003b6:	f443 0380 	orr.w	r3, r3, #4194304	@ 0x400000
 80003ba:	6313      	str	r3, [r2, #48]	@ 0x30
 80003bc:	4b16      	ldr	r3, [pc, #88]	@ (8000418 <dma2_usart1_rx_init+0x6c>)
 80003be:	2200      	movs	r2, #0
 80003c0:	601a      	str	r2, [r3, #0]
 80003c2:	bf00      	nop
 80003c4:	4b14      	ldr	r3, [pc, #80]	@ (8000418 <dma2_usart1_rx_init+0x6c>)
 80003c6:	681b      	ldr	r3, [r3, #0]
 80003c8:	f003 0301 	and.w	r3, r3, #1
 80003cc:	2b00      	cmp	r3, #0
 80003ce:	d1f9      	bne.n	80003c4 <dma2_usart1_rx_init+0x18>
 80003d0:	4b11      	ldr	r3, [pc, #68]	@ (8000418 <dma2_usart1_rx_init+0x6c>)
 80003d2:	4a12      	ldr	r2, [pc, #72]	@ (800041c <dma2_usart1_rx_init+0x70>)
 80003d4:	609a      	str	r2, [r3, #8]
 80003d6:	4b10      	ldr	r3, [pc, #64]	@ (8000418 <dma2_usart1_rx_init+0x6c>)
 80003d8:	4a11      	ldr	r2, [pc, #68]	@ (8000420 <dma2_usart1_rx_init+0x74>)
 80003da:	60da      	str	r2, [r3, #12]
 80003dc:	4b0e      	ldr	r3, [pc, #56]	@ (8000418 <dma2_usart1_rx_init+0x6c>)
 80003de:	2240      	movs	r2, #64	@ 0x40
 80003e0:	605a      	str	r2, [r3, #4]
 80003e2:	4b0d      	ldr	r3, [pc, #52]	@ (8000418 <dma2_usart1_rx_init+0x6c>)
 80003e4:	681a      	ldr	r2, [r3, #0]
 80003e6:	490c      	ldr	r1, [pc, #48]	@ (8000418 <dma2_usart1_rx_init+0x6c>)
 80003e8:	4b0e      	ldr	r3, [pc, #56]	@ (8000424 <dma2_usart1_rx_init+0x78>)
 80003ea:	4013      	ands	r3, r2
 80003ec:	600b      	str	r3, [r1, #0]
 80003ee:	4b0a      	ldr	r3, [pc, #40]	@ (8000418 <dma2_usart1_rx_init+0x6c>)
 80003f0:	681b      	ldr	r3, [r3, #0]
 80003f2:	4a09      	ldr	r2, [pc, #36]	@ (8000418 <dma2_usart1_rx_init+0x6c>)
 80003f4:	f043 6300 	orr.w	r3, r3, #134217728	@ 0x8000000
 80003f8:	f443 63a0 	orr.w	r3, r3, #1280	@ 0x500
 80003fc:	6013      	str	r3, [r2, #0]
 80003fe:	4b06      	ldr	r3, [pc, #24]	@ (8000418 <dma2_usart1_rx_init+0x6c>)
 8000400:	681b      	ldr	r3, [r3, #0]
 8000402:	4a05      	ldr	r2, [pc, #20]	@ (8000418 <dma2_usart1_rx_init+0x6c>)
 8000404:	f043 0301 	orr.w	r3, r3, #1
 8000408:	6013      	str	r3, [r2, #0]
 800040a:	bf00      	nop
 800040c:	46bd      	mov	sp, r7
 800040e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000412:	4770      	bx	lr
 8000414:	40023800 	.word	0x40023800
 8000418:	40026440 	.word	0x40026440
 800041c:	40011004 	.word	0x40011004
 8000420:	200000bc 	.word	0x200000bc
 8000424:	f1ff80bf 	.word	0xf1ff80bf

08000428 <GPIOA_Init>:
 8000428:	b480      	push	{r7}
 800042a:	af00      	add	r7, sp, #0
 800042c:	4b1a      	ldr	r3, [pc, #104]	@ (8000498 <GPIOA_Init+0x70>)
 800042e:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8000430:	4a19      	ldr	r2, [pc, #100]	@ (8000498 <GPIOA_Init+0x70>)
 8000432:	f043 0301 	orr.w	r3, r3, #1
 8000436:	6313      	str	r3, [r2, #48]	@ 0x30
 8000438:	4b18      	ldr	r3, [pc, #96]	@ (800049c <GPIOA_Init+0x74>)
 800043a:	681b      	ldr	r3, [r3, #0]
 800043c:	4a17      	ldr	r2, [pc, #92]	@ (800049c <GPIOA_Init+0x74>)
 800043e:	f023 03f3 	bic.w	r3, r3, #243	@ 0xf3
 8000442:	6013      	str	r3, [r2, #0]
 8000444:	4b15      	ldr	r3, [pc, #84]	@ (800049c <GPIOA_Init+0x74>)
 8000446:	681b      	ldr	r3, [r3, #0]
 8000448:	4a14      	ldr	r2, [pc, #80]	@ (800049c <GPIOA_Init+0x74>)
 800044a:	f043 0351 	orr.w	r3, r3, #81	@ 0x51
 800044e:	6013      	str	r3, [r2, #0]
 8000450:	4b12      	ldr	r3, [pc, #72]	@ (800049c <GPIOA_Init+0x74>)
 8000452:	685b      	ldr	r3, [r3, #4]
 8000454:	4a11      	ldr	r2, [pc, #68]	@ (800049c <GPIOA_Init+0x74>)
 8000456:	f023 030d 	bic.w	r3, r3, #13
 800045a:	6053      	str	r3, [r2, #4]
 800045c:	4b0f      	ldr	r3, [pc, #60]	@ (800049c <GPIOA_Init+0x74>)
 800045e:	689b      	ldr	r3, [r3, #8]
 8000460:	4a0e      	ldr	r2, [pc, #56]	@ (800049c <GPIOA_Init+0x74>)
 8000462:	f023 03f3 	bic.w	r3, r3, #243	@ 0xf3
 8000466:	6093      	str	r3, [r2, #8]
 8000468:	4b0c      	ldr	r3, [pc, #48]	@ (800049c <GPIOA_Init+0x74>)
 800046a:	689b      	ldr	r3, [r3, #8]
 800046c:	4a0b      	ldr	r2, [pc, #44]	@ (800049c <GPIOA_Init+0x74>)
 800046e:	f043 0351 	orr.w	r3, r3, #81	@ 0x51
 8000472:	6093      	str	r3, [r2, #8]
 8000474:	4b09      	ldr	r3, [pc, #36]	@ (800049c <GPIOA_Init+0x74>)
 8000476:	68db      	ldr	r3, [r3, #12]
 8000478:	4a08      	ldr	r2, [pc, #32]	@ (800049c <GPIOA_Init+0x74>)
 800047a:	f023 03f3 	bic.w	r3, r3, #243	@ 0xf3
 800047e:	60d3      	str	r3, [r2, #12]
 8000480:	4b06      	ldr	r3, [pc, #24]	@ (800049c <GPIOA_Init+0x74>)
 8000482:	68db      	ldr	r3, [r3, #12]
 8000484:	4a05      	ldr	r2, [pc, #20]	@ (800049c <GPIOA_Init+0x74>)
 8000486:	f043 0351 	orr.w	r3, r3, #81	@ 0x51
 800048a:	60d3      	str	r3, [r2, #12]
 800048c:	bf00      	nop
 800048e:	46bd      	mov	sp, r7
 8000490:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000494:	4770      	bx	lr
 8000496:	bf00      	nop
 8000498:	40023800 	.word	0x40023800
 800049c:	40020000 	.word	0x40020000

080004a0 <LED_OFF>:
 80004a0:	b480      	push	{r7}
 80004a2:	b083      	sub	sp, #12
 80004a4:	af00      	add	r7, sp, #0
 80004a6:	4603      	mov	r3, r0
 80004a8:	71fb      	strb	r3, [r7, #7]
 80004aa:	4b08      	ldr	r3, [pc, #32]	@ (80004cc <LED_OFF+0x2c>)
 80004ac:	695b      	ldr	r3, [r3, #20]
 80004ae:	79fa      	ldrb	r2, [r7, #7]
 80004b0:	2101      	movs	r1, #1
 80004b2:	fa01 f202 	lsl.w	r2, r1, r2
 80004b6:	4611      	mov	r1, r2
 80004b8:	4a04      	ldr	r2, [pc, #16]	@ (80004cc <LED_OFF+0x2c>)
 80004ba:	430b      	orrs	r3, r1
 80004bc:	6153      	str	r3, [r2, #20]
 80004be:	bf00      	nop
 80004c0:	370c      	adds	r7, #12
 80004c2:	46bd      	mov	sp, r7
 80004c4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004c8:	4770      	bx	lr
 80004ca:	bf00      	nop
 80004cc:	40020000 	.word	0x40020000

080004d0 <LED_ON>:
 80004d0:	b480      	push	{r7}
 80004d2:	b083      	sub	sp, #12
 80004d4:	af00      	add	r7, sp, #0
 80004d6:	4603      	mov	r3, r0
 80004d8:	71fb      	strb	r3, [r7, #7]
 80004da:	4b08      	ldr	r3, [pc, #32]	@ (80004fc <LED_ON+0x2c>)
 80004dc:	695b      	ldr	r3, [r3, #20]
 80004de:	79fa      	ldrb	r2, [r7, #7]
 80004e0:	2101      	movs	r1, #1
 80004e2:	fa01 f202 	lsl.w	r2, r1, r2
 80004e6:	43d2      	mvns	r2, r2
 80004e8:	4611      	mov	r1, r2
 80004ea:	4a04      	ldr	r2, [pc, #16]	@ (80004fc <LED_ON+0x2c>)
 80004ec:	400b      	ands	r3, r1
 80004ee:	6153      	str	r3, [r2, #20]
 80004f0:	bf00      	nop
 80004f2:	370c      	adds	r7, #12
 80004f4:	46bd      	mov	sp, r7
 80004f6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004fa:	4770      	bx	lr
 80004fc:	40020000 	.word	0x40020000

08000500 <led_display>:
 8000500:	b580      	push	{r7, lr}
 8000502:	b082      	sub	sp, #8
 8000504:	af00      	add	r7, sp, #0
 8000506:	4603      	mov	r3, r0
 8000508:	71fb      	strb	r3, [r7, #7]
 800050a:	79fb      	ldrb	r3, [r7, #7]
 800050c:	2b03      	cmp	r3, #3
 800050e:	d01a      	beq.n	8000546 <led_display+0x46>
 8000510:	2b03      	cmp	r3, #3
 8000512:	dc22      	bgt.n	800055a <led_display+0x5a>
 8000514:	2b01      	cmp	r3, #1
 8000516:	d002      	beq.n	800051e <led_display+0x1e>
 8000518:	2b02      	cmp	r3, #2
 800051a:	d00a      	beq.n	8000532 <led_display+0x32>
 800051c:	e01d      	b.n	800055a <led_display+0x5a>
 800051e:	2000      	movs	r0, #0
 8000520:	f7ff ffd6 	bl	80004d0 <LED_ON>
 8000524:	2002      	movs	r0, #2
 8000526:	f7ff ffbb 	bl	80004a0 <LED_OFF>
 800052a:	2003      	movs	r0, #3
 800052c:	f7ff ffb8 	bl	80004a0 <LED_OFF>
 8000530:	e01d      	b.n	800056e <led_display+0x6e>
 8000532:	2002      	movs	r0, #2
 8000534:	f7ff ffcc 	bl	80004d0 <LED_ON>
 8000538:	2000      	movs	r0, #0
 800053a:	f7ff ffb1 	bl	80004a0 <LED_OFF>
 800053e:	2003      	movs	r0, #3
 8000540:	f7ff ffae 	bl	80004a0 <LED_OFF>
 8000544:	e013      	b.n	800056e <led_display+0x6e>
 8000546:	2003      	movs	r0, #3
 8000548:	f7ff ffc2 	bl	80004d0 <LED_ON>
 800054c:	2002      	movs	r0, #2
 800054e:	f7ff ffa7 	bl	80004a0 <LED_OFF>
 8000552:	2000      	movs	r0, #0
 8000554:	f7ff ffa4 	bl	80004a0 <LED_OFF>
 8000558:	e009      	b.n	800056e <led_display+0x6e>
 800055a:	2000      	movs	r0, #0
 800055c:	f7ff ffa0 	bl	80004a0 <LED_OFF>
 8000560:	2002      	movs	r0, #2
 8000562:	f7ff ff9d 	bl	80004a0 <LED_OFF>
 8000566:	2003      	movs	r0, #3
 8000568:	f7ff ff9a 	bl	80004a0 <LED_OFF>
 800056c:	bf00      	nop
 800056e:	bf00      	nop
 8000570:	3708      	adds	r7, #8
 8000572:	46bd      	mov	sp, r7
 8000574:	bd80      	pop	{r7, pc}
	...

08000578 <led_task>:
 8000578:	b580      	push	{r7, lr}
 800057a:	b082      	sub	sp, #8
 800057c:	af00      	add	r7, sp, #0
 800057e:	6078      	str	r0, [r7, #4]
 8000580:	4b0b      	ldr	r3, [pc, #44]	@ (80005b0 <led_task+0x38>)
 8000582:	781b      	ldrb	r3, [r3, #0]
 8000584:	4618      	mov	r0, r3
 8000586:	f7ff ffbb 	bl	8000500 <led_display>
 800058a:	4b09      	ldr	r3, [pc, #36]	@ (80005b0 <led_task+0x38>)
 800058c:	781b      	ldrb	r3, [r3, #0]
 800058e:	3301      	adds	r3, #1
 8000590:	b2da      	uxtb	r2, r3
 8000592:	4b07      	ldr	r3, [pc, #28]	@ (80005b0 <led_task+0x38>)
 8000594:	701a      	strb	r2, [r3, #0]
 8000596:	4b06      	ldr	r3, [pc, #24]	@ (80005b0 <led_task+0x38>)
 8000598:	781b      	ldrb	r3, [r3, #0]
 800059a:	2b03      	cmp	r3, #3
 800059c:	d902      	bls.n	80005a4 <led_task+0x2c>
 800059e:	4b04      	ldr	r3, [pc, #16]	@ (80005b0 <led_task+0x38>)
 80005a0:	2200      	movs	r2, #0
 80005a2:	701a      	strb	r2, [r3, #0]
 80005a4:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
 80005a8:	f002 f878 	bl	800269c <rt_thread_delay>
 80005ac:	e7e8      	b.n	8000580 <led_task+0x8>
 80005ae:	bf00      	nop
 80005b0:	20000074 	.word	0x20000074

080005b4 <led_task_init>:
 80005b4:	b580      	push	{r7, lr}
 80005b6:	b084      	sub	sp, #16
 80005b8:	af02      	add	r7, sp, #8
 80005ba:	2314      	movs	r3, #20
 80005bc:	9301      	str	r3, [sp, #4]
 80005be:	230a      	movs	r3, #10
 80005c0:	9300      	str	r3, [sp, #0]
 80005c2:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 80005c6:	2200      	movs	r2, #0
 80005c8:	4907      	ldr	r1, [pc, #28]	@ (80005e8 <led_task_init+0x34>)
 80005ca:	4808      	ldr	r0, [pc, #32]	@ (80005ec <led_task_init+0x38>)
 80005cc:	f002 f806 	bl	80025dc <rt_thread_create>
 80005d0:	6078      	str	r0, [r7, #4]
 80005d2:	687b      	ldr	r3, [r7, #4]
 80005d4:	2b00      	cmp	r3, #0
 80005d6:	d002      	beq.n	80005de <led_task_init+0x2a>
 80005d8:	6878      	ldr	r0, [r7, #4]
 80005da:	f001 ffdf 	bl	800259c <rt_thread_startup>
 80005de:	bf00      	nop
 80005e0:	3708      	adds	r7, #8
 80005e2:	46bd      	mov	sp, r7
 80005e4:	bd80      	pop	{r7, pc}
 80005e6:	bf00      	nop
 80005e8:	08000579 	.word	0x08000579
 80005ec:	08002ce8 	.word	0x08002ce8

080005f0 <TIM1_UP_TIM10_IRQHandler>:
 80005f0:	b480      	push	{r7}
 80005f2:	af00      	add	r7, sp, #0
 80005f4:	4b0f      	ldr	r3, [pc, #60]	@ (8000634 <TIM1_UP_TIM10_IRQHandler+0x44>)
 80005f6:	691b      	ldr	r3, [r3, #16]
 80005f8:	f003 0301 	and.w	r3, r3, #1
 80005fc:	2b00      	cmp	r3, #0
 80005fe:	d014      	beq.n	800062a <TIM1_UP_TIM10_IRQHandler+0x3a>
 8000600:	4b0c      	ldr	r3, [pc, #48]	@ (8000634 <TIM1_UP_TIM10_IRQHandler+0x44>)
 8000602:	691b      	ldr	r3, [r3, #16]
 8000604:	4a0b      	ldr	r2, [pc, #44]	@ (8000634 <TIM1_UP_TIM10_IRQHandler+0x44>)
 8000606:	f023 0301 	bic.w	r3, r3, #1
 800060a:	6113      	str	r3, [r2, #16]
 800060c:	4b0a      	ldr	r3, [pc, #40]	@ (8000638 <TIM1_UP_TIM10_IRQHandler+0x48>)
 800060e:	881b      	ldrh	r3, [r3, #0]
 8000610:	3301      	adds	r3, #1
 8000612:	b29a      	uxth	r2, r3
 8000614:	4b08      	ldr	r3, [pc, #32]	@ (8000638 <TIM1_UP_TIM10_IRQHandler+0x48>)
 8000616:	801a      	strh	r2, [r3, #0]
 8000618:	4b08      	ldr	r3, [pc, #32]	@ (800063c <TIM1_UP_TIM10_IRQHandler+0x4c>)
 800061a:	695b      	ldr	r3, [r3, #20]
 800061c:	085b      	lsrs	r3, r3, #1
 800061e:	b2db      	uxtb	r3, r3
 8000620:	f003 0301 	and.w	r3, r3, #1
 8000624:	b2da      	uxtb	r2, r3
 8000626:	4b06      	ldr	r3, [pc, #24]	@ (8000640 <TIM1_UP_TIM10_IRQHandler+0x50>)
 8000628:	701a      	strb	r2, [r3, #0]
 800062a:	bf00      	nop
 800062c:	46bd      	mov	sp, r7
 800062e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000632:	4770      	bx	lr
 8000634:	40014400 	.word	0x40014400
 8000638:	20000076 	.word	0x20000076
 800063c:	40020000 	.word	0x40020000
 8000640:	20000078 	.word	0x20000078

08000644 <usart1_init>:
 8000644:	b480      	push	{r7}
 8000646:	af00      	add	r7, sp, #0
 8000648:	4b26      	ldr	r3, [pc, #152]	@ (80006e4 <usart1_init+0xa0>)
 800064a:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800064c:	4a25      	ldr	r2, [pc, #148]	@ (80006e4 <usart1_init+0xa0>)
 800064e:	f043 0302 	orr.w	r3, r3, #2
 8000652:	6313      	str	r3, [r2, #48]	@ 0x30
 8000654:	4b23      	ldr	r3, [pc, #140]	@ (80006e4 <usart1_init+0xa0>)
 8000656:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8000658:	4a22      	ldr	r2, [pc, #136]	@ (80006e4 <usart1_init+0xa0>)
 800065a:	f043 0310 	orr.w	r3, r3, #16
 800065e:	6453      	str	r3, [r2, #68]	@ 0x44
 8000660:	4b21      	ldr	r3, [pc, #132]	@ (80006e8 <usart1_init+0xa4>)
 8000662:	681b      	ldr	r3, [r3, #0]
 8000664:	4a20      	ldr	r2, [pc, #128]	@ (80006e8 <usart1_init+0xa4>)
 8000666:	f423 4370 	bic.w	r3, r3, #61440	@ 0xf000
 800066a:	6013      	str	r3, [r2, #0]
 800066c:	4b1e      	ldr	r3, [pc, #120]	@ (80006e8 <usart1_init+0xa4>)
 800066e:	681b      	ldr	r3, [r3, #0]
 8000670:	4a1d      	ldr	r2, [pc, #116]	@ (80006e8 <usart1_init+0xa4>)
 8000672:	f443 4320 	orr.w	r3, r3, #40960	@ 0xa000
 8000676:	6013      	str	r3, [r2, #0]
 8000678:	4b1b      	ldr	r3, [pc, #108]	@ (80006e8 <usart1_init+0xa4>)
 800067a:	6a1b      	ldr	r3, [r3, #32]
 800067c:	4a1a      	ldr	r2, [pc, #104]	@ (80006e8 <usart1_init+0xa4>)
 800067e:	f023 437f 	bic.w	r3, r3, #4278190080	@ 0xff000000
 8000682:	6213      	str	r3, [r2, #32]
 8000684:	4b18      	ldr	r3, [pc, #96]	@ (80006e8 <usart1_init+0xa4>)
 8000686:	6a1b      	ldr	r3, [r3, #32]
 8000688:	4a17      	ldr	r2, [pc, #92]	@ (80006e8 <usart1_init+0xa4>)
 800068a:	f043 43ee 	orr.w	r3, r3, #1996488704	@ 0x77000000
 800068e:	6213      	str	r3, [r2, #32]
 8000690:	4b16      	ldr	r3, [pc, #88]	@ (80006ec <usart1_init+0xa8>)
 8000692:	f641 524c 	movw	r2, #7500	@ 0x1d4c
 8000696:	609a      	str	r2, [r3, #8]
 8000698:	4b14      	ldr	r3, [pc, #80]	@ (80006ec <usart1_init+0xa8>)
 800069a:	68db      	ldr	r3, [r3, #12]
 800069c:	4a13      	ldr	r2, [pc, #76]	@ (80006ec <usart1_init+0xa8>)
 800069e:	f423 5340 	bic.w	r3, r3, #12288	@ 0x3000
 80006a2:	f023 031c 	bic.w	r3, r3, #28
 80006a6:	60d3      	str	r3, [r2, #12]
 80006a8:	4b10      	ldr	r3, [pc, #64]	@ (80006ec <usart1_init+0xa8>)
 80006aa:	68db      	ldr	r3, [r3, #12]
 80006ac:	4a0f      	ldr	r2, [pc, #60]	@ (80006ec <usart1_init+0xa8>)
 80006ae:	f443 5300 	orr.w	r3, r3, #8192	@ 0x2000
 80006b2:	f043 031c 	orr.w	r3, r3, #28
 80006b6:	60d3      	str	r3, [r2, #12]
 80006b8:	4b0c      	ldr	r3, [pc, #48]	@ (80006ec <usart1_init+0xa8>)
 80006ba:	695b      	ldr	r3, [r3, #20]
 80006bc:	4a0b      	ldr	r2, [pc, #44]	@ (80006ec <usart1_init+0xa8>)
 80006be:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 80006c2:	6153      	str	r3, [r2, #20]
 80006c4:	4b0a      	ldr	r3, [pc, #40]	@ (80006f0 <usart1_init+0xac>)
 80006c6:	685b      	ldr	r3, [r3, #4]
 80006c8:	4a09      	ldr	r2, [pc, #36]	@ (80006f0 <usart1_init+0xac>)
 80006ca:	f043 0320 	orr.w	r3, r3, #32
 80006ce:	6053      	str	r3, [r2, #4]
 80006d0:	4b07      	ldr	r3, [pc, #28]	@ (80006f0 <usart1_init+0xac>)
 80006d2:	2201      	movs	r2, #1
 80006d4:	f883 2325 	strb.w	r2, [r3, #805]	@ 0x325
 80006d8:	bf00      	nop
 80006da:	46bd      	mov	sp, r7
 80006dc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80006e0:	4770      	bx	lr
 80006e2:	bf00      	nop
 80006e4:	40023800 	.word	0x40023800
 80006e8:	40020400 	.word	0x40020400
 80006ec:	40011000 	.word	0x40011000
 80006f0:	e000e100 	.word	0xe000e100

080006f4 <usart1_send_char>:
 80006f4:	b480      	push	{r7}
 80006f6:	b083      	sub	sp, #12
 80006f8:	af00      	add	r7, sp, #0
 80006fa:	4603      	mov	r3, r0
 80006fc:	71fb      	strb	r3, [r7, #7]
 80006fe:	bf00      	nop
 8000700:	4b07      	ldr	r3, [pc, #28]	@ (8000720 <usart1_send_char+0x2c>)
 8000702:	681b      	ldr	r3, [r3, #0]
 8000704:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8000708:	2b00      	cmp	r3, #0
 800070a:	d0f9      	beq.n	8000700 <usart1_send_char+0xc>
 800070c:	4a04      	ldr	r2, [pc, #16]	@ (8000720 <usart1_send_char+0x2c>)
 800070e:	79fb      	ldrb	r3, [r7, #7]
 8000710:	6053      	str	r3, [r2, #4]
 8000712:	bf00      	nop
 8000714:	370c      	adds	r7, #12
 8000716:	46bd      	mov	sp, r7
 8000718:	f85d 7b04 	ldr.w	r7, [sp], #4
 800071c:	4770      	bx	lr
 800071e:	bf00      	nop
 8000720:	40011000 	.word	0x40011000

08000724 <usart1_send_string>:
 8000724:	b580      	push	{r7, lr}
 8000726:	b082      	sub	sp, #8
 8000728:	af00      	add	r7, sp, #0
 800072a:	6078      	str	r0, [r7, #4]
 800072c:	e006      	b.n	800073c <usart1_send_string+0x18>
 800072e:	687b      	ldr	r3, [r7, #4]
 8000730:	1c5a      	adds	r2, r3, #1
 8000732:	607a      	str	r2, [r7, #4]
 8000734:	781b      	ldrb	r3, [r3, #0]
 8000736:	4618      	mov	r0, r3
 8000738:	f7ff ffdc 	bl	80006f4 <usart1_send_char>
 800073c:	687b      	ldr	r3, [r7, #4]
 800073e:	781b      	ldrb	r3, [r3, #0]
 8000740:	2b00      	cmp	r3, #0
 8000742:	d1f4      	bne.n	800072e <usart1_send_string+0xa>
 8000744:	bf00      	nop
 8000746:	bf00      	nop
 8000748:	3708      	adds	r7, #8
 800074a:	46bd      	mov	sp, r7
 800074c:	bd80      	pop	{r7, pc}
	...

08000750 <USART1_IRQHandler>:
 8000750:	b580      	push	{r7, lr}
 8000752:	b082      	sub	sp, #8
 8000754:	af00      	add	r7, sp, #0
 8000756:	4b17      	ldr	r3, [pc, #92]	@ (80007b4 <USART1_IRQHandler+0x64>)
 8000758:	681b      	ldr	r3, [r3, #0]
 800075a:	f003 0310 	and.w	r3, r3, #16
 800075e:	2b00      	cmp	r3, #0
 8000760:	d024      	beq.n	80007ac <USART1_IRQHandler+0x5c>
 8000762:	4b14      	ldr	r3, [pc, #80]	@ (80007b4 <USART1_IRQHandler+0x64>)
 8000764:	681b      	ldr	r3, [r3, #0]
 8000766:	607b      	str	r3, [r7, #4]
 8000768:	4b12      	ldr	r3, [pc, #72]	@ (80007b4 <USART1_IRQHandler+0x64>)
 800076a:	685b      	ldr	r3, [r3, #4]
 800076c:	607b      	str	r3, [r7, #4]
 800076e:	4b12      	ldr	r3, [pc, #72]	@ (80007b8 <USART1_IRQHandler+0x68>)
 8000770:	681b      	ldr	r3, [r3, #0]
 8000772:	4a11      	ldr	r2, [pc, #68]	@ (80007b8 <USART1_IRQHandler+0x68>)
 8000774:	f023 0301 	bic.w	r3, r3, #1
 8000778:	6013      	str	r3, [r2, #0]
 800077a:	4b0f      	ldr	r3, [pc, #60]	@ (80007b8 <USART1_IRQHandler+0x68>)
 800077c:	685b      	ldr	r3, [r3, #4]
 800077e:	f1c3 0340 	rsb	r3, r3, #64	@ 0x40
 8000782:	4a0e      	ldr	r2, [pc, #56]	@ (80007bc <USART1_IRQHandler+0x6c>)
 8000784:	6013      	str	r3, [r2, #0]
 8000786:	4b0d      	ldr	r3, [pc, #52]	@ (80007bc <USART1_IRQHandler+0x6c>)
 8000788:	681b      	ldr	r3, [r3, #0]
 800078a:	461a      	mov	r2, r3
 800078c:	490c      	ldr	r1, [pc, #48]	@ (80007c0 <USART1_IRQHandler+0x70>)
 800078e:	480d      	ldr	r0, [pc, #52]	@ (80007c4 <USART1_IRQHandler+0x74>)
 8000790:	f002 fa8f 	bl	8002cb2 <memcpy>
 8000794:	4b0c      	ldr	r3, [pc, #48]	@ (80007c8 <USART1_IRQHandler+0x78>)
 8000796:	2201      	movs	r2, #1
 8000798:	701a      	strb	r2, [r3, #0]
 800079a:	4b07      	ldr	r3, [pc, #28]	@ (80007b8 <USART1_IRQHandler+0x68>)
 800079c:	2240      	movs	r2, #64	@ 0x40
 800079e:	605a      	str	r2, [r3, #4]
 80007a0:	4b05      	ldr	r3, [pc, #20]	@ (80007b8 <USART1_IRQHandler+0x68>)
 80007a2:	681b      	ldr	r3, [r3, #0]
 80007a4:	4a04      	ldr	r2, [pc, #16]	@ (80007b8 <USART1_IRQHandler+0x68>)
 80007a6:	f043 0301 	orr.w	r3, r3, #1
 80007aa:	6013      	str	r3, [r2, #0]
 80007ac:	bf00      	nop
 80007ae:	3708      	adds	r7, #8
 80007b0:	46bd      	mov	sp, r7
 80007b2:	bd80      	pop	{r7, pc}
 80007b4:	40011000 	.word	0x40011000
 80007b8:	40026440 	.word	0x40026440
 80007bc:	200000fc 	.word	0x200000fc
 80007c0:	200000bc 	.word	0x200000bc
 80007c4:	2000007c 	.word	0x2000007c
 80007c8:	20000100 	.word	0x20000100

080007cc <usart_task>:
 80007cc:	b580      	push	{r7, lr}
 80007ce:	b084      	sub	sp, #16
 80007d0:	af00      	add	r7, sp, #0
 80007d2:	6078      	str	r0, [r7, #4]
 80007d4:	4b17      	ldr	r3, [pc, #92]	@ (8000834 <usart_task+0x68>)
 80007d6:	781b      	ldrb	r3, [r3, #0]
 80007d8:	3301      	adds	r3, #1
 80007da:	b2da      	uxtb	r2, r3
 80007dc:	4b15      	ldr	r3, [pc, #84]	@ (8000834 <usart_task+0x68>)
 80007de:	701a      	strb	r2, [r3, #0]
 80007e0:	4b14      	ldr	r3, [pc, #80]	@ (8000834 <usart_task+0x68>)
 80007e2:	781b      	ldrb	r3, [r3, #0]
 80007e4:	2b04      	cmp	r3, #4
 80007e6:	d905      	bls.n	80007f4 <usart_task+0x28>
 80007e8:	4813      	ldr	r0, [pc, #76]	@ (8000838 <usart_task+0x6c>)
 80007ea:	f7ff ff9b 	bl	8000724 <usart1_send_string>
 80007ee:	4b11      	ldr	r3, [pc, #68]	@ (8000834 <usart_task+0x68>)
 80007f0:	2200      	movs	r2, #0
 80007f2:	701a      	strb	r2, [r3, #0]
 80007f4:	4b11      	ldr	r3, [pc, #68]	@ (800083c <usart_task+0x70>)
 80007f6:	781b      	ldrb	r3, [r3, #0]
 80007f8:	b2db      	uxtb	r3, r3
 80007fa:	2b00      	cmp	r3, #0
 80007fc:	d016      	beq.n	800082c <usart_task+0x60>
 80007fe:	2300      	movs	r3, #0
 8000800:	81fb      	strh	r3, [r7, #14]
 8000802:	e008      	b.n	8000816 <usart_task+0x4a>
 8000804:	89fb      	ldrh	r3, [r7, #14]
 8000806:	4a0e      	ldr	r2, [pc, #56]	@ (8000840 <usart_task+0x74>)
 8000808:	5cd3      	ldrb	r3, [r2, r3]
 800080a:	4618      	mov	r0, r3
 800080c:	f7ff ff72 	bl	80006f4 <usart1_send_char>
 8000810:	89fb      	ldrh	r3, [r7, #14]
 8000812:	3301      	adds	r3, #1
 8000814:	81fb      	strh	r3, [r7, #14]
 8000816:	89fa      	ldrh	r2, [r7, #14]
 8000818:	4b0a      	ldr	r3, [pc, #40]	@ (8000844 <usart_task+0x78>)
 800081a:	681b      	ldr	r3, [r3, #0]
 800081c:	429a      	cmp	r2, r3
 800081e:	d3f1      	bcc.n	8000804 <usart_task+0x38>
 8000820:	4809      	ldr	r0, [pc, #36]	@ (8000848 <usart_task+0x7c>)
 8000822:	f7ff ff7f 	bl	8000724 <usart1_send_string>
 8000826:	4b05      	ldr	r3, [pc, #20]	@ (800083c <usart_task+0x70>)
 8000828:	2200      	movs	r2, #0
 800082a:	701a      	strb	r2, [r3, #0]
 800082c:	20c8      	movs	r0, #200	@ 0xc8
 800082e:	f001 ff35 	bl	800269c <rt_thread_delay>
 8000832:	e7cf      	b.n	80007d4 <usart_task+0x8>
 8000834:	20000101 	.word	0x20000101
 8000838:	08002cf4 	.word	0x08002cf4
 800083c:	20000100 	.word	0x20000100
 8000840:	2000007c 	.word	0x2000007c
 8000844:	200000fc 	.word	0x200000fc
 8000848:	08002d04 	.word	0x08002d04

0800084c <usart_task_init>:
 800084c:	b580      	push	{r7, lr}
 800084e:	b084      	sub	sp, #16
 8000850:	af02      	add	r7, sp, #8
 8000852:	2314      	movs	r3, #20
 8000854:	9301      	str	r3, [sp, #4]
 8000856:	230a      	movs	r3, #10
 8000858:	9300      	str	r3, [sp, #0]
 800085a:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 800085e:	2200      	movs	r2, #0
 8000860:	4907      	ldr	r1, [pc, #28]	@ (8000880 <usart_task_init+0x34>)
 8000862:	4808      	ldr	r0, [pc, #32]	@ (8000884 <usart_task_init+0x38>)
 8000864:	f001 feba 	bl	80025dc <rt_thread_create>
 8000868:	6078      	str	r0, [r7, #4]
 800086a:	687b      	ldr	r3, [r7, #4]
 800086c:	2b00      	cmp	r3, #0
 800086e:	d002      	beq.n	8000876 <usart_task_init+0x2a>
 8000870:	6878      	ldr	r0, [r7, #4]
 8000872:	f001 fe93 	bl	800259c <rt_thread_startup>
 8000876:	bf00      	nop
 8000878:	3708      	adds	r7, #8
 800087a:	46bd      	mov	sp, r7
 800087c:	bd80      	pop	{r7, pc}
 800087e:	bf00      	nop
 8000880:	080007cd 	.word	0x080007cd
 8000884:	08002d08 	.word	0x08002d08

08000888 <main>:
 8000888:	b580      	push	{r7, lr}
 800088a:	af00      	add	r7, sp, #0
 800088c:	f7ff fe92 	bl	80005b4 <led_task_init>
 8000890:	f7ff ffdc 	bl	800084c <usart_task_init>
 8000894:	2300      	movs	r3, #0
 8000896:	4618      	mov	r0, r3
 8000898:	bd80      	pop	{r7, pc}
	...

0800089c <SystemInit>:
 800089c:	b480      	push	{r7}
 800089e:	af00      	add	r7, sp, #0
 80008a0:	4b2a      	ldr	r3, [pc, #168]	@ (800094c <SystemInit+0xb0>)
 80008a2:	681b      	ldr	r3, [r3, #0]
 80008a4:	4a29      	ldr	r2, [pc, #164]	@ (800094c <SystemInit+0xb0>)
 80008a6:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 80008aa:	6013      	str	r3, [r2, #0]
 80008ac:	bf00      	nop
 80008ae:	4b27      	ldr	r3, [pc, #156]	@ (800094c <SystemInit+0xb0>)
 80008b0:	681b      	ldr	r3, [r3, #0]
 80008b2:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 80008b6:	2b00      	cmp	r3, #0
 80008b8:	d0f9      	beq.n	80008ae <SystemInit+0x12>
 80008ba:	4b25      	ldr	r3, [pc, #148]	@ (8000950 <SystemInit+0xb4>)
 80008bc:	681b      	ldr	r3, [r3, #0]
 80008be:	4a24      	ldr	r2, [pc, #144]	@ (8000950 <SystemInit+0xb4>)
 80008c0:	f023 0307 	bic.w	r3, r3, #7
 80008c4:	6013      	str	r3, [r2, #0]
 80008c6:	4b22      	ldr	r3, [pc, #136]	@ (8000950 <SystemInit+0xb4>)
 80008c8:	681b      	ldr	r3, [r3, #0]
 80008ca:	4a21      	ldr	r2, [pc, #132]	@ (8000950 <SystemInit+0xb4>)
 80008cc:	f043 0302 	orr.w	r3, r3, #2
 80008d0:	6013      	str	r3, [r2, #0]
 80008d2:	4b1e      	ldr	r3, [pc, #120]	@ (800094c <SystemInit+0xb0>)
 80008d4:	689b      	ldr	r3, [r3, #8]
 80008d6:	4a1d      	ldr	r2, [pc, #116]	@ (800094c <SystemInit+0xb0>)
 80008d8:	f423 437c 	bic.w	r3, r3, #64512	@ 0xfc00
 80008dc:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 80008e0:	6093      	str	r3, [r2, #8]
 80008e2:	4b1a      	ldr	r3, [pc, #104]	@ (800094c <SystemInit+0xb0>)
 80008e4:	689b      	ldr	r3, [r3, #8]
 80008e6:	4a19      	ldr	r2, [pc, #100]	@ (800094c <SystemInit+0xb0>)
 80008e8:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
 80008ec:	6093      	str	r3, [r2, #8]
 80008ee:	4b17      	ldr	r3, [pc, #92]	@ (800094c <SystemInit+0xb0>)
 80008f0:	681b      	ldr	r3, [r3, #0]
 80008f2:	4a16      	ldr	r2, [pc, #88]	@ (800094c <SystemInit+0xb0>)
 80008f4:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 80008f8:	6013      	str	r3, [r2, #0]
 80008fa:	4b14      	ldr	r3, [pc, #80]	@ (800094c <SystemInit+0xb0>)
 80008fc:	4a15      	ldr	r2, [pc, #84]	@ (8000954 <SystemInit+0xb8>)
 80008fe:	605a      	str	r2, [r3, #4]
 8000900:	4b12      	ldr	r3, [pc, #72]	@ (800094c <SystemInit+0xb0>)
 8000902:	681b      	ldr	r3, [r3, #0]
 8000904:	4a11      	ldr	r2, [pc, #68]	@ (800094c <SystemInit+0xb0>)
 8000906:	f043 7380 	orr.w	r3, r3, #16777216	@ 0x1000000
 800090a:	6013      	str	r3, [r2, #0]
 800090c:	bf00      	nop
 800090e:	4b0f      	ldr	r3, [pc, #60]	@ (800094c <SystemInit+0xb0>)
 8000910:	681b      	ldr	r3, [r3, #0]
 8000912:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8000916:	2b00      	cmp	r3, #0
 8000918:	d0f9      	beq.n	800090e <SystemInit+0x72>
 800091a:	4b0c      	ldr	r3, [pc, #48]	@ (800094c <SystemInit+0xb0>)
 800091c:	689b      	ldr	r3, [r3, #8]
 800091e:	4a0b      	ldr	r2, [pc, #44]	@ (800094c <SystemInit+0xb0>)
 8000920:	f023 0303 	bic.w	r3, r3, #3
 8000924:	6093      	str	r3, [r2, #8]
 8000926:	4b09      	ldr	r3, [pc, #36]	@ (800094c <SystemInit+0xb0>)
 8000928:	689b      	ldr	r3, [r3, #8]
 800092a:	4a08      	ldr	r2, [pc, #32]	@ (800094c <SystemInit+0xb0>)
 800092c:	f043 0302 	orr.w	r3, r3, #2
 8000930:	6093      	str	r3, [r2, #8]
 8000932:	bf00      	nop
 8000934:	4b05      	ldr	r3, [pc, #20]	@ (800094c <SystemInit+0xb0>)
 8000936:	689b      	ldr	r3, [r3, #8]
 8000938:	f003 030c 	and.w	r3, r3, #12
 800093c:	2b08      	cmp	r3, #8
 800093e:	d1f9      	bne.n	8000934 <SystemInit+0x98>
 8000940:	bf00      	nop
 8000942:	bf00      	nop
 8000944:	46bd      	mov	sp, r7
 8000946:	f85d 7b04 	ldr.w	r7, [sp], #4
 800094a:	4770      	bx	lr
 800094c:	40023800 	.word	0x40023800
 8000950:	40023c00 	.word	0x40023c00
 8000954:	04414819 	.word	0x04414819

08000958 <Systick_Config>:
 8000958:	b480      	push	{r7}
 800095a:	af00      	add	r7, sp, #0
 800095c:	4b0c      	ldr	r3, [pc, #48]	@ (8000990 <Systick_Config+0x38>)
 800095e:	681b      	ldr	r3, [r3, #0]
 8000960:	4a0b      	ldr	r2, [pc, #44]	@ (8000990 <Systick_Config+0x38>)
 8000962:	f023 0307 	bic.w	r3, r3, #7
 8000966:	6013      	str	r3, [r2, #0]
 8000968:	4b09      	ldr	r3, [pc, #36]	@ (8000990 <Systick_Config+0x38>)
 800096a:	2206      	movs	r2, #6
 800096c:	601a      	str	r2, [r3, #0]
 800096e:	4b08      	ldr	r3, [pc, #32]	@ (8000990 <Systick_Config+0x38>)
 8000970:	4a08      	ldr	r2, [pc, #32]	@ (8000994 <Systick_Config+0x3c>)
 8000972:	605a      	str	r2, [r3, #4]
 8000974:	4b06      	ldr	r3, [pc, #24]	@ (8000990 <Systick_Config+0x38>)
 8000976:	2200      	movs	r2, #0
 8000978:	609a      	str	r2, [r3, #8]
 800097a:	4b05      	ldr	r3, [pc, #20]	@ (8000990 <Systick_Config+0x38>)
 800097c:	681b      	ldr	r3, [r3, #0]
 800097e:	4a04      	ldr	r2, [pc, #16]	@ (8000990 <Systick_Config+0x38>)
 8000980:	f043 0301 	orr.w	r3, r3, #1
 8000984:	6013      	str	r3, [r2, #0]
 8000986:	bf00      	nop
 8000988:	46bd      	mov	sp, r7
 800098a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800098e:	4770      	bx	lr
 8000990:	e000e010 	.word	0xe000e010
 8000994:	0001193f 	.word	0x0001193f

08000998 <SysTick_Handler>:
 8000998:	b580      	push	{r7, lr}
 800099a:	af00      	add	r7, sp, #0
 800099c:	4b0f      	ldr	r3, [pc, #60]	@ (80009dc <SysTick_Handler+0x44>)
 800099e:	681b      	ldr	r3, [r3, #0]
 80009a0:	3301      	adds	r3, #1
 80009a2:	4a0e      	ldr	r2, [pc, #56]	@ (80009dc <SysTick_Handler+0x44>)
 80009a4:	6013      	str	r3, [r2, #0]
 80009a6:	4b0d      	ldr	r3, [pc, #52]	@ (80009dc <SysTick_Handler+0x44>)
 80009a8:	681a      	ldr	r2, [r3, #0]
 80009aa:	4b0d      	ldr	r3, [pc, #52]	@ (80009e0 <SysTick_Handler+0x48>)
 80009ac:	fba3 1302 	umull	r1, r3, r3, r2
 80009b0:	099b      	lsrs	r3, r3, #6
 80009b2:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
 80009b6:	fb01 f303 	mul.w	r3, r1, r3
 80009ba:	1ad3      	subs	r3, r2, r3
 80009bc:	2b00      	cmp	r3, #0
 80009be:	d104      	bne.n	80009ca <SysTick_Handler+0x32>
 80009c0:	4b08      	ldr	r3, [pc, #32]	@ (80009e4 <SysTick_Handler+0x4c>)
 80009c2:	681b      	ldr	r3, [r3, #0]
 80009c4:	3301      	adds	r3, #1
 80009c6:	4a07      	ldr	r2, [pc, #28]	@ (80009e4 <SysTick_Handler+0x4c>)
 80009c8:	6013      	str	r3, [r2, #0]
 80009ca:	f000 fa79 	bl	8000ec0 <rt_interrupt_enter>
 80009ce:	f000 f8d3 	bl	8000b78 <rt_tick_increase>
 80009d2:	f000 fa8b 	bl	8000eec <rt_interrupt_leave>
 80009d6:	bf00      	nop
 80009d8:	bd80      	pop	{r7, pc}
 80009da:	bf00      	nop
 80009dc:	20000104 	.word	0x20000104
 80009e0:	10624dd3 	.word	0x10624dd3
 80009e4:	20000108 	.word	0x20000108

080009e8 <Reset_Handler>:
 80009e8:	f8df d034 	ldr.w	sp, [pc, #52]	@ 8000a20 <LoopFillZerobss+0xe>
 80009ec:	f7ff ff56 	bl	800089c <SystemInit>
 80009f0:	480c      	ldr	r0, [pc, #48]	@ (8000a24 <LoopFillZerobss+0x12>)
 80009f2:	490d      	ldr	r1, [pc, #52]	@ (8000a28 <LoopFillZerobss+0x16>)
 80009f4:	4a0d      	ldr	r2, [pc, #52]	@ (8000a2c <LoopFillZerobss+0x1a>)
 80009f6:	2300      	movs	r3, #0
 80009f8:	e002      	b.n	8000a00 <LoopCopyDataInit>

080009fa <CopyDataInit>:
 80009fa:	58d4      	ldr	r4, [r2, r3]
 80009fc:	50c4      	str	r4, [r0, r3]
 80009fe:	3304      	adds	r3, #4

08000a00 <LoopCopyDataInit>:
 8000a00:	18c4      	adds	r4, r0, r3
 8000a02:	428c      	cmp	r4, r1
 8000a04:	d3f9      	bcc.n	80009fa <CopyDataInit>
 8000a06:	4a0a      	ldr	r2, [pc, #40]	@ (8000a30 <LoopFillZerobss+0x1e>)
 8000a08:	4c0a      	ldr	r4, [pc, #40]	@ (8000a34 <LoopFillZerobss+0x22>)
 8000a0a:	2300      	movs	r3, #0
 8000a0c:	e001      	b.n	8000a12 <LoopFillZerobss>

08000a0e <FillZerobss>:
 8000a0e:	6013      	str	r3, [r2, #0]
 8000a10:	3204      	adds	r2, #4

08000a12 <LoopFillZerobss>:
 8000a12:	42a2      	cmp	r2, r4
 8000a14:	d3fb      	bcc.n	8000a0e <FillZerobss>
 8000a16:	f7ff fca5 	bl	8000364 <__libc_init_array>
 8000a1a:	f000 f92f 	bl	8000c7c <entry>
 8000a1e:	4770      	bx	lr
 8000a20:	20010000 	.word	0x20010000
 8000a24:	20000000 	.word	0x20000000
 8000a28:	20000058 	.word	0x20000058
 8000a2c:	08002ed0 	.word	0x08002ed0
 8000a30:	20000058 	.word	0x20000058
 8000a34:	20003fbc 	.word	0x20003fbc

08000a38 <ADC_IRQHandler>:
 8000a38:	e7fe      	b.n	8000a38 <ADC_IRQHandler>
	...

08000a3c <rt_hw_stack_init>:
 8000a3c:	b480      	push	{r7}
 8000a3e:	b089      	sub	sp, #36	@ 0x24
 8000a40:	af00      	add	r7, sp, #0
 8000a42:	60f8      	str	r0, [r7, #12]
 8000a44:	60b9      	str	r1, [r7, #8]
 8000a46:	607a      	str	r2, [r7, #4]
 8000a48:	603b      	str	r3, [r7, #0]
 8000a4a:	687b      	ldr	r3, [r7, #4]
 8000a4c:	3304      	adds	r3, #4
 8000a4e:	61bb      	str	r3, [r7, #24]
 8000a50:	69bb      	ldr	r3, [r7, #24]
 8000a52:	f023 0307 	bic.w	r3, r3, #7
 8000a56:	61bb      	str	r3, [r7, #24]
 8000a58:	69bb      	ldr	r3, [r7, #24]
 8000a5a:	3b44      	subs	r3, #68	@ 0x44
 8000a5c:	61bb      	str	r3, [r7, #24]
 8000a5e:	69bb      	ldr	r3, [r7, #24]
 8000a60:	617b      	str	r3, [r7, #20]
 8000a62:	2300      	movs	r3, #0
 8000a64:	61fb      	str	r3, [r7, #28]
 8000a66:	e008      	b.n	8000a7a <rt_hw_stack_init+0x3e>
 8000a68:	69fb      	ldr	r3, [r7, #28]
 8000a6a:	009b      	lsls	r3, r3, #2
 8000a6c:	697a      	ldr	r2, [r7, #20]
 8000a6e:	4413      	add	r3, r2
 8000a70:	4a15      	ldr	r2, [pc, #84]	@ (8000ac8 <rt_hw_stack_init+0x8c>)
 8000a72:	601a      	str	r2, [r3, #0]
 8000a74:	69fb      	ldr	r3, [r7, #28]
 8000a76:	3301      	adds	r3, #1
 8000a78:	61fb      	str	r3, [r7, #28]
 8000a7a:	69fb      	ldr	r3, [r7, #28]
 8000a7c:	2b10      	cmp	r3, #16
 8000a7e:	d9f3      	bls.n	8000a68 <rt_hw_stack_init+0x2c>
 8000a80:	68ba      	ldr	r2, [r7, #8]
 8000a82:	697b      	ldr	r3, [r7, #20]
 8000a84:	625a      	str	r2, [r3, #36]	@ 0x24
 8000a86:	697b      	ldr	r3, [r7, #20]
 8000a88:	2200      	movs	r2, #0
 8000a8a:	629a      	str	r2, [r3, #40]	@ 0x28
 8000a8c:	697b      	ldr	r3, [r7, #20]
 8000a8e:	2200      	movs	r2, #0
 8000a90:	62da      	str	r2, [r3, #44]	@ 0x2c
 8000a92:	697b      	ldr	r3, [r7, #20]
 8000a94:	2200      	movs	r2, #0
 8000a96:	631a      	str	r2, [r3, #48]	@ 0x30
 8000a98:	697b      	ldr	r3, [r7, #20]
 8000a9a:	2200      	movs	r2, #0
 8000a9c:	635a      	str	r2, [r3, #52]	@ 0x34
 8000a9e:	683a      	ldr	r2, [r7, #0]
 8000aa0:	697b      	ldr	r3, [r7, #20]
 8000aa2:	639a      	str	r2, [r3, #56]	@ 0x38
 8000aa4:	68fa      	ldr	r2, [r7, #12]
 8000aa6:	697b      	ldr	r3, [r7, #20]
 8000aa8:	63da      	str	r2, [r3, #60]	@ 0x3c
 8000aaa:	697b      	ldr	r3, [r7, #20]
 8000aac:	f04f 7280 	mov.w	r2, #16777216	@ 0x1000000
 8000ab0:	641a      	str	r2, [r3, #64]	@ 0x40
 8000ab2:	697b      	ldr	r3, [r7, #20]
 8000ab4:	2200      	movs	r2, #0
 8000ab6:	601a      	str	r2, [r3, #0]
 8000ab8:	69bb      	ldr	r3, [r7, #24]
 8000aba:	4618      	mov	r0, r3
 8000abc:	3724      	adds	r7, #36	@ 0x24
 8000abe:	46bd      	mov	sp, r7
 8000ac0:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000ac4:	4770      	bx	lr
 8000ac6:	bf00      	nop
 8000ac8:	deadbeef 	.word	0xdeadbeef

08000acc <rt_hw_hard_fault_exception>:
 8000acc:	b580      	push	{r7, lr}
 8000ace:	b086      	sub	sp, #24
 8000ad0:	af00      	add	r7, sp, #0
 8000ad2:	6078      	str	r0, [r7, #4]
 8000ad4:	687b      	ldr	r3, [r7, #4]
 8000ad6:	3328      	adds	r3, #40	@ 0x28
 8000ad8:	617b      	str	r3, [r7, #20]
 8000ada:	687b      	ldr	r3, [r7, #4]
 8000adc:	3304      	adds	r3, #4
 8000ade:	613b      	str	r3, [r7, #16]
 8000ae0:	4b08      	ldr	r3, [pc, #32]	@ (8000b04 <rt_hw_hard_fault_exception+0x38>)
 8000ae2:	681b      	ldr	r3, [r3, #0]
 8000ae4:	2b00      	cmp	r3, #0
 8000ae6:	d007      	beq.n	8000af8 <rt_hw_hard_fault_exception+0x2c>
 8000ae8:	4b06      	ldr	r3, [pc, #24]	@ (8000b04 <rt_hw_hard_fault_exception+0x38>)
 8000aea:	681b      	ldr	r3, [r3, #0]
 8000aec:	6978      	ldr	r0, [r7, #20]
 8000aee:	4798      	blx	r3
 8000af0:	60f8      	str	r0, [r7, #12]
 8000af2:	68fb      	ldr	r3, [r7, #12]
 8000af4:	2b00      	cmp	r3, #0
 8000af6:	d000      	beq.n	8000afa <rt_hw_hard_fault_exception+0x2e>
 8000af8:	e7fe      	b.n	8000af8 <rt_hw_hard_fault_exception+0x2c>
 8000afa:	bf00      	nop
 8000afc:	3718      	adds	r7, #24
 8000afe:	46bd      	mov	sp, r7
 8000b00:	bd80      	pop	{r7, pc}
 8000b02:	bf00      	nop
 8000b04:	20000118 	.word	0x20000118

08000b08 <rt_heap_begin_get>:
 8000b08:	b480      	push	{r7}
 8000b0a:	af00      	add	r7, sp, #0
 8000b0c:	4b02      	ldr	r3, [pc, #8]	@ (8000b18 <rt_heap_begin_get+0x10>)
 8000b0e:	4618      	mov	r0, r3
 8000b10:	46bd      	mov	sp, r7
 8000b12:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b16:	4770      	bx	lr
 8000b18:	2000011c 	.word	0x2000011c

08000b1c <rt_heap_end_get>:
 8000b1c:	b480      	push	{r7}
 8000b1e:	af00      	add	r7, sp, #0
 8000b20:	4b02      	ldr	r3, [pc, #8]	@ (8000b2c <rt_heap_end_get+0x10>)
 8000b22:	4618      	mov	r0, r3
 8000b24:	46bd      	mov	sp, r7
 8000b26:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b2a:	4770      	bx	lr
 8000b2c:	20003d1c 	.word	0x20003d1c

08000b30 <rt_hw_board_init>:
 8000b30:	b598      	push	{r3, r4, r7, lr}
 8000b32:	af00      	add	r7, sp, #0
 8000b34:	f7ff ff10 	bl	8000958 <Systick_Config>
 8000b38:	f7ff fc76 	bl	8000428 <GPIOA_Init>
 8000b3c:	f7ff fd82 	bl	8000644 <usart1_init>
 8000b40:	f7ff fc34 	bl	80003ac <dma2_usart1_rx_init>
 8000b44:	f000 f866 	bl	8000c14 <rt_components_board_init>
 8000b48:	f7ff ffde 	bl	8000b08 <rt_heap_begin_get>
 8000b4c:	4604      	mov	r4, r0
 8000b4e:	f7ff ffe5 	bl	8000b1c <rt_heap_end_get>
 8000b52:	4603      	mov	r3, r0
 8000b54:	4619      	mov	r1, r3
 8000b56:	4620      	mov	r0, r4
 8000b58:	f000 fe5e 	bl	8001818 <rt_system_heap_init>
 8000b5c:	bf00      	nop
 8000b5e:	bd98      	pop	{r3, r4, r7, pc}

08000b60 <rt_tick_get>:
 8000b60:	b480      	push	{r7}
 8000b62:	af00      	add	r7, sp, #0
 8000b64:	4b03      	ldr	r3, [pc, #12]	@ (8000b74 <rt_tick_get+0x14>)
 8000b66:	681b      	ldr	r3, [r3, #0]
 8000b68:	4618      	mov	r0, r3
 8000b6a:	46bd      	mov	sp, r7
 8000b6c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b70:	4770      	bx	lr
 8000b72:	bf00      	nop
 8000b74:	20003d1c 	.word	0x20003d1c

08000b78 <rt_tick_increase>:
 8000b78:	b580      	push	{r7, lr}
 8000b7a:	b082      	sub	sp, #8
 8000b7c:	af00      	add	r7, sp, #0
 8000b7e:	f7ff fb09 	bl	8000194 <rt_hw_interrupt_disable>
 8000b82:	6078      	str	r0, [r7, #4]
 8000b84:	4b16      	ldr	r3, [pc, #88]	@ (8000be0 <rt_tick_increase+0x68>)
 8000b86:	681b      	ldr	r3, [r3, #0]
 8000b88:	3301      	adds	r3, #1
 8000b8a:	4a15      	ldr	r2, [pc, #84]	@ (8000be0 <rt_tick_increase+0x68>)
 8000b8c:	6013      	str	r3, [r2, #0]
 8000b8e:	f001 fcf9 	bl	8002584 <rt_thread_self>
 8000b92:	6038      	str	r0, [r7, #0]
 8000b94:	683b      	ldr	r3, [r7, #0]
 8000b96:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000b98:	1e5a      	subs	r2, r3, #1
 8000b9a:	683b      	ldr	r3, [r7, #0]
 8000b9c:	641a      	str	r2, [r3, #64]	@ 0x40
 8000b9e:	683b      	ldr	r3, [r7, #0]
 8000ba0:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000ba2:	2b00      	cmp	r3, #0
 8000ba4:	d112      	bne.n	8000bcc <rt_tick_increase+0x54>
 8000ba6:	683b      	ldr	r3, [r7, #0]
 8000ba8:	6bda      	ldr	r2, [r3, #60]	@ 0x3c
 8000baa:	683b      	ldr	r3, [r7, #0]
 8000bac:	641a      	str	r2, [r3, #64]	@ 0x40
 8000bae:	683b      	ldr	r3, [r7, #0]
 8000bb0:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 8000bb4:	f043 0308 	orr.w	r3, r3, #8
 8000bb8:	b2da      	uxtb	r2, r3
 8000bba:	683b      	ldr	r3, [r7, #0]
 8000bbc:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8000bc0:	6878      	ldr	r0, [r7, #4]
 8000bc2:	f7ff faeb 	bl	800019c <rt_hw_interrupt_enable>
 8000bc6:	f001 fa6d 	bl	80020a4 <rt_schedule>
 8000bca:	e002      	b.n	8000bd2 <rt_tick_increase+0x5a>
 8000bcc:	6878      	ldr	r0, [r7, #4]
 8000bce:	f7ff fae5 	bl	800019c <rt_hw_interrupt_enable>
 8000bd2:	f001 ffdd 	bl	8002b90 <rt_timer_check>
 8000bd6:	bf00      	nop
 8000bd8:	3708      	adds	r7, #8
 8000bda:	46bd      	mov	sp, r7
 8000bdc:	bd80      	pop	{r7, pc}
 8000bde:	bf00      	nop
 8000be0:	20003d1c 	.word	0x20003d1c

08000be4 <rti_board_start>:
 8000be4:	b480      	push	{r7}
 8000be6:	af00      	add	r7, sp, #0
 8000be8:	2300      	movs	r3, #0
 8000bea:	4618      	mov	r0, r3
 8000bec:	46bd      	mov	sp, r7
 8000bee:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bf2:	4770      	bx	lr

08000bf4 <rti_board_end>:
 8000bf4:	b480      	push	{r7}
 8000bf6:	af00      	add	r7, sp, #0
 8000bf8:	2300      	movs	r3, #0
 8000bfa:	4618      	mov	r0, r3
 8000bfc:	46bd      	mov	sp, r7
 8000bfe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c02:	4770      	bx	lr

08000c04 <rti_end>:
 8000c04:	b480      	push	{r7}
 8000c06:	af00      	add	r7, sp, #0
 8000c08:	2300      	movs	r3, #0
 8000c0a:	4618      	mov	r0, r3
 8000c0c:	46bd      	mov	sp, r7
 8000c0e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c12:	4770      	bx	lr

08000c14 <rt_components_board_init>:
 8000c14:	b580      	push	{r7, lr}
 8000c16:	b082      	sub	sp, #8
 8000c18:	af00      	add	r7, sp, #0
 8000c1a:	4b09      	ldr	r3, [pc, #36]	@ (8000c40 <rt_components_board_init+0x2c>)
 8000c1c:	607b      	str	r3, [r7, #4]
 8000c1e:	e005      	b.n	8000c2c <rt_components_board_init+0x18>
 8000c20:	687b      	ldr	r3, [r7, #4]
 8000c22:	681b      	ldr	r3, [r3, #0]
 8000c24:	4798      	blx	r3
 8000c26:	687b      	ldr	r3, [r7, #4]
 8000c28:	3304      	adds	r3, #4
 8000c2a:	607b      	str	r3, [r7, #4]
 8000c2c:	687b      	ldr	r3, [r7, #4]
 8000c2e:	4a05      	ldr	r2, [pc, #20]	@ (8000c44 <rt_components_board_init+0x30>)
 8000c30:	4293      	cmp	r3, r2
 8000c32:	d3f5      	bcc.n	8000c20 <rt_components_board_init+0xc>
 8000c34:	bf00      	nop
 8000c36:	bf00      	nop
 8000c38:	3708      	adds	r7, #8
 8000c3a:	46bd      	mov	sp, r7
 8000c3c:	bd80      	pop	{r7, pc}
 8000c3e:	bf00      	nop
 8000c40:	08002ebc 	.word	0x08002ebc
 8000c44:	08002ec0 	.word	0x08002ec0

08000c48 <rt_components_init>:
 8000c48:	b580      	push	{r7, lr}
 8000c4a:	b082      	sub	sp, #8
 8000c4c:	af00      	add	r7, sp, #0
 8000c4e:	4b09      	ldr	r3, [pc, #36]	@ (8000c74 <rt_components_init+0x2c>)
 8000c50:	607b      	str	r3, [r7, #4]
 8000c52:	e005      	b.n	8000c60 <rt_components_init+0x18>
 8000c54:	687b      	ldr	r3, [r7, #4]
 8000c56:	681b      	ldr	r3, [r3, #0]
 8000c58:	4798      	blx	r3
 8000c5a:	687b      	ldr	r3, [r7, #4]
 8000c5c:	3304      	adds	r3, #4
 8000c5e:	607b      	str	r3, [r7, #4]
 8000c60:	687b      	ldr	r3, [r7, #4]
 8000c62:	4a05      	ldr	r2, [pc, #20]	@ (8000c78 <rt_components_init+0x30>)
 8000c64:	4293      	cmp	r3, r2
 8000c66:	d3f5      	bcc.n	8000c54 <rt_components_init+0xc>
 8000c68:	bf00      	nop
 8000c6a:	bf00      	nop
 8000c6c:	3708      	adds	r7, #8
 8000c6e:	46bd      	mov	sp, r7
 8000c70:	bd80      	pop	{r7, pc}
 8000c72:	bf00      	nop
 8000c74:	08002ec0 	.word	0x08002ec0
 8000c78:	08002ec4 	.word	0x08002ec4

08000c7c <entry>:
 8000c7c:	b580      	push	{r7, lr}
 8000c7e:	af00      	add	r7, sp, #0
 8000c80:	f000 f82a 	bl	8000cd8 <rtthread_startup>
 8000c84:	2300      	movs	r3, #0
 8000c86:	4618      	mov	r0, r3
 8000c88:	bd80      	pop	{r7, pc}

08000c8a <main_thread_entry>:
 8000c8a:	b580      	push	{r7, lr}
 8000c8c:	b082      	sub	sp, #8
 8000c8e:	af00      	add	r7, sp, #0
 8000c90:	6078      	str	r0, [r7, #4]
 8000c92:	f7ff ffd9 	bl	8000c48 <rt_components_init>
 8000c96:	f7ff fdf7 	bl	8000888 <main>
 8000c9a:	bf00      	nop
 8000c9c:	3708      	adds	r7, #8
 8000c9e:	46bd      	mov	sp, r7
 8000ca0:	bd80      	pop	{r7, pc}
	...

08000ca4 <rt_application_init>:
 8000ca4:	b580      	push	{r7, lr}
 8000ca6:	b084      	sub	sp, #16
 8000ca8:	af02      	add	r7, sp, #8
 8000caa:	2314      	movs	r3, #20
 8000cac:	9301      	str	r3, [sp, #4]
 8000cae:	230a      	movs	r3, #10
 8000cb0:	9300      	str	r3, [sp, #0]
 8000cb2:	f44f 7380 	mov.w	r3, #256	@ 0x100
 8000cb6:	2200      	movs	r2, #0
 8000cb8:	4905      	ldr	r1, [pc, #20]	@ (8000cd0 <rt_application_init+0x2c>)
 8000cba:	4806      	ldr	r0, [pc, #24]	@ (8000cd4 <rt_application_init+0x30>)
 8000cbc:	f001 fc8e 	bl	80025dc <rt_thread_create>
 8000cc0:	6078      	str	r0, [r7, #4]
 8000cc2:	6878      	ldr	r0, [r7, #4]
 8000cc4:	f001 fc6a 	bl	800259c <rt_thread_startup>
 8000cc8:	bf00      	nop
 8000cca:	3708      	adds	r7, #8
 8000ccc:	46bd      	mov	sp, r7
 8000cce:	bd80      	pop	{r7, pc}
 8000cd0:	08000c8b 	.word	0x08000c8b
 8000cd4:	08002d14 	.word	0x08002d14

08000cd8 <rtthread_startup>:
 8000cd8:	b580      	push	{r7, lr}
 8000cda:	af00      	add	r7, sp, #0
 8000cdc:	f7ff fa5a 	bl	8000194 <rt_hw_interrupt_disable>
 8000ce0:	f7ff ff26 	bl	8000b30 <rt_hw_board_init>
 8000ce4:	f000 f9a5 	bl	8001032 <rt_show_version>
 8000ce8:	f001 ffc2 	bl	8002c70 <rt_system_timer_init>
 8000cec:	f001 f998 	bl	8002020 <rt_system_scheduler_init>
 8000cf0:	f7ff ffd8 	bl	8000ca4 <rt_application_init>
 8000cf4:	f001 ffd6 	bl	8002ca4 <rt_system_timer_thread_init>
 8000cf8:	f000 f8a0 	bl	8000e3c <rt_thread_idle_init>
 8000cfc:	f001 f9b4 	bl	8002068 <rt_system_scheduler_start>
 8000d00:	2300      	movs	r3, #0
 8000d02:	4618      	mov	r0, r3
 8000d04:	bd80      	pop	{r7, pc}

08000d06 <rt_list_insert_after>:
 8000d06:	b480      	push	{r7}
 8000d08:	b083      	sub	sp, #12
 8000d0a:	af00      	add	r7, sp, #0
 8000d0c:	6078      	str	r0, [r7, #4]
 8000d0e:	6039      	str	r1, [r7, #0]
 8000d10:	687b      	ldr	r3, [r7, #4]
 8000d12:	681b      	ldr	r3, [r3, #0]
 8000d14:	683a      	ldr	r2, [r7, #0]
 8000d16:	605a      	str	r2, [r3, #4]
 8000d18:	687b      	ldr	r3, [r7, #4]
 8000d1a:	681a      	ldr	r2, [r3, #0]
 8000d1c:	683b      	ldr	r3, [r7, #0]
 8000d1e:	601a      	str	r2, [r3, #0]
 8000d20:	687b      	ldr	r3, [r7, #4]
 8000d22:	683a      	ldr	r2, [r7, #0]
 8000d24:	601a      	str	r2, [r3, #0]
 8000d26:	683b      	ldr	r3, [r7, #0]
 8000d28:	687a      	ldr	r2, [r7, #4]
 8000d2a:	605a      	str	r2, [r3, #4]
 8000d2c:	bf00      	nop
 8000d2e:	370c      	adds	r7, #12
 8000d30:	46bd      	mov	sp, r7
 8000d32:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d36:	4770      	bx	lr

08000d38 <rt_list_remove>:
 8000d38:	b480      	push	{r7}
 8000d3a:	b083      	sub	sp, #12
 8000d3c:	af00      	add	r7, sp, #0
 8000d3e:	6078      	str	r0, [r7, #4]
 8000d40:	687b      	ldr	r3, [r7, #4]
 8000d42:	681b      	ldr	r3, [r3, #0]
 8000d44:	687a      	ldr	r2, [r7, #4]
 8000d46:	6852      	ldr	r2, [r2, #4]
 8000d48:	605a      	str	r2, [r3, #4]
 8000d4a:	687b      	ldr	r3, [r7, #4]
 8000d4c:	685b      	ldr	r3, [r3, #4]
 8000d4e:	687a      	ldr	r2, [r7, #4]
 8000d50:	6812      	ldr	r2, [r2, #0]
 8000d52:	601a      	str	r2, [r3, #0]
 8000d54:	687b      	ldr	r3, [r7, #4]
 8000d56:	687a      	ldr	r2, [r7, #4]
 8000d58:	605a      	str	r2, [r3, #4]
 8000d5a:	687b      	ldr	r3, [r7, #4]
 8000d5c:	685a      	ldr	r2, [r3, #4]
 8000d5e:	687b      	ldr	r3, [r7, #4]
 8000d60:	601a      	str	r2, [r3, #0]
 8000d62:	bf00      	nop
 8000d64:	370c      	adds	r7, #12
 8000d66:	46bd      	mov	sp, r7
 8000d68:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d6c:	4770      	bx	lr
	...

08000d70 <rt_thread_defunct_enqueue>:
 8000d70:	b580      	push	{r7, lr}
 8000d72:	b082      	sub	sp, #8
 8000d74:	af00      	add	r7, sp, #0
 8000d76:	6078      	str	r0, [r7, #4]
 8000d78:	687b      	ldr	r3, [r7, #4]
 8000d7a:	3314      	adds	r3, #20
 8000d7c:	4619      	mov	r1, r3
 8000d7e:	4803      	ldr	r0, [pc, #12]	@ (8000d8c <rt_thread_defunct_enqueue+0x1c>)
 8000d80:	f7ff ffc1 	bl	8000d06 <rt_list_insert_after>
 8000d84:	bf00      	nop
 8000d86:	3708      	adds	r7, #8
 8000d88:	46bd      	mov	sp, r7
 8000d8a:	bd80      	pop	{r7, pc}
 8000d8c:	20000000 	.word	0x20000000

08000d90 <rt_thread_defunct_dequeue>:
 8000d90:	b580      	push	{r7, lr}
 8000d92:	b084      	sub	sp, #16
 8000d94:	af00      	add	r7, sp, #0
 8000d96:	2300      	movs	r3, #0
 8000d98:	60fb      	str	r3, [r7, #12]
 8000d9a:	4b0d      	ldr	r3, [pc, #52]	@ (8000dd0 <rt_thread_defunct_dequeue+0x40>)
 8000d9c:	60bb      	str	r3, [r7, #8]
 8000d9e:	68bb      	ldr	r3, [r7, #8]
 8000da0:	681b      	ldr	r3, [r3, #0]
 8000da2:	68ba      	ldr	r2, [r7, #8]
 8000da4:	429a      	cmp	r2, r3
 8000da6:	d00e      	beq.n	8000dc6 <rt_thread_defunct_dequeue+0x36>
 8000da8:	68bb      	ldr	r3, [r7, #8]
 8000daa:	681b      	ldr	r3, [r3, #0]
 8000dac:	3b14      	subs	r3, #20
 8000dae:	60fb      	str	r3, [r7, #12]
 8000db0:	f7ff f9f0 	bl	8000194 <rt_hw_interrupt_disable>
 8000db4:	6078      	str	r0, [r7, #4]
 8000db6:	68fb      	ldr	r3, [r7, #12]
 8000db8:	3314      	adds	r3, #20
 8000dba:	4618      	mov	r0, r3
 8000dbc:	f7ff ffbc 	bl	8000d38 <rt_list_remove>
 8000dc0:	6878      	ldr	r0, [r7, #4]
 8000dc2:	f7ff f9eb 	bl	800019c <rt_hw_interrupt_enable>
 8000dc6:	68fb      	ldr	r3, [r7, #12]
 8000dc8:	4618      	mov	r0, r3
 8000dca:	3710      	adds	r7, #16
 8000dcc:	46bd      	mov	sp, r7
 8000dce:	bd80      	pop	{r7, pc}
 8000dd0:	20000000 	.word	0x20000000

08000dd4 <rt_defunct_execute>:
 8000dd4:	b580      	push	{r7, lr}
 8000dd6:	b084      	sub	sp, #16
 8000dd8:	af00      	add	r7, sp, #0
 8000dda:	f7ff ffd9 	bl	8000d90 <rt_thread_defunct_dequeue>
 8000dde:	60f8      	str	r0, [r7, #12]
 8000de0:	68fb      	ldr	r3, [r7, #12]
 8000de2:	2b00      	cmp	r3, #0
 8000de4:	d01e      	beq.n	8000e24 <rt_defunct_execute+0x50>
 8000de6:	68fb      	ldr	r3, [r7, #12]
 8000de8:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8000dea:	60bb      	str	r3, [r7, #8]
 8000dec:	68f8      	ldr	r0, [r7, #12]
 8000dee:	f001 f877 	bl	8001ee0 <rt_object_is_systemobject>
 8000df2:	6078      	str	r0, [r7, #4]
 8000df4:	687b      	ldr	r3, [r7, #4]
 8000df6:	2b01      	cmp	r3, #1
 8000df8:	d102      	bne.n	8000e00 <rt_defunct_execute+0x2c>
 8000dfa:	68f8      	ldr	r0, [r7, #12]
 8000dfc:	f001 f805 	bl	8001e0a <rt_object_detach>
 8000e00:	68bb      	ldr	r3, [r7, #8]
 8000e02:	2b00      	cmp	r3, #0
 8000e04:	d002      	beq.n	8000e0c <rt_defunct_execute+0x38>
 8000e06:	68bb      	ldr	r3, [r7, #8]
 8000e08:	68f8      	ldr	r0, [r7, #12]
 8000e0a:	4798      	blx	r3
 8000e0c:	687b      	ldr	r3, [r7, #4]
 8000e0e:	2b00      	cmp	r3, #0
 8000e10:	d1e3      	bne.n	8000dda <rt_defunct_execute+0x6>
 8000e12:	68fb      	ldr	r3, [r7, #12]
 8000e14:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8000e16:	4618      	mov	r0, r3
 8000e18:	f000 fd3a 	bl	8001890 <rt_free>
 8000e1c:	68f8      	ldr	r0, [r7, #12]
 8000e1e:	f001 f846 	bl	8001eae <rt_object_delete>
 8000e22:	e7da      	b.n	8000dda <rt_defunct_execute+0x6>
 8000e24:	bf00      	nop
 8000e26:	bf00      	nop
 8000e28:	3710      	adds	r7, #16
 8000e2a:	46bd      	mov	sp, r7
 8000e2c:	bd80      	pop	{r7, pc}

08000e2e <rt_thread_idle_entry>:
 8000e2e:	b580      	push	{r7, lr}
 8000e30:	b082      	sub	sp, #8
 8000e32:	af00      	add	r7, sp, #0
 8000e34:	6078      	str	r0, [r7, #4]
 8000e36:	f7ff ffcd 	bl	8000dd4 <rt_defunct_execute>
 8000e3a:	e7fc      	b.n	8000e36 <rt_thread_idle_entry+0x8>

08000e3c <rt_thread_idle_init>:
 8000e3c:	b580      	push	{r7, lr}
 8000e3e:	b088      	sub	sp, #32
 8000e40:	af04      	add	r7, sp, #16
 8000e42:	2300      	movs	r3, #0
 8000e44:	60fb      	str	r3, [r7, #12]
 8000e46:	e02a      	b.n	8000e9e <rt_thread_idle_init+0x62>
 8000e48:	1d3b      	adds	r3, r7, #4
 8000e4a:	68fa      	ldr	r2, [r7, #12]
 8000e4c:	4918      	ldr	r1, [pc, #96]	@ (8000eb0 <rt_thread_idle_init+0x74>)
 8000e4e:	4618      	mov	r0, r3
 8000e50:	f000 fcb4 	bl	80017bc <rt_sprintf>
 8000e54:	68fa      	ldr	r2, [r7, #12]
 8000e56:	4613      	mov	r3, r2
 8000e58:	011b      	lsls	r3, r3, #4
 8000e5a:	1a9b      	subs	r3, r3, r2
 8000e5c:	00db      	lsls	r3, r3, #3
 8000e5e:	4a15      	ldr	r2, [pc, #84]	@ (8000eb4 <rt_thread_idle_init+0x78>)
 8000e60:	1898      	adds	r0, r3, r2
 8000e62:	68fb      	ldr	r3, [r7, #12]
 8000e64:	021b      	lsls	r3, r3, #8
 8000e66:	4a14      	ldr	r2, [pc, #80]	@ (8000eb8 <rt_thread_idle_init+0x7c>)
 8000e68:	4413      	add	r3, r2
 8000e6a:	1d39      	adds	r1, r7, #4
 8000e6c:	2220      	movs	r2, #32
 8000e6e:	9203      	str	r2, [sp, #12]
 8000e70:	221f      	movs	r2, #31
 8000e72:	9202      	str	r2, [sp, #8]
 8000e74:	f44f 7280 	mov.w	r2, #256	@ 0x100
 8000e78:	9201      	str	r2, [sp, #4]
 8000e7a:	9300      	str	r3, [sp, #0]
 8000e7c:	2300      	movs	r3, #0
 8000e7e:	4a0f      	ldr	r2, [pc, #60]	@ (8000ebc <rt_thread_idle_init+0x80>)
 8000e80:	f001 fb60 	bl	8002544 <rt_thread_init>
 8000e84:	68fa      	ldr	r2, [r7, #12]
 8000e86:	4613      	mov	r3, r2
 8000e88:	011b      	lsls	r3, r3, #4
 8000e8a:	1a9b      	subs	r3, r3, r2
 8000e8c:	00db      	lsls	r3, r3, #3
 8000e8e:	4a09      	ldr	r2, [pc, #36]	@ (8000eb4 <rt_thread_idle_init+0x78>)
 8000e90:	4413      	add	r3, r2
 8000e92:	4618      	mov	r0, r3
 8000e94:	f001 fb82 	bl	800259c <rt_thread_startup>
 8000e98:	68fb      	ldr	r3, [r7, #12]
 8000e9a:	3301      	adds	r3, #1
 8000e9c:	60fb      	str	r3, [r7, #12]
 8000e9e:	68fb      	ldr	r3, [r7, #12]
 8000ea0:	2b00      	cmp	r3, #0
 8000ea2:	d0d1      	beq.n	8000e48 <rt_thread_idle_init+0xc>
 8000ea4:	bf00      	nop
 8000ea6:	bf00      	nop
 8000ea8:	3710      	adds	r7, #16
 8000eaa:	46bd      	mov	sp, r7
 8000eac:	bd80      	pop	{r7, pc}
 8000eae:	bf00      	nop
 8000eb0:	08002d1c 	.word	0x08002d1c
 8000eb4:	20003d20 	.word	0x20003d20
 8000eb8:	20003d98 	.word	0x20003d98
 8000ebc:	08000e2f 	.word	0x08000e2f

08000ec0 <rt_interrupt_enter>:
 8000ec0:	b580      	push	{r7, lr}
 8000ec2:	b082      	sub	sp, #8
 8000ec4:	af00      	add	r7, sp, #0
 8000ec6:	f7ff f965 	bl	8000194 <rt_hw_interrupt_disable>
 8000eca:	6078      	str	r0, [r7, #4]
 8000ecc:	4b06      	ldr	r3, [pc, #24]	@ (8000ee8 <rt_interrupt_enter+0x28>)
 8000ece:	781b      	ldrb	r3, [r3, #0]
 8000ed0:	b2db      	uxtb	r3, r3
 8000ed2:	3301      	adds	r3, #1
 8000ed4:	b2da      	uxtb	r2, r3
 8000ed6:	4b04      	ldr	r3, [pc, #16]	@ (8000ee8 <rt_interrupt_enter+0x28>)
 8000ed8:	701a      	strb	r2, [r3, #0]
 8000eda:	6878      	ldr	r0, [r7, #4]
 8000edc:	f7ff f95e 	bl	800019c <rt_hw_interrupt_enable>
 8000ee0:	bf00      	nop
 8000ee2:	3708      	adds	r7, #8
 8000ee4:	46bd      	mov	sp, r7
 8000ee6:	bd80      	pop	{r7, pc}
 8000ee8:	20003e98 	.word	0x20003e98

08000eec <rt_interrupt_leave>:
 8000eec:	b580      	push	{r7, lr}
 8000eee:	b082      	sub	sp, #8
 8000ef0:	af00      	add	r7, sp, #0
 8000ef2:	f7ff f94f 	bl	8000194 <rt_hw_interrupt_disable>
 8000ef6:	6078      	str	r0, [r7, #4]
 8000ef8:	4b06      	ldr	r3, [pc, #24]	@ (8000f14 <rt_interrupt_leave+0x28>)
 8000efa:	781b      	ldrb	r3, [r3, #0]
 8000efc:	b2db      	uxtb	r3, r3
 8000efe:	3b01      	subs	r3, #1
 8000f00:	b2da      	uxtb	r2, r3
 8000f02:	4b04      	ldr	r3, [pc, #16]	@ (8000f14 <rt_interrupt_leave+0x28>)
 8000f04:	701a      	strb	r2, [r3, #0]
 8000f06:	6878      	ldr	r0, [r7, #4]
 8000f08:	f7ff f948 	bl	800019c <rt_hw_interrupt_enable>
 8000f0c:	bf00      	nop
 8000f0e:	3708      	adds	r7, #8
 8000f10:	46bd      	mov	sp, r7
 8000f12:	bd80      	pop	{r7, pc}
 8000f14:	20003e98 	.word	0x20003e98

08000f18 <rt_memset>:
 8000f18:	b480      	push	{r7}
 8000f1a:	b089      	sub	sp, #36	@ 0x24
 8000f1c:	af00      	add	r7, sp, #0
 8000f1e:	60f8      	str	r0, [r7, #12]
 8000f20:	60b9      	str	r1, [r7, #8]
 8000f22:	607a      	str	r2, [r7, #4]
 8000f24:	68fb      	ldr	r3, [r7, #12]
 8000f26:	61fb      	str	r3, [r7, #28]
 8000f28:	68bb      	ldr	r3, [r7, #8]
 8000f2a:	b2db      	uxtb	r3, r3
 8000f2c:	617b      	str	r3, [r7, #20]
 8000f2e:	687b      	ldr	r3, [r7, #4]
 8000f30:	2b03      	cmp	r3, #3
 8000f32:	d940      	bls.n	8000fb6 <rt_memset+0x9e>
 8000f34:	68fb      	ldr	r3, [r7, #12]
 8000f36:	f003 0303 	and.w	r3, r3, #3
 8000f3a:	2b00      	cmp	r3, #0
 8000f3c:	d13b      	bne.n	8000fb6 <rt_memset+0x9e>
 8000f3e:	68fb      	ldr	r3, [r7, #12]
 8000f40:	61bb      	str	r3, [r7, #24]
 8000f42:	697b      	ldr	r3, [r7, #20]
 8000f44:	021b      	lsls	r3, r3, #8
 8000f46:	697a      	ldr	r2, [r7, #20]
 8000f48:	4313      	orrs	r3, r2
 8000f4a:	613b      	str	r3, [r7, #16]
 8000f4c:	693b      	ldr	r3, [r7, #16]
 8000f4e:	041b      	lsls	r3, r3, #16
 8000f50:	693a      	ldr	r2, [r7, #16]
 8000f52:	4313      	orrs	r3, r2
 8000f54:	613b      	str	r3, [r7, #16]
 8000f56:	e016      	b.n	8000f86 <rt_memset+0x6e>
 8000f58:	69bb      	ldr	r3, [r7, #24]
 8000f5a:	1d1a      	adds	r2, r3, #4
 8000f5c:	61ba      	str	r2, [r7, #24]
 8000f5e:	693a      	ldr	r2, [r7, #16]
 8000f60:	601a      	str	r2, [r3, #0]
 8000f62:	69bb      	ldr	r3, [r7, #24]
 8000f64:	1d1a      	adds	r2, r3, #4
 8000f66:	61ba      	str	r2, [r7, #24]
 8000f68:	693a      	ldr	r2, [r7, #16]
 8000f6a:	601a      	str	r2, [r3, #0]
 8000f6c:	69bb      	ldr	r3, [r7, #24]
 8000f6e:	1d1a      	adds	r2, r3, #4
 8000f70:	61ba      	str	r2, [r7, #24]
 8000f72:	693a      	ldr	r2, [r7, #16]
 8000f74:	601a      	str	r2, [r3, #0]
 8000f76:	69bb      	ldr	r3, [r7, #24]
 8000f78:	1d1a      	adds	r2, r3, #4
 8000f7a:	61ba      	str	r2, [r7, #24]
 8000f7c:	693a      	ldr	r2, [r7, #16]
 8000f7e:	601a      	str	r2, [r3, #0]
 8000f80:	687b      	ldr	r3, [r7, #4]
 8000f82:	3b10      	subs	r3, #16
 8000f84:	607b      	str	r3, [r7, #4]
 8000f86:	687b      	ldr	r3, [r7, #4]
 8000f88:	2b0f      	cmp	r3, #15
 8000f8a:	d8e5      	bhi.n	8000f58 <rt_memset+0x40>
 8000f8c:	e007      	b.n	8000f9e <rt_memset+0x86>
 8000f8e:	69bb      	ldr	r3, [r7, #24]
 8000f90:	1d1a      	adds	r2, r3, #4
 8000f92:	61ba      	str	r2, [r7, #24]
 8000f94:	693a      	ldr	r2, [r7, #16]
 8000f96:	601a      	str	r2, [r3, #0]
 8000f98:	687b      	ldr	r3, [r7, #4]
 8000f9a:	3b04      	subs	r3, #4
 8000f9c:	607b      	str	r3, [r7, #4]
 8000f9e:	687b      	ldr	r3, [r7, #4]
 8000fa0:	2b03      	cmp	r3, #3
 8000fa2:	d8f4      	bhi.n	8000f8e <rt_memset+0x76>
 8000fa4:	69bb      	ldr	r3, [r7, #24]
 8000fa6:	61fb      	str	r3, [r7, #28]
 8000fa8:	e005      	b.n	8000fb6 <rt_memset+0x9e>
 8000faa:	69fb      	ldr	r3, [r7, #28]
 8000fac:	1c5a      	adds	r2, r3, #1
 8000fae:	61fa      	str	r2, [r7, #28]
 8000fb0:	697a      	ldr	r2, [r7, #20]
 8000fb2:	b2d2      	uxtb	r2, r2
 8000fb4:	701a      	strb	r2, [r3, #0]
 8000fb6:	687b      	ldr	r3, [r7, #4]
 8000fb8:	1e5a      	subs	r2, r3, #1
 8000fba:	607a      	str	r2, [r7, #4]
 8000fbc:	2b00      	cmp	r3, #0
 8000fbe:	d1f4      	bne.n	8000faa <rt_memset+0x92>
 8000fc0:	68fb      	ldr	r3, [r7, #12]
 8000fc2:	4618      	mov	r0, r3
 8000fc4:	3724      	adds	r7, #36	@ 0x24
 8000fc6:	46bd      	mov	sp, r7
 8000fc8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000fcc:	4770      	bx	lr

08000fce <rt_strncpy>:
 8000fce:	b480      	push	{r7}
 8000fd0:	b087      	sub	sp, #28
 8000fd2:	af00      	add	r7, sp, #0
 8000fd4:	60f8      	str	r0, [r7, #12]
 8000fd6:	60b9      	str	r1, [r7, #8]
 8000fd8:	607a      	str	r2, [r7, #4]
 8000fda:	687b      	ldr	r3, [r7, #4]
 8000fdc:	2b00      	cmp	r3, #0
 8000fde:	d021      	beq.n	8001024 <rt_strncpy+0x56>
 8000fe0:	68fb      	ldr	r3, [r7, #12]
 8000fe2:	617b      	str	r3, [r7, #20]
 8000fe4:	68bb      	ldr	r3, [r7, #8]
 8000fe6:	613b      	str	r3, [r7, #16]
 8000fe8:	693a      	ldr	r2, [r7, #16]
 8000fea:	1c53      	adds	r3, r2, #1
 8000fec:	613b      	str	r3, [r7, #16]
 8000fee:	697b      	ldr	r3, [r7, #20]
 8000ff0:	1c59      	adds	r1, r3, #1
 8000ff2:	6179      	str	r1, [r7, #20]
 8000ff4:	7812      	ldrb	r2, [r2, #0]
 8000ff6:	701a      	strb	r2, [r3, #0]
 8000ff8:	781b      	ldrb	r3, [r3, #0]
 8000ffa:	2b00      	cmp	r3, #0
 8000ffc:	d10c      	bne.n	8001018 <rt_strncpy+0x4a>
 8000ffe:	e004      	b.n	800100a <rt_strncpy+0x3c>
 8001000:	697b      	ldr	r3, [r7, #20]
 8001002:	1c5a      	adds	r2, r3, #1
 8001004:	617a      	str	r2, [r7, #20]
 8001006:	2200      	movs	r2, #0
 8001008:	701a      	strb	r2, [r3, #0]
 800100a:	687b      	ldr	r3, [r7, #4]
 800100c:	3b01      	subs	r3, #1
 800100e:	607b      	str	r3, [r7, #4]
 8001010:	687b      	ldr	r3, [r7, #4]
 8001012:	2b00      	cmp	r3, #0
 8001014:	d1f4      	bne.n	8001000 <rt_strncpy+0x32>
 8001016:	e005      	b.n	8001024 <rt_strncpy+0x56>
 8001018:	687b      	ldr	r3, [r7, #4]
 800101a:	3b01      	subs	r3, #1
 800101c:	607b      	str	r3, [r7, #4]
 800101e:	687b      	ldr	r3, [r7, #4]
 8001020:	2b00      	cmp	r3, #0
 8001022:	d1e1      	bne.n	8000fe8 <rt_strncpy+0x1a>
 8001024:	68fb      	ldr	r3, [r7, #12]
 8001026:	4618      	mov	r0, r3
 8001028:	371c      	adds	r7, #28
 800102a:	46bd      	mov	sp, r7
 800102c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001030:	4770      	bx	lr

08001032 <rt_show_version>:
 8001032:	b480      	push	{r7}
 8001034:	af00      	add	r7, sp, #0
 8001036:	bf00      	nop
 8001038:	46bd      	mov	sp, r7
 800103a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800103e:	4770      	bx	lr

08001040 <divide>:
 8001040:	b480      	push	{r7}
 8001042:	b085      	sub	sp, #20
 8001044:	af00      	add	r7, sp, #0
 8001046:	6078      	str	r0, [r7, #4]
 8001048:	6039      	str	r1, [r7, #0]
 800104a:	683b      	ldr	r3, [r7, #0]
 800104c:	2b0a      	cmp	r3, #10
 800104e:	d117      	bne.n	8001080 <divide+0x40>
 8001050:	687b      	ldr	r3, [r7, #4]
 8001052:	681b      	ldr	r3, [r3, #0]
 8001054:	4619      	mov	r1, r3
 8001056:	4b13      	ldr	r3, [pc, #76]	@ (80010a4 <divide+0x64>)
 8001058:	fba3 2301 	umull	r2, r3, r3, r1
 800105c:	08da      	lsrs	r2, r3, #3
 800105e:	4613      	mov	r3, r2
 8001060:	009b      	lsls	r3, r3, #2
 8001062:	4413      	add	r3, r2
 8001064:	005b      	lsls	r3, r3, #1
 8001066:	1aca      	subs	r2, r1, r3
 8001068:	60fa      	str	r2, [r7, #12]
 800106a:	687b      	ldr	r3, [r7, #4]
 800106c:	681b      	ldr	r3, [r3, #0]
 800106e:	461a      	mov	r2, r3
 8001070:	4b0c      	ldr	r3, [pc, #48]	@ (80010a4 <divide+0x64>)
 8001072:	fba3 2302 	umull	r2, r3, r3, r2
 8001076:	08db      	lsrs	r3, r3, #3
 8001078:	461a      	mov	r2, r3
 800107a:	687b      	ldr	r3, [r7, #4]
 800107c:	601a      	str	r2, [r3, #0]
 800107e:	e00a      	b.n	8001096 <divide+0x56>
 8001080:	687b      	ldr	r3, [r7, #4]
 8001082:	681b      	ldr	r3, [r3, #0]
 8001084:	f003 030f 	and.w	r3, r3, #15
 8001088:	60fb      	str	r3, [r7, #12]
 800108a:	687b      	ldr	r3, [r7, #4]
 800108c:	681b      	ldr	r3, [r3, #0]
 800108e:	091b      	lsrs	r3, r3, #4
 8001090:	461a      	mov	r2, r3
 8001092:	687b      	ldr	r3, [r7, #4]
 8001094:	601a      	str	r2, [r3, #0]
 8001096:	68fb      	ldr	r3, [r7, #12]
 8001098:	4618      	mov	r0, r3
 800109a:	3714      	adds	r7, #20
 800109c:	46bd      	mov	sp, r7
 800109e:	f85d 7b04 	ldr.w	r7, [sp], #4
 80010a2:	4770      	bx	lr
 80010a4:	cccccccd 	.word	0xcccccccd

080010a8 <skip_atoi>:
 80010a8:	b480      	push	{r7}
 80010aa:	b085      	sub	sp, #20
 80010ac:	af00      	add	r7, sp, #0
 80010ae:	6078      	str	r0, [r7, #4]
 80010b0:	2300      	movs	r3, #0
 80010b2:	60fb      	str	r3, [r7, #12]
 80010b4:	e00e      	b.n	80010d4 <skip_atoi+0x2c>
 80010b6:	68fa      	ldr	r2, [r7, #12]
 80010b8:	4613      	mov	r3, r2
 80010ba:	009b      	lsls	r3, r3, #2
 80010bc:	4413      	add	r3, r2
 80010be:	005b      	lsls	r3, r3, #1
 80010c0:	4618      	mov	r0, r3
 80010c2:	687b      	ldr	r3, [r7, #4]
 80010c4:	681b      	ldr	r3, [r3, #0]
 80010c6:	1c59      	adds	r1, r3, #1
 80010c8:	687a      	ldr	r2, [r7, #4]
 80010ca:	6011      	str	r1, [r2, #0]
 80010cc:	781b      	ldrb	r3, [r3, #0]
 80010ce:	4403      	add	r3, r0
 80010d0:	3b30      	subs	r3, #48	@ 0x30
 80010d2:	60fb      	str	r3, [r7, #12]
 80010d4:	687b      	ldr	r3, [r7, #4]
 80010d6:	681b      	ldr	r3, [r3, #0]
 80010d8:	781b      	ldrb	r3, [r3, #0]
 80010da:	3b30      	subs	r3, #48	@ 0x30
 80010dc:	2b09      	cmp	r3, #9
 80010de:	d9ea      	bls.n	80010b6 <skip_atoi+0xe>
 80010e0:	68fb      	ldr	r3, [r7, #12]
 80010e2:	4618      	mov	r0, r3
 80010e4:	3714      	adds	r7, #20
 80010e6:	46bd      	mov	sp, r7
 80010e8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80010ec:	4770      	bx	lr
	...

080010f0 <print_number>:
 80010f0:	b580      	push	{r7, lr}
 80010f2:	b08e      	sub	sp, #56	@ 0x38
 80010f4:	af00      	add	r7, sp, #0
 80010f6:	60f8      	str	r0, [r7, #12]
 80010f8:	60b9      	str	r1, [r7, #8]
 80010fa:	607a      	str	r2, [r7, #4]
 80010fc:	603b      	str	r3, [r7, #0]
 80010fe:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 8001100:	62bb      	str	r3, [r7, #40]	@ 0x28
 8001102:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 8001104:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8001106:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 8001108:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 800110c:	2b00      	cmp	r3, #0
 800110e:	d001      	beq.n	8001114 <print_number+0x24>
 8001110:	4b74      	ldr	r3, [pc, #464]	@ (80012e4 <print_number+0x1f4>)
 8001112:	e000      	b.n	8001116 <print_number+0x26>
 8001114:	4b74      	ldr	r3, [pc, #464]	@ (80012e8 <print_number+0x1f8>)
 8001116:	627b      	str	r3, [r7, #36]	@ 0x24
 8001118:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 800111a:	f003 0310 	and.w	r3, r3, #16
 800111e:	2b00      	cmp	r3, #0
 8001120:	d003      	beq.n	800112a <print_number+0x3a>
 8001122:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 8001124:	f023 0301 	bic.w	r3, r3, #1
 8001128:	64bb      	str	r3, [r7, #72]	@ 0x48
 800112a:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 800112c:	f003 0301 	and.w	r3, r3, #1
 8001130:	2b00      	cmp	r3, #0
 8001132:	d001      	beq.n	8001138 <print_number+0x48>
 8001134:	2330      	movs	r3, #48	@ 0x30
 8001136:	e000      	b.n	800113a <print_number+0x4a>
 8001138:	2320      	movs	r3, #32
 800113a:	f887 3023 	strb.w	r3, [r7, #35]	@ 0x23
 800113e:	2300      	movs	r3, #0
 8001140:	f887 3037 	strb.w	r3, [r7, #55]	@ 0x37
 8001144:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 8001146:	f003 0302 	and.w	r3, r3, #2
 800114a:	2b00      	cmp	r3, #0
 800114c:	d01a      	beq.n	8001184 <print_number+0x94>
 800114e:	687b      	ldr	r3, [r7, #4]
 8001150:	2b00      	cmp	r3, #0
 8001152:	da06      	bge.n	8001162 <print_number+0x72>
 8001154:	232d      	movs	r3, #45	@ 0x2d
 8001156:	f887 3037 	strb.w	r3, [r7, #55]	@ 0x37
 800115a:	687b      	ldr	r3, [r7, #4]
 800115c:	425b      	negs	r3, r3
 800115e:	607b      	str	r3, [r7, #4]
 8001160:	e010      	b.n	8001184 <print_number+0x94>
 8001162:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 8001164:	f003 0304 	and.w	r3, r3, #4
 8001168:	2b00      	cmp	r3, #0
 800116a:	d003      	beq.n	8001174 <print_number+0x84>
 800116c:	232b      	movs	r3, #43	@ 0x2b
 800116e:	f887 3037 	strb.w	r3, [r7, #55]	@ 0x37
 8001172:	e007      	b.n	8001184 <print_number+0x94>
 8001174:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 8001176:	f003 0308 	and.w	r3, r3, #8
 800117a:	2b00      	cmp	r3, #0
 800117c:	d002      	beq.n	8001184 <print_number+0x94>
 800117e:	2320      	movs	r3, #32
 8001180:	f887 3037 	strb.w	r3, [r7, #55]	@ 0x37
 8001184:	2300      	movs	r3, #0
 8001186:	633b      	str	r3, [r7, #48]	@ 0x30
 8001188:	687b      	ldr	r3, [r7, #4]
 800118a:	2b00      	cmp	r3, #0
 800118c:	d119      	bne.n	80011c2 <print_number+0xd2>
 800118e:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8001190:	1c5a      	adds	r2, r3, #1
 8001192:	633a      	str	r2, [r7, #48]	@ 0x30
 8001194:	3338      	adds	r3, #56	@ 0x38
 8001196:	443b      	add	r3, r7
 8001198:	2230      	movs	r2, #48	@ 0x30
 800119a:	f803 2c28 	strb.w	r2, [r3, #-40]
 800119e:	e013      	b.n	80011c8 <print_number+0xd8>
 80011a0:	1d3b      	adds	r3, r7, #4
 80011a2:	6839      	ldr	r1, [r7, #0]
 80011a4:	4618      	mov	r0, r3
 80011a6:	f7ff ff4b 	bl	8001040 <divide>
 80011aa:	4603      	mov	r3, r0
 80011ac:	461a      	mov	r2, r3
 80011ae:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80011b0:	441a      	add	r2, r3
 80011b2:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 80011b4:	1c59      	adds	r1, r3, #1
 80011b6:	6339      	str	r1, [r7, #48]	@ 0x30
 80011b8:	7812      	ldrb	r2, [r2, #0]
 80011ba:	3338      	adds	r3, #56	@ 0x38
 80011bc:	443b      	add	r3, r7
 80011be:	f803 2c28 	strb.w	r2, [r3, #-40]
 80011c2:	687b      	ldr	r3, [r7, #4]
 80011c4:	2b00      	cmp	r3, #0
 80011c6:	d1eb      	bne.n	80011a0 <print_number+0xb0>
 80011c8:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
 80011ca:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 80011cc:	429a      	cmp	r2, r3
 80011ce:	dd01      	ble.n	80011d4 <print_number+0xe4>
 80011d0:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 80011d2:	647b      	str	r3, [r7, #68]	@ 0x44
 80011d4:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 80011d6:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 80011d8:	1ad3      	subs	r3, r2, r3
 80011da:	62fb      	str	r3, [r7, #44]	@ 0x2c
 80011dc:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 80011de:	f003 0311 	and.w	r3, r3, #17
 80011e2:	2b00      	cmp	r3, #0
 80011e4:	d119      	bne.n	800121a <print_number+0x12a>
 80011e6:	f897 3037 	ldrb.w	r3, [r7, #55]	@ 0x37
 80011ea:	2b00      	cmp	r3, #0
 80011ec:	d010      	beq.n	8001210 <print_number+0x120>
 80011ee:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80011f0:	2b00      	cmp	r3, #0
 80011f2:	dd0d      	ble.n	8001210 <print_number+0x120>
 80011f4:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80011f6:	3b01      	subs	r3, #1
 80011f8:	62fb      	str	r3, [r7, #44]	@ 0x2c
 80011fa:	e009      	b.n	8001210 <print_number+0x120>
 80011fc:	68fa      	ldr	r2, [r7, #12]
 80011fe:	68bb      	ldr	r3, [r7, #8]
 8001200:	429a      	cmp	r2, r3
 8001202:	d202      	bcs.n	800120a <print_number+0x11a>
 8001204:	68fb      	ldr	r3, [r7, #12]
 8001206:	2220      	movs	r2, #32
 8001208:	701a      	strb	r2, [r3, #0]
 800120a:	68fb      	ldr	r3, [r7, #12]
 800120c:	3301      	adds	r3, #1
 800120e:	60fb      	str	r3, [r7, #12]
 8001210:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8001212:	1e5a      	subs	r2, r3, #1
 8001214:	62fa      	str	r2, [r7, #44]	@ 0x2c
 8001216:	2b00      	cmp	r3, #0
 8001218:	dcf0      	bgt.n	80011fc <print_number+0x10c>
 800121a:	f897 3037 	ldrb.w	r3, [r7, #55]	@ 0x37
 800121e:	2b00      	cmp	r3, #0
 8001220:	d00d      	beq.n	800123e <print_number+0x14e>
 8001222:	68fa      	ldr	r2, [r7, #12]
 8001224:	68bb      	ldr	r3, [r7, #8]
 8001226:	429a      	cmp	r2, r3
 8001228:	d203      	bcs.n	8001232 <print_number+0x142>
 800122a:	68fb      	ldr	r3, [r7, #12]
 800122c:	f897 2037 	ldrb.w	r2, [r7, #55]	@ 0x37
 8001230:	701a      	strb	r2, [r3, #0]
 8001232:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8001234:	3b01      	subs	r3, #1
 8001236:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8001238:	68fb      	ldr	r3, [r7, #12]
 800123a:	3301      	adds	r3, #1
 800123c:	60fb      	str	r3, [r7, #12]
 800123e:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 8001240:	f003 0310 	and.w	r3, r3, #16
 8001244:	2b00      	cmp	r3, #0
 8001246:	d11b      	bne.n	8001280 <print_number+0x190>
 8001248:	e00a      	b.n	8001260 <print_number+0x170>
 800124a:	68fa      	ldr	r2, [r7, #12]
 800124c:	68bb      	ldr	r3, [r7, #8]
 800124e:	429a      	cmp	r2, r3
 8001250:	d203      	bcs.n	800125a <print_number+0x16a>
 8001252:	68fb      	ldr	r3, [r7, #12]
 8001254:	f897 2023 	ldrb.w	r2, [r7, #35]	@ 0x23
 8001258:	701a      	strb	r2, [r3, #0]
 800125a:	68fb      	ldr	r3, [r7, #12]
 800125c:	3301      	adds	r3, #1
 800125e:	60fb      	str	r3, [r7, #12]
 8001260:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8001262:	1e5a      	subs	r2, r3, #1
 8001264:	62fa      	str	r2, [r7, #44]	@ 0x2c
 8001266:	2b00      	cmp	r3, #0
 8001268:	dcef      	bgt.n	800124a <print_number+0x15a>
 800126a:	e009      	b.n	8001280 <print_number+0x190>
 800126c:	68fa      	ldr	r2, [r7, #12]
 800126e:	68bb      	ldr	r3, [r7, #8]
 8001270:	429a      	cmp	r2, r3
 8001272:	d202      	bcs.n	800127a <print_number+0x18a>
 8001274:	68fb      	ldr	r3, [r7, #12]
 8001276:	2230      	movs	r2, #48	@ 0x30
 8001278:	701a      	strb	r2, [r3, #0]
 800127a:	68fb      	ldr	r3, [r7, #12]
 800127c:	3301      	adds	r3, #1
 800127e:	60fb      	str	r3, [r7, #12]
 8001280:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 8001282:	1e5a      	subs	r2, r3, #1
 8001284:	647a      	str	r2, [r7, #68]	@ 0x44
 8001286:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
 8001288:	429a      	cmp	r2, r3
 800128a:	dbef      	blt.n	800126c <print_number+0x17c>
 800128c:	e00d      	b.n	80012aa <print_number+0x1ba>
 800128e:	68fa      	ldr	r2, [r7, #12]
 8001290:	68bb      	ldr	r3, [r7, #8]
 8001292:	429a      	cmp	r2, r3
 8001294:	d206      	bcs.n	80012a4 <print_number+0x1b4>
 8001296:	f107 0210 	add.w	r2, r7, #16
 800129a:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 800129c:	4413      	add	r3, r2
 800129e:	781a      	ldrb	r2, [r3, #0]
 80012a0:	68fb      	ldr	r3, [r7, #12]
 80012a2:	701a      	strb	r2, [r3, #0]
 80012a4:	68fb      	ldr	r3, [r7, #12]
 80012a6:	3301      	adds	r3, #1
 80012a8:	60fb      	str	r3, [r7, #12]
 80012aa:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 80012ac:	1e5a      	subs	r2, r3, #1
 80012ae:	633a      	str	r2, [r7, #48]	@ 0x30
 80012b0:	2b00      	cmp	r3, #0
 80012b2:	dd0d      	ble.n	80012d0 <print_number+0x1e0>
 80012b4:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 80012b6:	2b00      	cmp	r3, #0
 80012b8:	d1e9      	bne.n	800128e <print_number+0x19e>
 80012ba:	e009      	b.n	80012d0 <print_number+0x1e0>
 80012bc:	68fa      	ldr	r2, [r7, #12]
 80012be:	68bb      	ldr	r3, [r7, #8]
 80012c0:	429a      	cmp	r2, r3
 80012c2:	d202      	bcs.n	80012ca <print_number+0x1da>
 80012c4:	68fb      	ldr	r3, [r7, #12]
 80012c6:	2220      	movs	r2, #32
 80012c8:	701a      	strb	r2, [r3, #0]
 80012ca:	68fb      	ldr	r3, [r7, #12]
 80012cc:	3301      	adds	r3, #1
 80012ce:	60fb      	str	r3, [r7, #12]
 80012d0:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80012d2:	1e5a      	subs	r2, r3, #1
 80012d4:	62fa      	str	r2, [r7, #44]	@ 0x2c
 80012d6:	2b00      	cmp	r3, #0
 80012d8:	dcf0      	bgt.n	80012bc <print_number+0x1cc>
 80012da:	68fb      	ldr	r3, [r7, #12]
 80012dc:	4618      	mov	r0, r3
 80012de:	3738      	adds	r7, #56	@ 0x38
 80012e0:	46bd      	mov	sp, r7
 80012e2:	bd80      	pop	{r7, pc}
 80012e4:	08002e94 	.word	0x08002e94
 80012e8:	08002ea8 	.word	0x08002ea8

080012ec <rt_vsnprintf>:
 80012ec:	b580      	push	{r7, lr}
 80012ee:	b092      	sub	sp, #72	@ 0x48
 80012f0:	af04      	add	r7, sp, #16
 80012f2:	60f8      	str	r0, [r7, #12]
 80012f4:	60b9      	str	r1, [r7, #8]
 80012f6:	607a      	str	r2, [r7, #4]
 80012f8:	603b      	str	r3, [r7, #0]
 80012fa:	68fb      	ldr	r3, [r7, #12]
 80012fc:	62bb      	str	r3, [r7, #40]	@ 0x28
 80012fe:	68fa      	ldr	r2, [r7, #12]
 8001300:	68bb      	ldr	r3, [r7, #8]
 8001302:	4413      	add	r3, r2
 8001304:	627b      	str	r3, [r7, #36]	@ 0x24
 8001306:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
 8001308:	68fb      	ldr	r3, [r7, #12]
 800130a:	429a      	cmp	r2, r3
 800130c:	f080 8226 	bcs.w	800175c <rt_vsnprintf+0x470>
 8001310:	f04f 33ff 	mov.w	r3, #4294967295
 8001314:	627b      	str	r3, [r7, #36]	@ 0x24
 8001316:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
 8001318:	68fb      	ldr	r3, [r7, #12]
 800131a:	1ad3      	subs	r3, r2, r3
 800131c:	60bb      	str	r3, [r7, #8]
 800131e:	e21d      	b.n	800175c <rt_vsnprintf+0x470>
 8001320:	687b      	ldr	r3, [r7, #4]
 8001322:	781b      	ldrb	r3, [r3, #0]
 8001324:	2b25      	cmp	r3, #37	@ 0x25
 8001326:	d00b      	beq.n	8001340 <rt_vsnprintf+0x54>
 8001328:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 800132a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800132c:	429a      	cmp	r2, r3
 800132e:	d203      	bcs.n	8001338 <rt_vsnprintf+0x4c>
 8001330:	687b      	ldr	r3, [r7, #4]
 8001332:	781a      	ldrb	r2, [r3, #0]
 8001334:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8001336:	701a      	strb	r2, [r3, #0]
 8001338:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800133a:	3301      	adds	r3, #1
 800133c:	62bb      	str	r3, [r7, #40]	@ 0x28
 800133e:	e20a      	b.n	8001756 <rt_vsnprintf+0x46a>
 8001340:	2300      	movs	r3, #0
 8001342:	77bb      	strb	r3, [r7, #30]
 8001344:	687b      	ldr	r3, [r7, #4]
 8001346:	3301      	adds	r3, #1
 8001348:	607b      	str	r3, [r7, #4]
 800134a:	687b      	ldr	r3, [r7, #4]
 800134c:	781b      	ldrb	r3, [r3, #0]
 800134e:	2b2d      	cmp	r3, #45	@ 0x2d
 8001350:	d104      	bne.n	800135c <rt_vsnprintf+0x70>
 8001352:	7fbb      	ldrb	r3, [r7, #30]
 8001354:	f043 0310 	orr.w	r3, r3, #16
 8001358:	77bb      	strb	r3, [r7, #30]
 800135a:	e7f3      	b.n	8001344 <rt_vsnprintf+0x58>
 800135c:	687b      	ldr	r3, [r7, #4]
 800135e:	781b      	ldrb	r3, [r3, #0]
 8001360:	2b2b      	cmp	r3, #43	@ 0x2b
 8001362:	d104      	bne.n	800136e <rt_vsnprintf+0x82>
 8001364:	7fbb      	ldrb	r3, [r7, #30]
 8001366:	f043 0304 	orr.w	r3, r3, #4
 800136a:	77bb      	strb	r3, [r7, #30]
 800136c:	e7ea      	b.n	8001344 <rt_vsnprintf+0x58>
 800136e:	687b      	ldr	r3, [r7, #4]
 8001370:	781b      	ldrb	r3, [r3, #0]
 8001372:	2b20      	cmp	r3, #32
 8001374:	d104      	bne.n	8001380 <rt_vsnprintf+0x94>
 8001376:	7fbb      	ldrb	r3, [r7, #30]
 8001378:	f043 0308 	orr.w	r3, r3, #8
 800137c:	77bb      	strb	r3, [r7, #30]
 800137e:	e7e1      	b.n	8001344 <rt_vsnprintf+0x58>
 8001380:	687b      	ldr	r3, [r7, #4]
 8001382:	781b      	ldrb	r3, [r3, #0]
 8001384:	2b23      	cmp	r3, #35	@ 0x23
 8001386:	d104      	bne.n	8001392 <rt_vsnprintf+0xa6>
 8001388:	7fbb      	ldrb	r3, [r7, #30]
 800138a:	f043 0320 	orr.w	r3, r3, #32
 800138e:	77bb      	strb	r3, [r7, #30]
 8001390:	e7d8      	b.n	8001344 <rt_vsnprintf+0x58>
 8001392:	687b      	ldr	r3, [r7, #4]
 8001394:	781b      	ldrb	r3, [r3, #0]
 8001396:	2b30      	cmp	r3, #48	@ 0x30
 8001398:	d104      	bne.n	80013a4 <rt_vsnprintf+0xb8>
 800139a:	7fbb      	ldrb	r3, [r7, #30]
 800139c:	f043 0301 	orr.w	r3, r3, #1
 80013a0:	77bb      	strb	r3, [r7, #30]
 80013a2:	e7cf      	b.n	8001344 <rt_vsnprintf+0x58>
 80013a4:	bf00      	nop
 80013a6:	f04f 33ff 	mov.w	r3, #4294967295
 80013aa:	61bb      	str	r3, [r7, #24]
 80013ac:	687b      	ldr	r3, [r7, #4]
 80013ae:	781b      	ldrb	r3, [r3, #0]
 80013b0:	3b30      	subs	r3, #48	@ 0x30
 80013b2:	2b09      	cmp	r3, #9
 80013b4:	d805      	bhi.n	80013c2 <rt_vsnprintf+0xd6>
 80013b6:	1d3b      	adds	r3, r7, #4
 80013b8:	4618      	mov	r0, r3
 80013ba:	f7ff fe75 	bl	80010a8 <skip_atoi>
 80013be:	61b8      	str	r0, [r7, #24]
 80013c0:	e015      	b.n	80013ee <rt_vsnprintf+0x102>
 80013c2:	687b      	ldr	r3, [r7, #4]
 80013c4:	781b      	ldrb	r3, [r3, #0]
 80013c6:	2b2a      	cmp	r3, #42	@ 0x2a
 80013c8:	d111      	bne.n	80013ee <rt_vsnprintf+0x102>
 80013ca:	687b      	ldr	r3, [r7, #4]
 80013cc:	3301      	adds	r3, #1
 80013ce:	607b      	str	r3, [r7, #4]
 80013d0:	683b      	ldr	r3, [r7, #0]
 80013d2:	1d1a      	adds	r2, r3, #4
 80013d4:	603a      	str	r2, [r7, #0]
 80013d6:	681b      	ldr	r3, [r3, #0]
 80013d8:	61bb      	str	r3, [r7, #24]
 80013da:	69bb      	ldr	r3, [r7, #24]
 80013dc:	2b00      	cmp	r3, #0
 80013de:	da06      	bge.n	80013ee <rt_vsnprintf+0x102>
 80013e0:	69bb      	ldr	r3, [r7, #24]
 80013e2:	425b      	negs	r3, r3
 80013e4:	61bb      	str	r3, [r7, #24]
 80013e6:	7fbb      	ldrb	r3, [r7, #30]
 80013e8:	f043 0310 	orr.w	r3, r3, #16
 80013ec:	77bb      	strb	r3, [r7, #30]
 80013ee:	f04f 33ff 	mov.w	r3, #4294967295
 80013f2:	617b      	str	r3, [r7, #20]
 80013f4:	687b      	ldr	r3, [r7, #4]
 80013f6:	781b      	ldrb	r3, [r3, #0]
 80013f8:	2b2e      	cmp	r3, #46	@ 0x2e
 80013fa:	d11e      	bne.n	800143a <rt_vsnprintf+0x14e>
 80013fc:	687b      	ldr	r3, [r7, #4]
 80013fe:	3301      	adds	r3, #1
 8001400:	607b      	str	r3, [r7, #4]
 8001402:	687b      	ldr	r3, [r7, #4]
 8001404:	781b      	ldrb	r3, [r3, #0]
 8001406:	3b30      	subs	r3, #48	@ 0x30
 8001408:	2b09      	cmp	r3, #9
 800140a:	d805      	bhi.n	8001418 <rt_vsnprintf+0x12c>
 800140c:	1d3b      	adds	r3, r7, #4
 800140e:	4618      	mov	r0, r3
 8001410:	f7ff fe4a 	bl	80010a8 <skip_atoi>
 8001414:	6178      	str	r0, [r7, #20]
 8001416:	e00b      	b.n	8001430 <rt_vsnprintf+0x144>
 8001418:	687b      	ldr	r3, [r7, #4]
 800141a:	781b      	ldrb	r3, [r3, #0]
 800141c:	2b2a      	cmp	r3, #42	@ 0x2a
 800141e:	d107      	bne.n	8001430 <rt_vsnprintf+0x144>
 8001420:	687b      	ldr	r3, [r7, #4]
 8001422:	3301      	adds	r3, #1
 8001424:	607b      	str	r3, [r7, #4]
 8001426:	683b      	ldr	r3, [r7, #0]
 8001428:	1d1a      	adds	r2, r3, #4
 800142a:	603a      	str	r2, [r7, #0]
 800142c:	681b      	ldr	r3, [r3, #0]
 800142e:	617b      	str	r3, [r7, #20]
 8001430:	697b      	ldr	r3, [r7, #20]
 8001432:	2b00      	cmp	r3, #0
 8001434:	da01      	bge.n	800143a <rt_vsnprintf+0x14e>
 8001436:	2300      	movs	r3, #0
 8001438:	617b      	str	r3, [r7, #20]
 800143a:	2300      	movs	r3, #0
 800143c:	777b      	strb	r3, [r7, #29]
 800143e:	687b      	ldr	r3, [r7, #4]
 8001440:	781b      	ldrb	r3, [r3, #0]
 8001442:	2b68      	cmp	r3, #104	@ 0x68
 8001444:	d003      	beq.n	800144e <rt_vsnprintf+0x162>
 8001446:	687b      	ldr	r3, [r7, #4]
 8001448:	781b      	ldrb	r3, [r3, #0]
 800144a:	2b6c      	cmp	r3, #108	@ 0x6c
 800144c:	d105      	bne.n	800145a <rt_vsnprintf+0x16e>
 800144e:	687b      	ldr	r3, [r7, #4]
 8001450:	781b      	ldrb	r3, [r3, #0]
 8001452:	777b      	strb	r3, [r7, #29]
 8001454:	687b      	ldr	r3, [r7, #4]
 8001456:	3301      	adds	r3, #1
 8001458:	607b      	str	r3, [r7, #4]
 800145a:	230a      	movs	r3, #10
 800145c:	77fb      	strb	r3, [r7, #31]
 800145e:	687b      	ldr	r3, [r7, #4]
 8001460:	781b      	ldrb	r3, [r3, #0]
 8001462:	2b25      	cmp	r3, #37	@ 0x25
 8001464:	f000 8108 	beq.w	8001678 <rt_vsnprintf+0x38c>
 8001468:	2b25      	cmp	r3, #37	@ 0x25
 800146a:	f2c0 811f 	blt.w	80016ac <rt_vsnprintf+0x3c0>
 800146e:	2b78      	cmp	r3, #120	@ 0x78
 8001470:	f300 811c 	bgt.w	80016ac <rt_vsnprintf+0x3c0>
 8001474:	2b58      	cmp	r3, #88	@ 0x58
 8001476:	f2c0 8119 	blt.w	80016ac <rt_vsnprintf+0x3c0>
 800147a:	3b58      	subs	r3, #88	@ 0x58
 800147c:	2b20      	cmp	r3, #32
 800147e:	f200 8115 	bhi.w	80016ac <rt_vsnprintf+0x3c0>
 8001482:	a201      	add	r2, pc, #4	@ (adr r2, 8001488 <rt_vsnprintf+0x19c>)
 8001484:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8001488:	08001695 	.word	0x08001695
 800148c:	080016ad 	.word	0x080016ad
 8001490:	080016ad 	.word	0x080016ad
 8001494:	080016ad 	.word	0x080016ad
 8001498:	080016ad 	.word	0x080016ad
 800149c:	080016ad 	.word	0x080016ad
 80014a0:	080016ad 	.word	0x080016ad
 80014a4:	080016ad 	.word	0x080016ad
 80014a8:	080016ad 	.word	0x080016ad
 80014ac:	080016ad 	.word	0x080016ad
 80014b0:	080016ad 	.word	0x080016ad
 80014b4:	0800150d 	.word	0x0800150d
 80014b8:	080016a3 	.word	0x080016a3
 80014bc:	080016ad 	.word	0x080016ad
 80014c0:	080016ad 	.word	0x080016ad
 80014c4:	080016ad 	.word	0x080016ad
 80014c8:	080016ad 	.word	0x080016ad
 80014cc:	080016a3 	.word	0x080016a3
 80014d0:	080016ad 	.word	0x080016ad
 80014d4:	080016ad 	.word	0x080016ad
 80014d8:	080016ad 	.word	0x080016ad
 80014dc:	080016ad 	.word	0x080016ad
 80014e0:	080016ad 	.word	0x080016ad
 80014e4:	0800168f 	.word	0x0800168f
 80014e8:	08001641 	.word	0x08001641
 80014ec:	080016ad 	.word	0x080016ad
 80014f0:	080016ad 	.word	0x080016ad
 80014f4:	0800157b 	.word	0x0800157b
 80014f8:	080016ad 	.word	0x080016ad
 80014fc:	080016e9 	.word	0x080016e9
 8001500:	080016ad 	.word	0x080016ad
 8001504:	080016ad 	.word	0x080016ad
 8001508:	0800169d 	.word	0x0800169d
 800150c:	7fbb      	ldrb	r3, [r7, #30]
 800150e:	f003 0310 	and.w	r3, r3, #16
 8001512:	2b00      	cmp	r3, #0
 8001514:	d110      	bne.n	8001538 <rt_vsnprintf+0x24c>
 8001516:	e009      	b.n	800152c <rt_vsnprintf+0x240>
 8001518:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 800151a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800151c:	429a      	cmp	r2, r3
 800151e:	d202      	bcs.n	8001526 <rt_vsnprintf+0x23a>
 8001520:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8001522:	2220      	movs	r2, #32
 8001524:	701a      	strb	r2, [r3, #0]
 8001526:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8001528:	3301      	adds	r3, #1
 800152a:	62bb      	str	r3, [r7, #40]	@ 0x28
 800152c:	69bb      	ldr	r3, [r7, #24]
 800152e:	3b01      	subs	r3, #1
 8001530:	61bb      	str	r3, [r7, #24]
 8001532:	69bb      	ldr	r3, [r7, #24]
 8001534:	2b00      	cmp	r3, #0
 8001536:	dcef      	bgt.n	8001518 <rt_vsnprintf+0x22c>
 8001538:	683b      	ldr	r3, [r7, #0]
 800153a:	1d1a      	adds	r2, r3, #4
 800153c:	603a      	str	r2, [r7, #0]
 800153e:	681b      	ldr	r3, [r3, #0]
 8001540:	74fb      	strb	r3, [r7, #19]
 8001542:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 8001544:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001546:	429a      	cmp	r2, r3
 8001548:	d202      	bcs.n	8001550 <rt_vsnprintf+0x264>
 800154a:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800154c:	7cfa      	ldrb	r2, [r7, #19]
 800154e:	701a      	strb	r2, [r3, #0]
 8001550:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8001552:	3301      	adds	r3, #1
 8001554:	62bb      	str	r3, [r7, #40]	@ 0x28
 8001556:	e009      	b.n	800156c <rt_vsnprintf+0x280>
 8001558:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 800155a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800155c:	429a      	cmp	r2, r3
 800155e:	d202      	bcs.n	8001566 <rt_vsnprintf+0x27a>
 8001560:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8001562:	2220      	movs	r2, #32
 8001564:	701a      	strb	r2, [r3, #0]
 8001566:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8001568:	3301      	adds	r3, #1
 800156a:	62bb      	str	r3, [r7, #40]	@ 0x28
 800156c:	69bb      	ldr	r3, [r7, #24]
 800156e:	3b01      	subs	r3, #1
 8001570:	61bb      	str	r3, [r7, #24]
 8001572:	69bb      	ldr	r3, [r7, #24]
 8001574:	2b00      	cmp	r3, #0
 8001576:	dcef      	bgt.n	8001558 <rt_vsnprintf+0x26c>
 8001578:	e0ed      	b.n	8001756 <rt_vsnprintf+0x46a>
 800157a:	683b      	ldr	r3, [r7, #0]
 800157c:	1d1a      	adds	r2, r3, #4
 800157e:	603a      	str	r2, [r7, #0]
 8001580:	681b      	ldr	r3, [r3, #0]
 8001582:	623b      	str	r3, [r7, #32]
 8001584:	6a3b      	ldr	r3, [r7, #32]
 8001586:	2b00      	cmp	r3, #0
 8001588:	d101      	bne.n	800158e <rt_vsnprintf+0x2a2>
 800158a:	4b82      	ldr	r3, [pc, #520]	@ (8001794 <rt_vsnprintf+0x4a8>)
 800158c:	623b      	str	r3, [r7, #32]
 800158e:	2300      	movs	r3, #0
 8001590:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8001592:	e002      	b.n	800159a <rt_vsnprintf+0x2ae>
 8001594:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8001596:	3301      	adds	r3, #1
 8001598:	62fb      	str	r3, [r7, #44]	@ 0x2c
 800159a:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 800159c:	69bb      	ldr	r3, [r7, #24]
 800159e:	429a      	cmp	r2, r3
 80015a0:	d005      	beq.n	80015ae <rt_vsnprintf+0x2c2>
 80015a2:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80015a4:	6a3a      	ldr	r2, [r7, #32]
 80015a6:	4413      	add	r3, r2
 80015a8:	781b      	ldrb	r3, [r3, #0]
 80015aa:	2b00      	cmp	r3, #0
 80015ac:	d1f2      	bne.n	8001594 <rt_vsnprintf+0x2a8>
 80015ae:	697b      	ldr	r3, [r7, #20]
 80015b0:	2b00      	cmp	r3, #0
 80015b2:	dd05      	ble.n	80015c0 <rt_vsnprintf+0x2d4>
 80015b4:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 80015b6:	697b      	ldr	r3, [r7, #20]
 80015b8:	429a      	cmp	r2, r3
 80015ba:	dd01      	ble.n	80015c0 <rt_vsnprintf+0x2d4>
 80015bc:	697b      	ldr	r3, [r7, #20]
 80015be:	62fb      	str	r3, [r7, #44]	@ 0x2c
 80015c0:	7fbb      	ldrb	r3, [r7, #30]
 80015c2:	f003 0310 	and.w	r3, r3, #16
 80015c6:	2b00      	cmp	r3, #0
 80015c8:	d110      	bne.n	80015ec <rt_vsnprintf+0x300>
 80015ca:	e009      	b.n	80015e0 <rt_vsnprintf+0x2f4>
 80015cc:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 80015ce:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80015d0:	429a      	cmp	r2, r3
 80015d2:	d202      	bcs.n	80015da <rt_vsnprintf+0x2ee>
 80015d4:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 80015d6:	2220      	movs	r2, #32
 80015d8:	701a      	strb	r2, [r3, #0]
 80015da:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 80015dc:	3301      	adds	r3, #1
 80015de:	62bb      	str	r3, [r7, #40]	@ 0x28
 80015e0:	69bb      	ldr	r3, [r7, #24]
 80015e2:	1e5a      	subs	r2, r3, #1
 80015e4:	61ba      	str	r2, [r7, #24]
 80015e6:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 80015e8:	429a      	cmp	r2, r3
 80015ea:	dbef      	blt.n	80015cc <rt_vsnprintf+0x2e0>
 80015ec:	2300      	movs	r3, #0
 80015ee:	633b      	str	r3, [r7, #48]	@ 0x30
 80015f0:	e010      	b.n	8001614 <rt_vsnprintf+0x328>
 80015f2:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 80015f4:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80015f6:	429a      	cmp	r2, r3
 80015f8:	d203      	bcs.n	8001602 <rt_vsnprintf+0x316>
 80015fa:	6a3b      	ldr	r3, [r7, #32]
 80015fc:	781a      	ldrb	r2, [r3, #0]
 80015fe:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8001600:	701a      	strb	r2, [r3, #0]
 8001602:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8001604:	3301      	adds	r3, #1
 8001606:	62bb      	str	r3, [r7, #40]	@ 0x28
 8001608:	6a3b      	ldr	r3, [r7, #32]
 800160a:	3301      	adds	r3, #1
 800160c:	623b      	str	r3, [r7, #32]
 800160e:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8001610:	3301      	adds	r3, #1
 8001612:	633b      	str	r3, [r7, #48]	@ 0x30
 8001614:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
 8001616:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8001618:	429a      	cmp	r2, r3
 800161a:	dbea      	blt.n	80015f2 <rt_vsnprintf+0x306>
 800161c:	e009      	b.n	8001632 <rt_vsnprintf+0x346>
 800161e:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 8001620:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001622:	429a      	cmp	r2, r3
 8001624:	d202      	bcs.n	800162c <rt_vsnprintf+0x340>
 8001626:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8001628:	2220      	movs	r2, #32
 800162a:	701a      	strb	r2, [r3, #0]
 800162c:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800162e:	3301      	adds	r3, #1
 8001630:	62bb      	str	r3, [r7, #40]	@ 0x28
 8001632:	69bb      	ldr	r3, [r7, #24]
 8001634:	1e5a      	subs	r2, r3, #1
 8001636:	61ba      	str	r2, [r7, #24]
 8001638:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 800163a:	429a      	cmp	r2, r3
 800163c:	dbef      	blt.n	800161e <rt_vsnprintf+0x332>
 800163e:	e08a      	b.n	8001756 <rt_vsnprintf+0x46a>
 8001640:	69bb      	ldr	r3, [r7, #24]
 8001642:	f1b3 3fff 	cmp.w	r3, #4294967295
 8001646:	d105      	bne.n	8001654 <rt_vsnprintf+0x368>
 8001648:	2308      	movs	r3, #8
 800164a:	61bb      	str	r3, [r7, #24]
 800164c:	7fbb      	ldrb	r3, [r7, #30]
 800164e:	f043 0301 	orr.w	r3, r3, #1
 8001652:	77bb      	strb	r3, [r7, #30]
 8001654:	683b      	ldr	r3, [r7, #0]
 8001656:	1d1a      	adds	r2, r3, #4
 8001658:	603a      	str	r2, [r7, #0]
 800165a:	681b      	ldr	r3, [r3, #0]
 800165c:	461a      	mov	r2, r3
 800165e:	7fbb      	ldrb	r3, [r7, #30]
 8001660:	9302      	str	r3, [sp, #8]
 8001662:	697b      	ldr	r3, [r7, #20]
 8001664:	9301      	str	r3, [sp, #4]
 8001666:	69bb      	ldr	r3, [r7, #24]
 8001668:	9300      	str	r3, [sp, #0]
 800166a:	2310      	movs	r3, #16
 800166c:	6a79      	ldr	r1, [r7, #36]	@ 0x24
 800166e:	6ab8      	ldr	r0, [r7, #40]	@ 0x28
 8001670:	f7ff fd3e 	bl	80010f0 <print_number>
 8001674:	62b8      	str	r0, [r7, #40]	@ 0x28
 8001676:	e06e      	b.n	8001756 <rt_vsnprintf+0x46a>
 8001678:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 800167a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800167c:	429a      	cmp	r2, r3
 800167e:	d202      	bcs.n	8001686 <rt_vsnprintf+0x39a>
 8001680:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8001682:	2225      	movs	r2, #37	@ 0x25
 8001684:	701a      	strb	r2, [r3, #0]
 8001686:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8001688:	3301      	adds	r3, #1
 800168a:	62bb      	str	r3, [r7, #40]	@ 0x28
 800168c:	e063      	b.n	8001756 <rt_vsnprintf+0x46a>
 800168e:	2308      	movs	r3, #8
 8001690:	77fb      	strb	r3, [r7, #31]
 8001692:	e02a      	b.n	80016ea <rt_vsnprintf+0x3fe>
 8001694:	7fbb      	ldrb	r3, [r7, #30]
 8001696:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 800169a:	77bb      	strb	r3, [r7, #30]
 800169c:	2310      	movs	r3, #16
 800169e:	77fb      	strb	r3, [r7, #31]
 80016a0:	e023      	b.n	80016ea <rt_vsnprintf+0x3fe>
 80016a2:	7fbb      	ldrb	r3, [r7, #30]
 80016a4:	f043 0302 	orr.w	r3, r3, #2
 80016a8:	77bb      	strb	r3, [r7, #30]
 80016aa:	e01d      	b.n	80016e8 <rt_vsnprintf+0x3fc>
 80016ac:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 80016ae:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80016b0:	429a      	cmp	r2, r3
 80016b2:	d202      	bcs.n	80016ba <rt_vsnprintf+0x3ce>
 80016b4:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 80016b6:	2225      	movs	r2, #37	@ 0x25
 80016b8:	701a      	strb	r2, [r3, #0]
 80016ba:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 80016bc:	3301      	adds	r3, #1
 80016be:	62bb      	str	r3, [r7, #40]	@ 0x28
 80016c0:	687b      	ldr	r3, [r7, #4]
 80016c2:	781b      	ldrb	r3, [r3, #0]
 80016c4:	2b00      	cmp	r3, #0
 80016c6:	d00b      	beq.n	80016e0 <rt_vsnprintf+0x3f4>
 80016c8:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 80016ca:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80016cc:	429a      	cmp	r2, r3
 80016ce:	d203      	bcs.n	80016d8 <rt_vsnprintf+0x3ec>
 80016d0:	687b      	ldr	r3, [r7, #4]
 80016d2:	781a      	ldrb	r2, [r3, #0]
 80016d4:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 80016d6:	701a      	strb	r2, [r3, #0]
 80016d8:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 80016da:	3301      	adds	r3, #1
 80016dc:	62bb      	str	r3, [r7, #40]	@ 0x28
 80016de:	e03a      	b.n	8001756 <rt_vsnprintf+0x46a>
 80016e0:	687b      	ldr	r3, [r7, #4]
 80016e2:	3b01      	subs	r3, #1
 80016e4:	607b      	str	r3, [r7, #4]
 80016e6:	e036      	b.n	8001756 <rt_vsnprintf+0x46a>
 80016e8:	bf00      	nop
 80016ea:	7f7b      	ldrb	r3, [r7, #29]
 80016ec:	2b6c      	cmp	r3, #108	@ 0x6c
 80016ee:	d109      	bne.n	8001704 <rt_vsnprintf+0x418>
 80016f0:	683b      	ldr	r3, [r7, #0]
 80016f2:	1d1a      	adds	r2, r3, #4
 80016f4:	603a      	str	r2, [r7, #0]
 80016f6:	681b      	ldr	r3, [r3, #0]
 80016f8:	637b      	str	r3, [r7, #52]	@ 0x34
 80016fa:	7fbb      	ldrb	r3, [r7, #30]
 80016fc:	f003 0302 	and.w	r3, r3, #2
 8001700:	2b00      	cmp	r3, #0
 8001702:	e01a      	b.n	800173a <rt_vsnprintf+0x44e>
 8001704:	7f7b      	ldrb	r3, [r7, #29]
 8001706:	2b68      	cmp	r3, #104	@ 0x68
 8001708:	d10e      	bne.n	8001728 <rt_vsnprintf+0x43c>
 800170a:	683b      	ldr	r3, [r7, #0]
 800170c:	1d1a      	adds	r2, r3, #4
 800170e:	603a      	str	r2, [r7, #0]
 8001710:	681b      	ldr	r3, [r3, #0]
 8001712:	b29b      	uxth	r3, r3
 8001714:	637b      	str	r3, [r7, #52]	@ 0x34
 8001716:	7fbb      	ldrb	r3, [r7, #30]
 8001718:	f003 0302 	and.w	r3, r3, #2
 800171c:	2b00      	cmp	r3, #0
 800171e:	d00c      	beq.n	800173a <rt_vsnprintf+0x44e>
 8001720:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 8001722:	b21b      	sxth	r3, r3
 8001724:	637b      	str	r3, [r7, #52]	@ 0x34
 8001726:	e008      	b.n	800173a <rt_vsnprintf+0x44e>
 8001728:	683b      	ldr	r3, [r7, #0]
 800172a:	1d1a      	adds	r2, r3, #4
 800172c:	603a      	str	r2, [r7, #0]
 800172e:	681b      	ldr	r3, [r3, #0]
 8001730:	637b      	str	r3, [r7, #52]	@ 0x34
 8001732:	7fbb      	ldrb	r3, [r7, #30]
 8001734:	f003 0302 	and.w	r3, r3, #2
 8001738:	2b00      	cmp	r3, #0
 800173a:	6b7a      	ldr	r2, [r7, #52]	@ 0x34
 800173c:	7ff9      	ldrb	r1, [r7, #31]
 800173e:	7fbb      	ldrb	r3, [r7, #30]
 8001740:	9302      	str	r3, [sp, #8]
 8001742:	697b      	ldr	r3, [r7, #20]
 8001744:	9301      	str	r3, [sp, #4]
 8001746:	69bb      	ldr	r3, [r7, #24]
 8001748:	9300      	str	r3, [sp, #0]
 800174a:	460b      	mov	r3, r1
 800174c:	6a79      	ldr	r1, [r7, #36]	@ 0x24
 800174e:	6ab8      	ldr	r0, [r7, #40]	@ 0x28
 8001750:	f7ff fcce 	bl	80010f0 <print_number>
 8001754:	62b8      	str	r0, [r7, #40]	@ 0x28
 8001756:	687b      	ldr	r3, [r7, #4]
 8001758:	3301      	adds	r3, #1
 800175a:	607b      	str	r3, [r7, #4]
 800175c:	687b      	ldr	r3, [r7, #4]
 800175e:	781b      	ldrb	r3, [r3, #0]
 8001760:	2b00      	cmp	r3, #0
 8001762:	f47f addd 	bne.w	8001320 <rt_vsnprintf+0x34>
 8001766:	68bb      	ldr	r3, [r7, #8]
 8001768:	2b00      	cmp	r3, #0
 800176a:	d00b      	beq.n	8001784 <rt_vsnprintf+0x498>
 800176c:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 800176e:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001770:	429a      	cmp	r2, r3
 8001772:	d203      	bcs.n	800177c <rt_vsnprintf+0x490>
 8001774:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8001776:	2200      	movs	r2, #0
 8001778:	701a      	strb	r2, [r3, #0]
 800177a:	e003      	b.n	8001784 <rt_vsnprintf+0x498>
 800177c:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800177e:	3b01      	subs	r3, #1
 8001780:	2200      	movs	r2, #0
 8001782:	701a      	strb	r2, [r3, #0]
 8001784:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 8001786:	68fb      	ldr	r3, [r7, #12]
 8001788:	1ad3      	subs	r3, r2, r3
 800178a:	4618      	mov	r0, r3
 800178c:	3738      	adds	r7, #56	@ 0x38
 800178e:	46bd      	mov	sp, r7
 8001790:	bd80      	pop	{r7, pc}
 8001792:	bf00      	nop
 8001794:	08002d7c 	.word	0x08002d7c

08001798 <rt_vsprintf>:
 8001798:	b580      	push	{r7, lr}
 800179a:	b084      	sub	sp, #16
 800179c:	af00      	add	r7, sp, #0
 800179e:	60f8      	str	r0, [r7, #12]
 80017a0:	60b9      	str	r1, [r7, #8]
 80017a2:	607a      	str	r2, [r7, #4]
 80017a4:	687b      	ldr	r3, [r7, #4]
 80017a6:	68ba      	ldr	r2, [r7, #8]
 80017a8:	f04f 31ff 	mov.w	r1, #4294967295
 80017ac:	68f8      	ldr	r0, [r7, #12]
 80017ae:	f7ff fd9d 	bl	80012ec <rt_vsnprintf>
 80017b2:	4603      	mov	r3, r0
 80017b4:	4618      	mov	r0, r3
 80017b6:	3710      	adds	r7, #16
 80017b8:	46bd      	mov	sp, r7
 80017ba:	bd80      	pop	{r7, pc}

080017bc <rt_sprintf>:
 80017bc:	b40e      	push	{r1, r2, r3}
 80017be:	b580      	push	{r7, lr}
 80017c0:	b085      	sub	sp, #20
 80017c2:	af00      	add	r7, sp, #0
 80017c4:	6078      	str	r0, [r7, #4]
 80017c6:	f107 0320 	add.w	r3, r7, #32
 80017ca:	60bb      	str	r3, [r7, #8]
 80017cc:	68ba      	ldr	r2, [r7, #8]
 80017ce:	69f9      	ldr	r1, [r7, #28]
 80017d0:	6878      	ldr	r0, [r7, #4]
 80017d2:	f7ff ffe1 	bl	8001798 <rt_vsprintf>
 80017d6:	60f8      	str	r0, [r7, #12]
 80017d8:	68fb      	ldr	r3, [r7, #12]
 80017da:	4618      	mov	r0, r3
 80017dc:	3714      	adds	r7, #20
 80017de:	46bd      	mov	sp, r7
 80017e0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80017e4:	b003      	add	sp, #12
 80017e6:	4770      	bx	lr

080017e8 <_heap_lock_init>:
 80017e8:	b480      	push	{r7}
 80017ea:	af00      	add	r7, sp, #0
 80017ec:	bf00      	nop
 80017ee:	46bd      	mov	sp, r7
 80017f0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80017f4:	4770      	bx	lr

080017f6 <_heap_lock>:
 80017f6:	b580      	push	{r7, lr}
 80017f8:	af00      	add	r7, sp, #0
 80017fa:	f000 fd93 	bl	8002324 <rt_enter_critical>
 80017fe:	2300      	movs	r3, #0
 8001800:	4618      	mov	r0, r3
 8001802:	bd80      	pop	{r7, pc}

08001804 <_heap_unlock>:
 8001804:	b580      	push	{r7, lr}
 8001806:	b082      	sub	sp, #8
 8001808:	af00      	add	r7, sp, #0
 800180a:	6078      	str	r0, [r7, #4]
 800180c:	f000 fda2 	bl	8002354 <rt_exit_critical>
 8001810:	bf00      	nop
 8001812:	3708      	adds	r7, #8
 8001814:	46bd      	mov	sp, r7
 8001816:	bd80      	pop	{r7, pc}

08001818 <rt_system_heap_init>:
 8001818:	b580      	push	{r7, lr}
 800181a:	b084      	sub	sp, #16
 800181c:	af00      	add	r7, sp, #0
 800181e:	6078      	str	r0, [r7, #4]
 8001820:	6039      	str	r1, [r7, #0]
 8001822:	687b      	ldr	r3, [r7, #4]
 8001824:	3303      	adds	r3, #3
 8001826:	f023 0303 	bic.w	r3, r3, #3
 800182a:	60fb      	str	r3, [r7, #12]
 800182c:	683b      	ldr	r3, [r7, #0]
 800182e:	f023 0303 	bic.w	r3, r3, #3
 8001832:	60bb      	str	r3, [r7, #8]
 8001834:	68ba      	ldr	r2, [r7, #8]
 8001836:	68fb      	ldr	r3, [r7, #12]
 8001838:	1ad3      	subs	r3, r2, r3
 800183a:	461a      	mov	r2, r3
 800183c:	6879      	ldr	r1, [r7, #4]
 800183e:	4806      	ldr	r0, [pc, #24]	@ (8001858 <rt_system_heap_init+0x40>)
 8001840:	f000 f8d8 	bl	80019f4 <rt_smem_init>
 8001844:	4603      	mov	r3, r0
 8001846:	4a05      	ldr	r2, [pc, #20]	@ (800185c <rt_system_heap_init+0x44>)
 8001848:	6013      	str	r3, [r2, #0]
 800184a:	f7ff ffcd 	bl	80017e8 <_heap_lock_init>
 800184e:	bf00      	nop
 8001850:	3710      	adds	r7, #16
 8001852:	46bd      	mov	sp, r7
 8001854:	bd80      	pop	{r7, pc}
 8001856:	bf00      	nop
 8001858:	08002d84 	.word	0x08002d84
 800185c:	20003e9c 	.word	0x20003e9c

08001860 <rt_malloc>:
 8001860:	b580      	push	{r7, lr}
 8001862:	b084      	sub	sp, #16
 8001864:	af00      	add	r7, sp, #0
 8001866:	6078      	str	r0, [r7, #4]
 8001868:	f7ff ffc5 	bl	80017f6 <_heap_lock>
 800186c:	60f8      	str	r0, [r7, #12]
 800186e:	4b07      	ldr	r3, [pc, #28]	@ (800188c <rt_malloc+0x2c>)
 8001870:	681b      	ldr	r3, [r3, #0]
 8001872:	6879      	ldr	r1, [r7, #4]
 8001874:	4618      	mov	r0, r3
 8001876:	f000 f935 	bl	8001ae4 <rt_smem_alloc>
 800187a:	60b8      	str	r0, [r7, #8]
 800187c:	68f8      	ldr	r0, [r7, #12]
 800187e:	f7ff ffc1 	bl	8001804 <_heap_unlock>
 8001882:	68bb      	ldr	r3, [r7, #8]
 8001884:	4618      	mov	r0, r3
 8001886:	3710      	adds	r7, #16
 8001888:	46bd      	mov	sp, r7
 800188a:	bd80      	pop	{r7, pc}
 800188c:	20003e9c 	.word	0x20003e9c

08001890 <rt_free>:
 8001890:	b580      	push	{r7, lr}
 8001892:	b084      	sub	sp, #16
 8001894:	af00      	add	r7, sp, #0
 8001896:	6078      	str	r0, [r7, #4]
 8001898:	687b      	ldr	r3, [r7, #4]
 800189a:	2b00      	cmp	r3, #0
 800189c:	d009      	beq.n	80018b2 <rt_free+0x22>
 800189e:	f7ff ffaa 	bl	80017f6 <_heap_lock>
 80018a2:	60f8      	str	r0, [r7, #12]
 80018a4:	6878      	ldr	r0, [r7, #4]
 80018a6:	f000 f9e7 	bl	8001c78 <rt_smem_free>
 80018aa:	68f8      	ldr	r0, [r7, #12]
 80018ac:	f7ff ffaa 	bl	8001804 <_heap_unlock>
 80018b0:	e000      	b.n	80018b4 <rt_free+0x24>
 80018b2:	bf00      	nop
 80018b4:	3710      	adds	r7, #16
 80018b6:	46bd      	mov	sp, r7
 80018b8:	bd80      	pop	{r7, pc}
	...

080018bc <__rt_ffs>:
 80018bc:	b480      	push	{r7}
 80018be:	b083      	sub	sp, #12
 80018c0:	af00      	add	r7, sp, #0
 80018c2:	6078      	str	r0, [r7, #4]
 80018c4:	687b      	ldr	r3, [r7, #4]
 80018c6:	2b00      	cmp	r3, #0
 80018c8:	d101      	bne.n	80018ce <__rt_ffs+0x12>
 80018ca:	2300      	movs	r3, #0
 80018cc:	e026      	b.n	800191c <__rt_ffs+0x60>
 80018ce:	687b      	ldr	r3, [r7, #4]
 80018d0:	b2db      	uxtb	r3, r3
 80018d2:	2b00      	cmp	r3, #0
 80018d4:	d005      	beq.n	80018e2 <__rt_ffs+0x26>
 80018d6:	687b      	ldr	r3, [r7, #4]
 80018d8:	b2db      	uxtb	r3, r3
 80018da:	4a13      	ldr	r2, [pc, #76]	@ (8001928 <__rt_ffs+0x6c>)
 80018dc:	5cd3      	ldrb	r3, [r2, r3]
 80018de:	3301      	adds	r3, #1
 80018e0:	e01c      	b.n	800191c <__rt_ffs+0x60>
 80018e2:	687b      	ldr	r3, [r7, #4]
 80018e4:	f403 437f 	and.w	r3, r3, #65280	@ 0xff00
 80018e8:	2b00      	cmp	r3, #0
 80018ea:	d006      	beq.n	80018fa <__rt_ffs+0x3e>
 80018ec:	687b      	ldr	r3, [r7, #4]
 80018ee:	121b      	asrs	r3, r3, #8
 80018f0:	b2db      	uxtb	r3, r3
 80018f2:	4a0d      	ldr	r2, [pc, #52]	@ (8001928 <__rt_ffs+0x6c>)
 80018f4:	5cd3      	ldrb	r3, [r2, r3]
 80018f6:	3309      	adds	r3, #9
 80018f8:	e010      	b.n	800191c <__rt_ffs+0x60>
 80018fa:	687b      	ldr	r3, [r7, #4]
 80018fc:	f403 037f 	and.w	r3, r3, #16711680	@ 0xff0000
 8001900:	2b00      	cmp	r3, #0
 8001902:	d006      	beq.n	8001912 <__rt_ffs+0x56>
 8001904:	687b      	ldr	r3, [r7, #4]
 8001906:	141b      	asrs	r3, r3, #16
 8001908:	b2db      	uxtb	r3, r3
 800190a:	4a07      	ldr	r2, [pc, #28]	@ (8001928 <__rt_ffs+0x6c>)
 800190c:	5cd3      	ldrb	r3, [r2, r3]
 800190e:	3311      	adds	r3, #17
 8001910:	e004      	b.n	800191c <__rt_ffs+0x60>
 8001912:	687b      	ldr	r3, [r7, #4]
 8001914:	0e1b      	lsrs	r3, r3, #24
 8001916:	4a04      	ldr	r2, [pc, #16]	@ (8001928 <__rt_ffs+0x6c>)
 8001918:	5cd3      	ldrb	r3, [r2, r3]
 800191a:	3319      	adds	r3, #25
 800191c:	4618      	mov	r0, r3
 800191e:	370c      	adds	r7, #12
 8001920:	46bd      	mov	sp, r7
 8001922:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001926:	4770      	bx	lr
 8001928:	08002d94 	.word	0x08002d94

0800192c <plug_holes>:
 800192c:	b480      	push	{r7}
 800192e:	b085      	sub	sp, #20
 8001930:	af00      	add	r7, sp, #0
 8001932:	6078      	str	r0, [r7, #4]
 8001934:	6039      	str	r1, [r7, #0]
 8001936:	687b      	ldr	r3, [r7, #4]
 8001938:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 800193a:	683b      	ldr	r3, [r7, #0]
 800193c:	685b      	ldr	r3, [r3, #4]
 800193e:	4413      	add	r3, r2
 8001940:	60fb      	str	r3, [r7, #12]
 8001942:	683a      	ldr	r2, [r7, #0]
 8001944:	68fb      	ldr	r3, [r7, #12]
 8001946:	429a      	cmp	r2, r3
 8001948:	d024      	beq.n	8001994 <plug_holes+0x68>
 800194a:	68fb      	ldr	r3, [r7, #12]
 800194c:	681b      	ldr	r3, [r3, #0]
 800194e:	f003 0301 	and.w	r3, r3, #1
 8001952:	2b00      	cmp	r3, #0
 8001954:	d11e      	bne.n	8001994 <plug_holes+0x68>
 8001956:	687b      	ldr	r3, [r7, #4]
 8001958:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800195a:	68fa      	ldr	r2, [r7, #12]
 800195c:	429a      	cmp	r2, r3
 800195e:	d019      	beq.n	8001994 <plug_holes+0x68>
 8001960:	687b      	ldr	r3, [r7, #4]
 8001962:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8001964:	68fa      	ldr	r2, [r7, #12]
 8001966:	429a      	cmp	r2, r3
 8001968:	d102      	bne.n	8001970 <plug_holes+0x44>
 800196a:	687b      	ldr	r3, [r7, #4]
 800196c:	683a      	ldr	r2, [r7, #0]
 800196e:	631a      	str	r2, [r3, #48]	@ 0x30
 8001970:	68fb      	ldr	r3, [r7, #12]
 8001972:	2200      	movs	r2, #0
 8001974:	601a      	str	r2, [r3, #0]
 8001976:	68fb      	ldr	r3, [r7, #12]
 8001978:	685a      	ldr	r2, [r3, #4]
 800197a:	683b      	ldr	r3, [r7, #0]
 800197c:	605a      	str	r2, [r3, #4]
 800197e:	687b      	ldr	r3, [r7, #4]
 8001980:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8001982:	683a      	ldr	r2, [r7, #0]
 8001984:	1ad1      	subs	r1, r2, r3
 8001986:	687b      	ldr	r3, [r7, #4]
 8001988:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 800198a:	68fb      	ldr	r3, [r7, #12]
 800198c:	685b      	ldr	r3, [r3, #4]
 800198e:	4413      	add	r3, r2
 8001990:	460a      	mov	r2, r1
 8001992:	609a      	str	r2, [r3, #8]
 8001994:	687b      	ldr	r3, [r7, #4]
 8001996:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 8001998:	683b      	ldr	r3, [r7, #0]
 800199a:	689b      	ldr	r3, [r3, #8]
 800199c:	4413      	add	r3, r2
 800199e:	60bb      	str	r3, [r7, #8]
 80019a0:	68ba      	ldr	r2, [r7, #8]
 80019a2:	683b      	ldr	r3, [r7, #0]
 80019a4:	429a      	cmp	r2, r3
 80019a6:	d01f      	beq.n	80019e8 <plug_holes+0xbc>
 80019a8:	68bb      	ldr	r3, [r7, #8]
 80019aa:	681b      	ldr	r3, [r3, #0]
 80019ac:	f003 0301 	and.w	r3, r3, #1
 80019b0:	2b00      	cmp	r3, #0
 80019b2:	d119      	bne.n	80019e8 <plug_holes+0xbc>
 80019b4:	687b      	ldr	r3, [r7, #4]
 80019b6:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80019b8:	683a      	ldr	r2, [r7, #0]
 80019ba:	429a      	cmp	r2, r3
 80019bc:	d102      	bne.n	80019c4 <plug_holes+0x98>
 80019be:	687b      	ldr	r3, [r7, #4]
 80019c0:	68ba      	ldr	r2, [r7, #8]
 80019c2:	631a      	str	r2, [r3, #48]	@ 0x30
 80019c4:	683b      	ldr	r3, [r7, #0]
 80019c6:	2200      	movs	r2, #0
 80019c8:	601a      	str	r2, [r3, #0]
 80019ca:	683b      	ldr	r3, [r7, #0]
 80019cc:	685a      	ldr	r2, [r3, #4]
 80019ce:	68bb      	ldr	r3, [r7, #8]
 80019d0:	605a      	str	r2, [r3, #4]
 80019d2:	687b      	ldr	r3, [r7, #4]
 80019d4:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 80019d6:	68ba      	ldr	r2, [r7, #8]
 80019d8:	1ad1      	subs	r1, r2, r3
 80019da:	687b      	ldr	r3, [r7, #4]
 80019dc:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 80019de:	683b      	ldr	r3, [r7, #0]
 80019e0:	685b      	ldr	r3, [r3, #4]
 80019e2:	4413      	add	r3, r2
 80019e4:	460a      	mov	r2, r1
 80019e6:	609a      	str	r2, [r3, #8]
 80019e8:	bf00      	nop
 80019ea:	3714      	adds	r7, #20
 80019ec:	46bd      	mov	sp, r7
 80019ee:	f85d 7b04 	ldr.w	r7, [sp], #4
 80019f2:	4770      	bx	lr

080019f4 <rt_smem_init>:
 80019f4:	b580      	push	{r7, lr}
 80019f6:	b08a      	sub	sp, #40	@ 0x28
 80019f8:	af00      	add	r7, sp, #0
 80019fa:	60f8      	str	r0, [r7, #12]
 80019fc:	60b9      	str	r1, [r7, #8]
 80019fe:	607a      	str	r2, [r7, #4]
 8001a00:	68bb      	ldr	r3, [r7, #8]
 8001a02:	3303      	adds	r3, #3
 8001a04:	f023 0303 	bic.w	r3, r3, #3
 8001a08:	627b      	str	r3, [r7, #36]	@ 0x24
 8001a0a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001a0c:	3338      	adds	r3, #56	@ 0x38
 8001a0e:	623b      	str	r3, [r7, #32]
 8001a10:	6a3b      	ldr	r3, [r7, #32]
 8001a12:	3303      	adds	r3, #3
 8001a14:	f023 0303 	bic.w	r3, r3, #3
 8001a18:	61fb      	str	r3, [r7, #28]
 8001a1a:	68ba      	ldr	r2, [r7, #8]
 8001a1c:	687b      	ldr	r3, [r7, #4]
 8001a1e:	4413      	add	r3, r2
 8001a20:	f023 0303 	bic.w	r3, r3, #3
 8001a24:	61bb      	str	r3, [r7, #24]
 8001a26:	69bb      	ldr	r3, [r7, #24]
 8001a28:	2b18      	cmp	r3, #24
 8001a2a:	d953      	bls.n	8001ad4 <rt_smem_init+0xe0>
 8001a2c:	69bb      	ldr	r3, [r7, #24]
 8001a2e:	3b18      	subs	r3, #24
 8001a30:	6a3a      	ldr	r2, [r7, #32]
 8001a32:	429a      	cmp	r2, r3
 8001a34:	d84e      	bhi.n	8001ad4 <rt_smem_init+0xe0>
 8001a36:	69ba      	ldr	r2, [r7, #24]
 8001a38:	69fb      	ldr	r3, [r7, #28]
 8001a3a:	1ad3      	subs	r3, r2, r3
 8001a3c:	3b18      	subs	r3, #24
 8001a3e:	617b      	str	r3, [r7, #20]
 8001a40:	2238      	movs	r2, #56	@ 0x38
 8001a42:	2100      	movs	r1, #0
 8001a44:	6a78      	ldr	r0, [r7, #36]	@ 0x24
 8001a46:	f7ff fa67 	bl	8000f18 <rt_memset>
 8001a4a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001a4c:	68fa      	ldr	r2, [r7, #12]
 8001a4e:	210c      	movs	r1, #12
 8001a50:	4618      	mov	r0, r3
 8001a52:	f000 f99b 	bl	8001d8c <rt_object_init>
 8001a56:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001a58:	4a21      	ldr	r2, [pc, #132]	@ (8001ae0 <rt_smem_init+0xec>)
 8001a5a:	615a      	str	r2, [r3, #20]
 8001a5c:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001a5e:	69fa      	ldr	r2, [r7, #28]
 8001a60:	619a      	str	r2, [r3, #24]
 8001a62:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001a64:	697a      	ldr	r2, [r7, #20]
 8001a66:	61da      	str	r2, [r3, #28]
 8001a68:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001a6a:	697a      	ldr	r2, [r7, #20]
 8001a6c:	635a      	str	r2, [r3, #52]	@ 0x34
 8001a6e:	69fa      	ldr	r2, [r7, #28]
 8001a70:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001a72:	629a      	str	r2, [r3, #40]	@ 0x28
 8001a74:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001a76:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8001a78:	613b      	str	r3, [r7, #16]
 8001a7a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001a7c:	f023 0201 	bic.w	r2, r3, #1
 8001a80:	693b      	ldr	r3, [r7, #16]
 8001a82:	601a      	str	r2, [r3, #0]
 8001a84:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001a86:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8001a88:	f103 020c 	add.w	r2, r3, #12
 8001a8c:	693b      	ldr	r3, [r7, #16]
 8001a8e:	605a      	str	r2, [r3, #4]
 8001a90:	693b      	ldr	r3, [r7, #16]
 8001a92:	2200      	movs	r2, #0
 8001a94:	609a      	str	r2, [r3, #8]
 8001a96:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001a98:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 8001a9a:	693b      	ldr	r3, [r7, #16]
 8001a9c:	685b      	ldr	r3, [r3, #4]
 8001a9e:	441a      	add	r2, r3
 8001aa0:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001aa2:	62da      	str	r2, [r3, #44]	@ 0x2c
 8001aa4:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
 8001aa6:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001aa8:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8001aaa:	f042 0201 	orr.w	r2, r2, #1
 8001aae:	601a      	str	r2, [r3, #0]
 8001ab0:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001ab2:	6b5a      	ldr	r2, [r3, #52]	@ 0x34
 8001ab4:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001ab6:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8001ab8:	320c      	adds	r2, #12
 8001aba:	605a      	str	r2, [r3, #4]
 8001abc:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001abe:	6b5a      	ldr	r2, [r3, #52]	@ 0x34
 8001ac0:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001ac2:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8001ac4:	320c      	adds	r2, #12
 8001ac6:	609a      	str	r2, [r3, #8]
 8001ac8:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001aca:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 8001acc:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001ace:	631a      	str	r2, [r3, #48]	@ 0x30
 8001ad0:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8001ad2:	e000      	b.n	8001ad6 <rt_smem_init+0xe2>
 8001ad4:	2300      	movs	r3, #0
 8001ad6:	4618      	mov	r0, r3
 8001ad8:	3728      	adds	r7, #40	@ 0x28
 8001ada:	46bd      	mov	sp, r7
 8001adc:	bd80      	pop	{r7, pc}
 8001ade:	bf00      	nop
 8001ae0:	08002d8c 	.word	0x08002d8c

08001ae4 <rt_smem_alloc>:
 8001ae4:	b480      	push	{r7}
 8001ae6:	b089      	sub	sp, #36	@ 0x24
 8001ae8:	af00      	add	r7, sp, #0
 8001aea:	6078      	str	r0, [r7, #4]
 8001aec:	6039      	str	r1, [r7, #0]
 8001aee:	683b      	ldr	r3, [r7, #0]
 8001af0:	2b00      	cmp	r3, #0
 8001af2:	d101      	bne.n	8001af8 <rt_smem_alloc+0x14>
 8001af4:	2300      	movs	r3, #0
 8001af6:	e0b9      	b.n	8001c6c <rt_smem_alloc+0x188>
 8001af8:	687b      	ldr	r3, [r7, #4]
 8001afa:	61bb      	str	r3, [r7, #24]
 8001afc:	683b      	ldr	r3, [r7, #0]
 8001afe:	3303      	adds	r3, #3
 8001b00:	f023 0303 	bic.w	r3, r3, #3
 8001b04:	603b      	str	r3, [r7, #0]
 8001b06:	683b      	ldr	r3, [r7, #0]
 8001b08:	2b0b      	cmp	r3, #11
 8001b0a:	d801      	bhi.n	8001b10 <rt_smem_alloc+0x2c>
 8001b0c:	230c      	movs	r3, #12
 8001b0e:	603b      	str	r3, [r7, #0]
 8001b10:	69bb      	ldr	r3, [r7, #24]
 8001b12:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8001b14:	683a      	ldr	r2, [r7, #0]
 8001b16:	429a      	cmp	r2, r3
 8001b18:	d901      	bls.n	8001b1e <rt_smem_alloc+0x3a>
 8001b1a:	2300      	movs	r3, #0
 8001b1c:	e0a6      	b.n	8001c6c <rt_smem_alloc+0x188>
 8001b1e:	69bb      	ldr	r3, [r7, #24]
 8001b20:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
 8001b22:	69bb      	ldr	r3, [r7, #24]
 8001b24:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8001b26:	1ad3      	subs	r3, r2, r3
 8001b28:	61fb      	str	r3, [r7, #28]
 8001b2a:	e096      	b.n	8001c5a <rt_smem_alloc+0x176>
 8001b2c:	69bb      	ldr	r3, [r7, #24]
 8001b2e:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 8001b30:	69fb      	ldr	r3, [r7, #28]
 8001b32:	4413      	add	r3, r2
 8001b34:	617b      	str	r3, [r7, #20]
 8001b36:	697b      	ldr	r3, [r7, #20]
 8001b38:	681b      	ldr	r3, [r3, #0]
 8001b3a:	f003 0301 	and.w	r3, r3, #1
 8001b3e:	2b00      	cmp	r3, #0
 8001b40:	f040 8085 	bne.w	8001c4e <rt_smem_alloc+0x16a>
 8001b44:	697b      	ldr	r3, [r7, #20]
 8001b46:	685a      	ldr	r2, [r3, #4]
 8001b48:	69fb      	ldr	r3, [r7, #28]
 8001b4a:	1ad3      	subs	r3, r2, r3
 8001b4c:	3b0c      	subs	r3, #12
 8001b4e:	683a      	ldr	r2, [r7, #0]
 8001b50:	429a      	cmp	r2, r3
 8001b52:	d87c      	bhi.n	8001c4e <rt_smem_alloc+0x16a>
 8001b54:	697b      	ldr	r3, [r7, #20]
 8001b56:	685a      	ldr	r2, [r3, #4]
 8001b58:	69fb      	ldr	r3, [r7, #28]
 8001b5a:	1ad3      	subs	r3, r2, r3
 8001b5c:	f1a3 020c 	sub.w	r2, r3, #12
 8001b60:	683b      	ldr	r3, [r7, #0]
 8001b62:	3318      	adds	r3, #24
 8001b64:	429a      	cmp	r2, r3
 8001b66:	d339      	bcc.n	8001bdc <rt_smem_alloc+0xf8>
 8001b68:	69fa      	ldr	r2, [r7, #28]
 8001b6a:	683b      	ldr	r3, [r7, #0]
 8001b6c:	4413      	add	r3, r2
 8001b6e:	330c      	adds	r3, #12
 8001b70:	613b      	str	r3, [r7, #16]
 8001b72:	69bb      	ldr	r3, [r7, #24]
 8001b74:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 8001b76:	693b      	ldr	r3, [r7, #16]
 8001b78:	4413      	add	r3, r2
 8001b7a:	60fb      	str	r3, [r7, #12]
 8001b7c:	69bb      	ldr	r3, [r7, #24]
 8001b7e:	f023 0201 	bic.w	r2, r3, #1
 8001b82:	68fb      	ldr	r3, [r7, #12]
 8001b84:	601a      	str	r2, [r3, #0]
 8001b86:	697b      	ldr	r3, [r7, #20]
 8001b88:	685a      	ldr	r2, [r3, #4]
 8001b8a:	68fb      	ldr	r3, [r7, #12]
 8001b8c:	605a      	str	r2, [r3, #4]
 8001b8e:	68fb      	ldr	r3, [r7, #12]
 8001b90:	69fa      	ldr	r2, [r7, #28]
 8001b92:	609a      	str	r2, [r3, #8]
 8001b94:	697b      	ldr	r3, [r7, #20]
 8001b96:	693a      	ldr	r2, [r7, #16]
 8001b98:	605a      	str	r2, [r3, #4]
 8001b9a:	68fb      	ldr	r3, [r7, #12]
 8001b9c:	685a      	ldr	r2, [r3, #4]
 8001b9e:	69bb      	ldr	r3, [r7, #24]
 8001ba0:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8001ba2:	330c      	adds	r3, #12
 8001ba4:	429a      	cmp	r2, r3
 8001ba6:	d006      	beq.n	8001bb6 <rt_smem_alloc+0xd2>
 8001ba8:	69bb      	ldr	r3, [r7, #24]
 8001baa:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 8001bac:	68fb      	ldr	r3, [r7, #12]
 8001bae:	685b      	ldr	r3, [r3, #4]
 8001bb0:	4413      	add	r3, r2
 8001bb2:	693a      	ldr	r2, [r7, #16]
 8001bb4:	609a      	str	r2, [r3, #8]
 8001bb6:	69bb      	ldr	r3, [r7, #24]
 8001bb8:	6a1a      	ldr	r2, [r3, #32]
 8001bba:	683b      	ldr	r3, [r7, #0]
 8001bbc:	4413      	add	r3, r2
 8001bbe:	f103 020c 	add.w	r2, r3, #12
 8001bc2:	69bb      	ldr	r3, [r7, #24]
 8001bc4:	621a      	str	r2, [r3, #32]
 8001bc6:	69bb      	ldr	r3, [r7, #24]
 8001bc8:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 8001bca:	69bb      	ldr	r3, [r7, #24]
 8001bcc:	6a1b      	ldr	r3, [r3, #32]
 8001bce:	429a      	cmp	r2, r3
 8001bd0:	d21a      	bcs.n	8001c08 <rt_smem_alloc+0x124>
 8001bd2:	69bb      	ldr	r3, [r7, #24]
 8001bd4:	6a1a      	ldr	r2, [r3, #32]
 8001bd6:	69bb      	ldr	r3, [r7, #24]
 8001bd8:	625a      	str	r2, [r3, #36]	@ 0x24
 8001bda:	e015      	b.n	8001c08 <rt_smem_alloc+0x124>
 8001bdc:	69bb      	ldr	r3, [r7, #24]
 8001bde:	6a1a      	ldr	r2, [r3, #32]
 8001be0:	697b      	ldr	r3, [r7, #20]
 8001be2:	685b      	ldr	r3, [r3, #4]
 8001be4:	69b9      	ldr	r1, [r7, #24]
 8001be6:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8001be8:	6978      	ldr	r0, [r7, #20]
 8001bea:	1a41      	subs	r1, r0, r1
 8001bec:	1a5b      	subs	r3, r3, r1
 8001bee:	441a      	add	r2, r3
 8001bf0:	69bb      	ldr	r3, [r7, #24]
 8001bf2:	621a      	str	r2, [r3, #32]
 8001bf4:	69bb      	ldr	r3, [r7, #24]
 8001bf6:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 8001bf8:	69bb      	ldr	r3, [r7, #24]
 8001bfa:	6a1b      	ldr	r3, [r3, #32]
 8001bfc:	429a      	cmp	r2, r3
 8001bfe:	d203      	bcs.n	8001c08 <rt_smem_alloc+0x124>
 8001c00:	69bb      	ldr	r3, [r7, #24]
 8001c02:	6a1a      	ldr	r2, [r3, #32]
 8001c04:	69bb      	ldr	r3, [r7, #24]
 8001c06:	625a      	str	r2, [r3, #36]	@ 0x24
 8001c08:	69bb      	ldr	r3, [r7, #24]
 8001c0a:	f043 0201 	orr.w	r2, r3, #1
 8001c0e:	697b      	ldr	r3, [r7, #20]
 8001c10:	601a      	str	r2, [r3, #0]
 8001c12:	69bb      	ldr	r3, [r7, #24]
 8001c14:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8001c16:	697a      	ldr	r2, [r7, #20]
 8001c18:	429a      	cmp	r2, r3
 8001c1a:	d115      	bne.n	8001c48 <rt_smem_alloc+0x164>
 8001c1c:	e007      	b.n	8001c2e <rt_smem_alloc+0x14a>
 8001c1e:	69bb      	ldr	r3, [r7, #24]
 8001c20:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 8001c22:	69bb      	ldr	r3, [r7, #24]
 8001c24:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8001c26:	685b      	ldr	r3, [r3, #4]
 8001c28:	441a      	add	r2, r3
 8001c2a:	69bb      	ldr	r3, [r7, #24]
 8001c2c:	631a      	str	r2, [r3, #48]	@ 0x30
 8001c2e:	69bb      	ldr	r3, [r7, #24]
 8001c30:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8001c32:	681b      	ldr	r3, [r3, #0]
 8001c34:	f003 0301 	and.w	r3, r3, #1
 8001c38:	2b00      	cmp	r3, #0
 8001c3a:	d005      	beq.n	8001c48 <rt_smem_alloc+0x164>
 8001c3c:	69bb      	ldr	r3, [r7, #24]
 8001c3e:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
 8001c40:	69bb      	ldr	r3, [r7, #24]
 8001c42:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8001c44:	429a      	cmp	r2, r3
 8001c46:	d1ea      	bne.n	8001c1e <rt_smem_alloc+0x13a>
 8001c48:	697b      	ldr	r3, [r7, #20]
 8001c4a:	330c      	adds	r3, #12
 8001c4c:	e00e      	b.n	8001c6c <rt_smem_alloc+0x188>
 8001c4e:	69bb      	ldr	r3, [r7, #24]
 8001c50:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 8001c52:	69fb      	ldr	r3, [r7, #28]
 8001c54:	4413      	add	r3, r2
 8001c56:	685b      	ldr	r3, [r3, #4]
 8001c58:	61fb      	str	r3, [r7, #28]
 8001c5a:	69bb      	ldr	r3, [r7, #24]
 8001c5c:	6b5a      	ldr	r2, [r3, #52]	@ 0x34
 8001c5e:	683b      	ldr	r3, [r7, #0]
 8001c60:	1ad3      	subs	r3, r2, r3
 8001c62:	69fa      	ldr	r2, [r7, #28]
 8001c64:	429a      	cmp	r2, r3
 8001c66:	f67f af61 	bls.w	8001b2c <rt_smem_alloc+0x48>
 8001c6a:	2300      	movs	r3, #0
 8001c6c:	4618      	mov	r0, r3
 8001c6e:	3724      	adds	r7, #36	@ 0x24
 8001c70:	46bd      	mov	sp, r7
 8001c72:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001c76:	4770      	bx	lr

08001c78 <rt_smem_free>:
 8001c78:	b580      	push	{r7, lr}
 8001c7a:	b084      	sub	sp, #16
 8001c7c:	af00      	add	r7, sp, #0
 8001c7e:	6078      	str	r0, [r7, #4]
 8001c80:	687b      	ldr	r3, [r7, #4]
 8001c82:	2b00      	cmp	r3, #0
 8001c84:	d026      	beq.n	8001cd4 <rt_smem_free+0x5c>
 8001c86:	687b      	ldr	r3, [r7, #4]
 8001c88:	3b0c      	subs	r3, #12
 8001c8a:	60fb      	str	r3, [r7, #12]
 8001c8c:	68fb      	ldr	r3, [r7, #12]
 8001c8e:	681b      	ldr	r3, [r3, #0]
 8001c90:	f023 0301 	bic.w	r3, r3, #1
 8001c94:	60bb      	str	r3, [r7, #8]
 8001c96:	68bb      	ldr	r3, [r7, #8]
 8001c98:	f023 0201 	bic.w	r2, r3, #1
 8001c9c:	68fb      	ldr	r3, [r7, #12]
 8001c9e:	601a      	str	r2, [r3, #0]
 8001ca0:	68bb      	ldr	r3, [r7, #8]
 8001ca2:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8001ca4:	68fa      	ldr	r2, [r7, #12]
 8001ca6:	429a      	cmp	r2, r3
 8001ca8:	d202      	bcs.n	8001cb0 <rt_smem_free+0x38>
 8001caa:	68bb      	ldr	r3, [r7, #8]
 8001cac:	68fa      	ldr	r2, [r7, #12]
 8001cae:	631a      	str	r2, [r3, #48]	@ 0x30
 8001cb0:	68bb      	ldr	r3, [r7, #8]
 8001cb2:	6a1a      	ldr	r2, [r3, #32]
 8001cb4:	68bb      	ldr	r3, [r7, #8]
 8001cb6:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8001cb8:	68f9      	ldr	r1, [r7, #12]
 8001cba:	1acb      	subs	r3, r1, r3
 8001cbc:	4619      	mov	r1, r3
 8001cbe:	68fb      	ldr	r3, [r7, #12]
 8001cc0:	685b      	ldr	r3, [r3, #4]
 8001cc2:	1acb      	subs	r3, r1, r3
 8001cc4:	441a      	add	r2, r3
 8001cc6:	68bb      	ldr	r3, [r7, #8]
 8001cc8:	621a      	str	r2, [r3, #32]
 8001cca:	68f9      	ldr	r1, [r7, #12]
 8001ccc:	68b8      	ldr	r0, [r7, #8]
 8001cce:	f7ff fe2d 	bl	800192c <plug_holes>
 8001cd2:	e000      	b.n	8001cd6 <rt_smem_free+0x5e>
 8001cd4:	bf00      	nop
 8001cd6:	3710      	adds	r7, #16
 8001cd8:	46bd      	mov	sp, r7
 8001cda:	bd80      	pop	{r7, pc}

08001cdc <rt_list_insert_after>:
 8001cdc:	b480      	push	{r7}
 8001cde:	b083      	sub	sp, #12
 8001ce0:	af00      	add	r7, sp, #0
 8001ce2:	6078      	str	r0, [r7, #4]
 8001ce4:	6039      	str	r1, [r7, #0]
 8001ce6:	687b      	ldr	r3, [r7, #4]
 8001ce8:	681b      	ldr	r3, [r3, #0]
 8001cea:	683a      	ldr	r2, [r7, #0]
 8001cec:	605a      	str	r2, [r3, #4]
 8001cee:	687b      	ldr	r3, [r7, #4]
 8001cf0:	681a      	ldr	r2, [r3, #0]
 8001cf2:	683b      	ldr	r3, [r7, #0]
 8001cf4:	601a      	str	r2, [r3, #0]
 8001cf6:	687b      	ldr	r3, [r7, #4]
 8001cf8:	683a      	ldr	r2, [r7, #0]
 8001cfa:	601a      	str	r2, [r3, #0]
 8001cfc:	683b      	ldr	r3, [r7, #0]
 8001cfe:	687a      	ldr	r2, [r7, #4]
 8001d00:	605a      	str	r2, [r3, #4]
 8001d02:	bf00      	nop
 8001d04:	370c      	adds	r7, #12
 8001d06:	46bd      	mov	sp, r7
 8001d08:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001d0c:	4770      	bx	lr

08001d0e <rt_list_remove>:
 8001d0e:	b480      	push	{r7}
 8001d10:	b083      	sub	sp, #12
 8001d12:	af00      	add	r7, sp, #0
 8001d14:	6078      	str	r0, [r7, #4]
 8001d16:	687b      	ldr	r3, [r7, #4]
 8001d18:	681b      	ldr	r3, [r3, #0]
 8001d1a:	687a      	ldr	r2, [r7, #4]
 8001d1c:	6852      	ldr	r2, [r2, #4]
 8001d1e:	605a      	str	r2, [r3, #4]
 8001d20:	687b      	ldr	r3, [r7, #4]
 8001d22:	685b      	ldr	r3, [r3, #4]
 8001d24:	687a      	ldr	r2, [r7, #4]
 8001d26:	6812      	ldr	r2, [r2, #0]
 8001d28:	601a      	str	r2, [r3, #0]
 8001d2a:	687b      	ldr	r3, [r7, #4]
 8001d2c:	687a      	ldr	r2, [r7, #4]
 8001d2e:	605a      	str	r2, [r3, #4]
 8001d30:	687b      	ldr	r3, [r7, #4]
 8001d32:	685a      	ldr	r2, [r3, #4]
 8001d34:	687b      	ldr	r3, [r7, #4]
 8001d36:	601a      	str	r2, [r3, #0]
 8001d38:	bf00      	nop
 8001d3a:	370c      	adds	r7, #12
 8001d3c:	46bd      	mov	sp, r7
 8001d3e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001d42:	4770      	bx	lr

08001d44 <rt_object_get_information>:
 8001d44:	b480      	push	{r7}
 8001d46:	b085      	sub	sp, #20
 8001d48:	af00      	add	r7, sp, #0
 8001d4a:	4603      	mov	r3, r0
 8001d4c:	71fb      	strb	r3, [r7, #7]
 8001d4e:	2300      	movs	r3, #0
 8001d50:	60fb      	str	r3, [r7, #12]
 8001d52:	e00f      	b.n	8001d74 <rt_object_get_information+0x30>
 8001d54:	4a0c      	ldr	r2, [pc, #48]	@ (8001d88 <rt_object_get_information+0x44>)
 8001d56:	68fb      	ldr	r3, [r7, #12]
 8001d58:	011b      	lsls	r3, r3, #4
 8001d5a:	4413      	add	r3, r2
 8001d5c:	781b      	ldrb	r3, [r3, #0]
 8001d5e:	79fa      	ldrb	r2, [r7, #7]
 8001d60:	429a      	cmp	r2, r3
 8001d62:	d104      	bne.n	8001d6e <rt_object_get_information+0x2a>
 8001d64:	68fb      	ldr	r3, [r7, #12]
 8001d66:	011b      	lsls	r3, r3, #4
 8001d68:	4a07      	ldr	r2, [pc, #28]	@ (8001d88 <rt_object_get_information+0x44>)
 8001d6a:	4413      	add	r3, r2
 8001d6c:	e006      	b.n	8001d7c <rt_object_get_information+0x38>
 8001d6e:	68fb      	ldr	r3, [r7, #12]
 8001d70:	3301      	adds	r3, #1
 8001d72:	60fb      	str	r3, [r7, #12]
 8001d74:	68fb      	ldr	r3, [r7, #12]
 8001d76:	2b04      	cmp	r3, #4
 8001d78:	ddec      	ble.n	8001d54 <rt_object_get_information+0x10>
 8001d7a:	2300      	movs	r3, #0
 8001d7c:	4618      	mov	r0, r3
 8001d7e:	3714      	adds	r7, #20
 8001d80:	46bd      	mov	sp, r7
 8001d82:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001d86:	4770      	bx	lr
 8001d88:	20000008 	.word	0x20000008

08001d8c <rt_object_init>:
 8001d8c:	b580      	push	{r7, lr}
 8001d8e:	b088      	sub	sp, #32
 8001d90:	af00      	add	r7, sp, #0
 8001d92:	60f8      	str	r0, [r7, #12]
 8001d94:	460b      	mov	r3, r1
 8001d96:	607a      	str	r2, [r7, #4]
 8001d98:	72fb      	strb	r3, [r7, #11]
 8001d9a:	2300      	movs	r3, #0
 8001d9c:	61fb      	str	r3, [r7, #28]
 8001d9e:	7afb      	ldrb	r3, [r7, #11]
 8001da0:	4618      	mov	r0, r3
 8001da2:	f7ff ffcf 	bl	8001d44 <rt_object_get_information>
 8001da6:	61b8      	str	r0, [r7, #24]
 8001da8:	f000 fabc 	bl	8002324 <rt_enter_critical>
 8001dac:	69bb      	ldr	r3, [r7, #24]
 8001dae:	685b      	ldr	r3, [r3, #4]
 8001db0:	61fb      	str	r3, [r7, #28]
 8001db2:	e005      	b.n	8001dc0 <rt_object_init+0x34>
 8001db4:	69fb      	ldr	r3, [r7, #28]
 8001db6:	3b0c      	subs	r3, #12
 8001db8:	613b      	str	r3, [r7, #16]
 8001dba:	69fb      	ldr	r3, [r7, #28]
 8001dbc:	681b      	ldr	r3, [r3, #0]
 8001dbe:	61fb      	str	r3, [r7, #28]
 8001dc0:	69bb      	ldr	r3, [r7, #24]
 8001dc2:	3304      	adds	r3, #4
 8001dc4:	69fa      	ldr	r2, [r7, #28]
 8001dc6:	429a      	cmp	r2, r3
 8001dc8:	d1f4      	bne.n	8001db4 <rt_object_init+0x28>
 8001dca:	f000 fac3 	bl	8002354 <rt_exit_critical>
 8001dce:	7afb      	ldrb	r3, [r7, #11]
 8001dd0:	f063 037f 	orn	r3, r3, #127	@ 0x7f
 8001dd4:	b2da      	uxtb	r2, r3
 8001dd6:	68fb      	ldr	r3, [r7, #12]
 8001dd8:	721a      	strb	r2, [r3, #8]
 8001dda:	68fb      	ldr	r3, [r7, #12]
 8001ddc:	2208      	movs	r2, #8
 8001dde:	6879      	ldr	r1, [r7, #4]
 8001de0:	4618      	mov	r0, r3
 8001de2:	f7ff f8f4 	bl	8000fce <rt_strncpy>
 8001de6:	f7fe f9d5 	bl	8000194 <rt_hw_interrupt_disable>
 8001dea:	6178      	str	r0, [r7, #20]
 8001dec:	69bb      	ldr	r3, [r7, #24]
 8001dee:	1d1a      	adds	r2, r3, #4
 8001df0:	68fb      	ldr	r3, [r7, #12]
 8001df2:	330c      	adds	r3, #12
 8001df4:	4619      	mov	r1, r3
 8001df6:	4610      	mov	r0, r2
 8001df8:	f7ff ff70 	bl	8001cdc <rt_list_insert_after>
 8001dfc:	6978      	ldr	r0, [r7, #20]
 8001dfe:	f7fe f9cd 	bl	800019c <rt_hw_interrupt_enable>
 8001e02:	bf00      	nop
 8001e04:	3720      	adds	r7, #32
 8001e06:	46bd      	mov	sp, r7
 8001e08:	bd80      	pop	{r7, pc}

08001e0a <rt_object_detach>:
 8001e0a:	b580      	push	{r7, lr}
 8001e0c:	b084      	sub	sp, #16
 8001e0e:	af00      	add	r7, sp, #0
 8001e10:	6078      	str	r0, [r7, #4]
 8001e12:	687b      	ldr	r3, [r7, #4]
 8001e14:	2200      	movs	r2, #0
 8001e16:	721a      	strb	r2, [r3, #8]
 8001e18:	f7fe f9bc 	bl	8000194 <rt_hw_interrupt_disable>
 8001e1c:	60f8      	str	r0, [r7, #12]
 8001e1e:	687b      	ldr	r3, [r7, #4]
 8001e20:	330c      	adds	r3, #12
 8001e22:	4618      	mov	r0, r3
 8001e24:	f7ff ff73 	bl	8001d0e <rt_list_remove>
 8001e28:	68f8      	ldr	r0, [r7, #12]
 8001e2a:	f7fe f9b7 	bl	800019c <rt_hw_interrupt_enable>
 8001e2e:	bf00      	nop
 8001e30:	3710      	adds	r7, #16
 8001e32:	46bd      	mov	sp, r7
 8001e34:	bd80      	pop	{r7, pc}

08001e36 <rt_object_allocate>:
 8001e36:	b580      	push	{r7, lr}
 8001e38:	b086      	sub	sp, #24
 8001e3a:	af00      	add	r7, sp, #0
 8001e3c:	4603      	mov	r3, r0
 8001e3e:	6039      	str	r1, [r7, #0]
 8001e40:	71fb      	strb	r3, [r7, #7]
 8001e42:	79fb      	ldrb	r3, [r7, #7]
 8001e44:	4618      	mov	r0, r3
 8001e46:	f7ff ff7d 	bl	8001d44 <rt_object_get_information>
 8001e4a:	6178      	str	r0, [r7, #20]
 8001e4c:	697b      	ldr	r3, [r7, #20]
 8001e4e:	68db      	ldr	r3, [r3, #12]
 8001e50:	4618      	mov	r0, r3
 8001e52:	f7ff fd05 	bl	8001860 <rt_malloc>
 8001e56:	6138      	str	r0, [r7, #16]
 8001e58:	693b      	ldr	r3, [r7, #16]
 8001e5a:	2b00      	cmp	r3, #0
 8001e5c:	d101      	bne.n	8001e62 <rt_object_allocate+0x2c>
 8001e5e:	2300      	movs	r3, #0
 8001e60:	e021      	b.n	8001ea6 <rt_object_allocate+0x70>
 8001e62:	697b      	ldr	r3, [r7, #20]
 8001e64:	68db      	ldr	r3, [r3, #12]
 8001e66:	461a      	mov	r2, r3
 8001e68:	2100      	movs	r1, #0
 8001e6a:	6938      	ldr	r0, [r7, #16]
 8001e6c:	f7ff f854 	bl	8000f18 <rt_memset>
 8001e70:	693b      	ldr	r3, [r7, #16]
 8001e72:	79fa      	ldrb	r2, [r7, #7]
 8001e74:	721a      	strb	r2, [r3, #8]
 8001e76:	693b      	ldr	r3, [r7, #16]
 8001e78:	2200      	movs	r2, #0
 8001e7a:	725a      	strb	r2, [r3, #9]
 8001e7c:	693b      	ldr	r3, [r7, #16]
 8001e7e:	2208      	movs	r2, #8
 8001e80:	6839      	ldr	r1, [r7, #0]
 8001e82:	4618      	mov	r0, r3
 8001e84:	f7ff f8a3 	bl	8000fce <rt_strncpy>
 8001e88:	f7fe f984 	bl	8000194 <rt_hw_interrupt_disable>
 8001e8c:	60f8      	str	r0, [r7, #12]
 8001e8e:	697b      	ldr	r3, [r7, #20]
 8001e90:	1d1a      	adds	r2, r3, #4
 8001e92:	693b      	ldr	r3, [r7, #16]
 8001e94:	330c      	adds	r3, #12
 8001e96:	4619      	mov	r1, r3
 8001e98:	4610      	mov	r0, r2
 8001e9a:	f7ff ff1f 	bl	8001cdc <rt_list_insert_after>
 8001e9e:	68f8      	ldr	r0, [r7, #12]
 8001ea0:	f7fe f97c 	bl	800019c <rt_hw_interrupt_enable>
 8001ea4:	693b      	ldr	r3, [r7, #16]
 8001ea6:	4618      	mov	r0, r3
 8001ea8:	3718      	adds	r7, #24
 8001eaa:	46bd      	mov	sp, r7
 8001eac:	bd80      	pop	{r7, pc}

08001eae <rt_object_delete>:
 8001eae:	b580      	push	{r7, lr}
 8001eb0:	b084      	sub	sp, #16
 8001eb2:	af00      	add	r7, sp, #0
 8001eb4:	6078      	str	r0, [r7, #4]
 8001eb6:	687b      	ldr	r3, [r7, #4]
 8001eb8:	2200      	movs	r2, #0
 8001eba:	721a      	strb	r2, [r3, #8]
 8001ebc:	f7fe f96a 	bl	8000194 <rt_hw_interrupt_disable>
 8001ec0:	60f8      	str	r0, [r7, #12]
 8001ec2:	687b      	ldr	r3, [r7, #4]
 8001ec4:	330c      	adds	r3, #12
 8001ec6:	4618      	mov	r0, r3
 8001ec8:	f7ff ff21 	bl	8001d0e <rt_list_remove>
 8001ecc:	68f8      	ldr	r0, [r7, #12]
 8001ece:	f7fe f965 	bl	800019c <rt_hw_interrupt_enable>
 8001ed2:	6878      	ldr	r0, [r7, #4]
 8001ed4:	f7ff fcdc 	bl	8001890 <rt_free>
 8001ed8:	bf00      	nop
 8001eda:	3710      	adds	r7, #16
 8001edc:	46bd      	mov	sp, r7
 8001ede:	bd80      	pop	{r7, pc}

08001ee0 <rt_object_is_systemobject>:
 8001ee0:	b480      	push	{r7}
 8001ee2:	b083      	sub	sp, #12
 8001ee4:	af00      	add	r7, sp, #0
 8001ee6:	6078      	str	r0, [r7, #4]
 8001ee8:	687b      	ldr	r3, [r7, #4]
 8001eea:	7a1b      	ldrb	r3, [r3, #8]
 8001eec:	b25b      	sxtb	r3, r3
 8001eee:	2b00      	cmp	r3, #0
 8001ef0:	da01      	bge.n	8001ef6 <rt_object_is_systemobject+0x16>
 8001ef2:	2301      	movs	r3, #1
 8001ef4:	e000      	b.n	8001ef8 <rt_object_is_systemobject+0x18>
 8001ef6:	2300      	movs	r3, #0
 8001ef8:	4618      	mov	r0, r3
 8001efa:	370c      	adds	r7, #12
 8001efc:	46bd      	mov	sp, r7
 8001efe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001f02:	4770      	bx	lr

08001f04 <rt_list_init>:
 8001f04:	b480      	push	{r7}
 8001f06:	b083      	sub	sp, #12
 8001f08:	af00      	add	r7, sp, #0
 8001f0a:	6078      	str	r0, [r7, #4]
 8001f0c:	687b      	ldr	r3, [r7, #4]
 8001f0e:	687a      	ldr	r2, [r7, #4]
 8001f10:	605a      	str	r2, [r3, #4]
 8001f12:	687b      	ldr	r3, [r7, #4]
 8001f14:	685a      	ldr	r2, [r3, #4]
 8001f16:	687b      	ldr	r3, [r7, #4]
 8001f18:	601a      	str	r2, [r3, #0]
 8001f1a:	bf00      	nop
 8001f1c:	370c      	adds	r7, #12
 8001f1e:	46bd      	mov	sp, r7
 8001f20:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001f24:	4770      	bx	lr

08001f26 <rt_list_insert_after>:
 8001f26:	b480      	push	{r7}
 8001f28:	b083      	sub	sp, #12
 8001f2a:	af00      	add	r7, sp, #0
 8001f2c:	6078      	str	r0, [r7, #4]
 8001f2e:	6039      	str	r1, [r7, #0]
 8001f30:	687b      	ldr	r3, [r7, #4]
 8001f32:	681b      	ldr	r3, [r3, #0]
 8001f34:	683a      	ldr	r2, [r7, #0]
 8001f36:	605a      	str	r2, [r3, #4]
 8001f38:	687b      	ldr	r3, [r7, #4]
 8001f3a:	681a      	ldr	r2, [r3, #0]
 8001f3c:	683b      	ldr	r3, [r7, #0]
 8001f3e:	601a      	str	r2, [r3, #0]
 8001f40:	687b      	ldr	r3, [r7, #4]
 8001f42:	683a      	ldr	r2, [r7, #0]
 8001f44:	601a      	str	r2, [r3, #0]
 8001f46:	683b      	ldr	r3, [r7, #0]
 8001f48:	687a      	ldr	r2, [r7, #4]
 8001f4a:	605a      	str	r2, [r3, #4]
 8001f4c:	bf00      	nop
 8001f4e:	370c      	adds	r7, #12
 8001f50:	46bd      	mov	sp, r7
 8001f52:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001f56:	4770      	bx	lr

08001f58 <rt_list_insert_before>:
 8001f58:	b480      	push	{r7}
 8001f5a:	b083      	sub	sp, #12
 8001f5c:	af00      	add	r7, sp, #0
 8001f5e:	6078      	str	r0, [r7, #4]
 8001f60:	6039      	str	r1, [r7, #0]
 8001f62:	687b      	ldr	r3, [r7, #4]
 8001f64:	685b      	ldr	r3, [r3, #4]
 8001f66:	683a      	ldr	r2, [r7, #0]
 8001f68:	601a      	str	r2, [r3, #0]
 8001f6a:	687b      	ldr	r3, [r7, #4]
 8001f6c:	685a      	ldr	r2, [r3, #4]
 8001f6e:	683b      	ldr	r3, [r7, #0]
 8001f70:	605a      	str	r2, [r3, #4]
 8001f72:	687b      	ldr	r3, [r7, #4]
 8001f74:	683a      	ldr	r2, [r7, #0]
 8001f76:	605a      	str	r2, [r3, #4]
 8001f78:	683b      	ldr	r3, [r7, #0]
 8001f7a:	687a      	ldr	r2, [r7, #4]
 8001f7c:	601a      	str	r2, [r3, #0]
 8001f7e:	bf00      	nop
 8001f80:	370c      	adds	r7, #12
 8001f82:	46bd      	mov	sp, r7
 8001f84:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001f88:	4770      	bx	lr

08001f8a <rt_list_remove>:
 8001f8a:	b480      	push	{r7}
 8001f8c:	b083      	sub	sp, #12
 8001f8e:	af00      	add	r7, sp, #0
 8001f90:	6078      	str	r0, [r7, #4]
 8001f92:	687b      	ldr	r3, [r7, #4]
 8001f94:	681b      	ldr	r3, [r3, #0]
 8001f96:	687a      	ldr	r2, [r7, #4]
 8001f98:	6852      	ldr	r2, [r2, #4]
 8001f9a:	605a      	str	r2, [r3, #4]
 8001f9c:	687b      	ldr	r3, [r7, #4]
 8001f9e:	685b      	ldr	r3, [r3, #4]
 8001fa0:	687a      	ldr	r2, [r7, #4]
 8001fa2:	6812      	ldr	r2, [r2, #0]
 8001fa4:	601a      	str	r2, [r3, #0]
 8001fa6:	687b      	ldr	r3, [r7, #4]
 8001fa8:	687a      	ldr	r2, [r7, #4]
 8001faa:	605a      	str	r2, [r3, #4]
 8001fac:	687b      	ldr	r3, [r7, #4]
 8001fae:	685a      	ldr	r2, [r3, #4]
 8001fb0:	687b      	ldr	r3, [r7, #4]
 8001fb2:	601a      	str	r2, [r3, #0]
 8001fb4:	bf00      	nop
 8001fb6:	370c      	adds	r7, #12
 8001fb8:	46bd      	mov	sp, r7
 8001fba:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001fbe:	4770      	bx	lr

08001fc0 <rt_list_isempty>:
 8001fc0:	b480      	push	{r7}
 8001fc2:	b083      	sub	sp, #12
 8001fc4:	af00      	add	r7, sp, #0
 8001fc6:	6078      	str	r0, [r7, #4]
 8001fc8:	687b      	ldr	r3, [r7, #4]
 8001fca:	681b      	ldr	r3, [r3, #0]
 8001fcc:	687a      	ldr	r2, [r7, #4]
 8001fce:	429a      	cmp	r2, r3
 8001fd0:	bf0c      	ite	eq
 8001fd2:	2301      	moveq	r3, #1
 8001fd4:	2300      	movne	r3, #0
 8001fd6:	b2db      	uxtb	r3, r3
 8001fd8:	4618      	mov	r0, r3
 8001fda:	370c      	adds	r7, #12
 8001fdc:	46bd      	mov	sp, r7
 8001fde:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001fe2:	4770      	bx	lr

08001fe4 <_scheduler_get_highest_priority_thread>:
 8001fe4:	b580      	push	{r7, lr}
 8001fe6:	b084      	sub	sp, #16
 8001fe8:	af00      	add	r7, sp, #0
 8001fea:	6078      	str	r0, [r7, #4]
 8001fec:	4b0a      	ldr	r3, [pc, #40]	@ (8002018 <_scheduler_get_highest_priority_thread+0x34>)
 8001fee:	681b      	ldr	r3, [r3, #0]
 8001ff0:	4618      	mov	r0, r3
 8001ff2:	f7ff fc63 	bl	80018bc <__rt_ffs>
 8001ff6:	4603      	mov	r3, r0
 8001ff8:	3b01      	subs	r3, #1
 8001ffa:	60fb      	str	r3, [r7, #12]
 8001ffc:	4a07      	ldr	r2, [pc, #28]	@ (800201c <_scheduler_get_highest_priority_thread+0x38>)
 8001ffe:	68fb      	ldr	r3, [r7, #12]
 8002000:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
 8002004:	3b14      	subs	r3, #20
 8002006:	60bb      	str	r3, [r7, #8]
 8002008:	687b      	ldr	r3, [r7, #4]
 800200a:	68fa      	ldr	r2, [r7, #12]
 800200c:	601a      	str	r2, [r3, #0]
 800200e:	68bb      	ldr	r3, [r7, #8]
 8002010:	4618      	mov	r0, r3
 8002012:	3710      	adds	r7, #16
 8002014:	46bd      	mov	sp, r7
 8002016:	bd80      	pop	{r7, pc}
 8002018:	20003fa0 	.word	0x20003fa0
 800201c:	20003ea0 	.word	0x20003ea0

08002020 <rt_system_scheduler_init>:
 8002020:	b580      	push	{r7, lr}
 8002022:	b082      	sub	sp, #8
 8002024:	af00      	add	r7, sp, #0
 8002026:	4b0d      	ldr	r3, [pc, #52]	@ (800205c <rt_system_scheduler_init+0x3c>)
 8002028:	2200      	movs	r2, #0
 800202a:	801a      	strh	r2, [r3, #0]
 800202c:	2300      	movs	r3, #0
 800202e:	607b      	str	r3, [r7, #4]
 8002030:	e009      	b.n	8002046 <rt_system_scheduler_init+0x26>
 8002032:	687b      	ldr	r3, [r7, #4]
 8002034:	00db      	lsls	r3, r3, #3
 8002036:	4a0a      	ldr	r2, [pc, #40]	@ (8002060 <rt_system_scheduler_init+0x40>)
 8002038:	4413      	add	r3, r2
 800203a:	4618      	mov	r0, r3
 800203c:	f7ff ff62 	bl	8001f04 <rt_list_init>
 8002040:	687b      	ldr	r3, [r7, #4]
 8002042:	3301      	adds	r3, #1
 8002044:	607b      	str	r3, [r7, #4]
 8002046:	687b      	ldr	r3, [r7, #4]
 8002048:	2b1f      	cmp	r3, #31
 800204a:	ddf2      	ble.n	8002032 <rt_system_scheduler_init+0x12>
 800204c:	4b05      	ldr	r3, [pc, #20]	@ (8002064 <rt_system_scheduler_init+0x44>)
 800204e:	2200      	movs	r2, #0
 8002050:	601a      	str	r2, [r3, #0]
 8002052:	bf00      	nop
 8002054:	3708      	adds	r7, #8
 8002056:	46bd      	mov	sp, r7
 8002058:	bd80      	pop	{r7, pc}
 800205a:	bf00      	nop
 800205c:	20003fa4 	.word	0x20003fa4
 8002060:	20003ea0 	.word	0x20003ea0
 8002064:	20003fa0 	.word	0x20003fa0

08002068 <rt_system_scheduler_start>:
 8002068:	b580      	push	{r7, lr}
 800206a:	b082      	sub	sp, #8
 800206c:	af00      	add	r7, sp, #0
 800206e:	463b      	mov	r3, r7
 8002070:	4618      	mov	r0, r3
 8002072:	f7ff ffb7 	bl	8001fe4 <_scheduler_get_highest_priority_thread>
 8002076:	6078      	str	r0, [r7, #4]
 8002078:	4a09      	ldr	r2, [pc, #36]	@ (80020a0 <rt_system_scheduler_start+0x38>)
 800207a:	687b      	ldr	r3, [r7, #4]
 800207c:	6013      	str	r3, [r2, #0]
 800207e:	6878      	ldr	r0, [r7, #4]
 8002080:	f000 f924 	bl	80022cc <rt_schedule_remove_thread>
 8002084:	687b      	ldr	r3, [r7, #4]
 8002086:	2203      	movs	r2, #3
 8002088:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 800208c:	687b      	ldr	r3, [r7, #4]
 800208e:	331c      	adds	r3, #28
 8002090:	4618      	mov	r0, r3
 8002092:	f7fe f8cc 	bl	800022e <rt_hw_context_switch_to>
 8002096:	bf00      	nop
 8002098:	3708      	adds	r7, #8
 800209a:	46bd      	mov	sp, r7
 800209c:	bd80      	pop	{r7, pc}
 800209e:	bf00      	nop
 80020a0:	20003fa8 	.word	0x20003fa8

080020a4 <rt_schedule>:
 80020a4:	b580      	push	{r7, lr}
 80020a6:	b086      	sub	sp, #24
 80020a8:	af00      	add	r7, sp, #0
 80020aa:	f7fe f873 	bl	8000194 <rt_hw_interrupt_disable>
 80020ae:	60f8      	str	r0, [r7, #12]
 80020b0:	4b52      	ldr	r3, [pc, #328]	@ (80021fc <rt_schedule+0x158>)
 80020b2:	f9b3 3000 	ldrsh.w	r3, [r3]
 80020b6:	2b00      	cmp	r3, #0
 80020b8:	f040 8098 	bne.w	80021ec <rt_schedule+0x148>
 80020bc:	4b50      	ldr	r3, [pc, #320]	@ (8002200 <rt_schedule+0x15c>)
 80020be:	681b      	ldr	r3, [r3, #0]
 80020c0:	2b00      	cmp	r3, #0
 80020c2:	f000 8093 	beq.w	80021ec <rt_schedule+0x148>
 80020c6:	2300      	movs	r3, #0
 80020c8:	613b      	str	r3, [r7, #16]
 80020ca:	1d3b      	adds	r3, r7, #4
 80020cc:	4618      	mov	r0, r3
 80020ce:	f7ff ff89 	bl	8001fe4 <_scheduler_get_highest_priority_thread>
 80020d2:	6178      	str	r0, [r7, #20]
 80020d4:	4b4b      	ldr	r3, [pc, #300]	@ (8002204 <rt_schedule+0x160>)
 80020d6:	681b      	ldr	r3, [r3, #0]
 80020d8:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 80020dc:	f003 0307 	and.w	r3, r3, #7
 80020e0:	2b03      	cmp	r3, #3
 80020e2:	d12c      	bne.n	800213e <rt_schedule+0x9a>
 80020e4:	4b47      	ldr	r3, [pc, #284]	@ (8002204 <rt_schedule+0x160>)
 80020e6:	681b      	ldr	r3, [r3, #0]
 80020e8:	f893 3035 	ldrb.w	r3, [r3, #53]	@ 0x35
 80020ec:	461a      	mov	r2, r3
 80020ee:	687b      	ldr	r3, [r7, #4]
 80020f0:	429a      	cmp	r2, r3
 80020f2:	d203      	bcs.n	80020fc <rt_schedule+0x58>
 80020f4:	4b43      	ldr	r3, [pc, #268]	@ (8002204 <rt_schedule+0x160>)
 80020f6:	681b      	ldr	r3, [r3, #0]
 80020f8:	617b      	str	r3, [r7, #20]
 80020fa:	e015      	b.n	8002128 <rt_schedule+0x84>
 80020fc:	4b41      	ldr	r3, [pc, #260]	@ (8002204 <rt_schedule+0x160>)
 80020fe:	681b      	ldr	r3, [r3, #0]
 8002100:	f893 3035 	ldrb.w	r3, [r3, #53]	@ 0x35
 8002104:	461a      	mov	r2, r3
 8002106:	687b      	ldr	r3, [r7, #4]
 8002108:	429a      	cmp	r2, r3
 800210a:	d10b      	bne.n	8002124 <rt_schedule+0x80>
 800210c:	4b3d      	ldr	r3, [pc, #244]	@ (8002204 <rt_schedule+0x160>)
 800210e:	681b      	ldr	r3, [r3, #0]
 8002110:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 8002114:	f003 0308 	and.w	r3, r3, #8
 8002118:	2b00      	cmp	r3, #0
 800211a:	d103      	bne.n	8002124 <rt_schedule+0x80>
 800211c:	4b39      	ldr	r3, [pc, #228]	@ (8002204 <rt_schedule+0x160>)
 800211e:	681b      	ldr	r3, [r3, #0]
 8002120:	617b      	str	r3, [r7, #20]
 8002122:	e001      	b.n	8002128 <rt_schedule+0x84>
 8002124:	2301      	movs	r3, #1
 8002126:	613b      	str	r3, [r7, #16]
 8002128:	4b36      	ldr	r3, [pc, #216]	@ (8002204 <rt_schedule+0x160>)
 800212a:	681b      	ldr	r3, [r3, #0]
 800212c:	f893 2034 	ldrb.w	r2, [r3, #52]	@ 0x34
 8002130:	4b34      	ldr	r3, [pc, #208]	@ (8002204 <rt_schedule+0x160>)
 8002132:	681b      	ldr	r3, [r3, #0]
 8002134:	f022 0208 	bic.w	r2, r2, #8
 8002138:	b2d2      	uxtb	r2, r2
 800213a:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 800213e:	4b31      	ldr	r3, [pc, #196]	@ (8002204 <rt_schedule+0x160>)
 8002140:	681b      	ldr	r3, [r3, #0]
 8002142:	697a      	ldr	r2, [r7, #20]
 8002144:	429a      	cmp	r2, r3
 8002146:	d03c      	beq.n	80021c2 <rt_schedule+0x11e>
 8002148:	687b      	ldr	r3, [r7, #4]
 800214a:	b2da      	uxtb	r2, r3
 800214c:	4b2e      	ldr	r3, [pc, #184]	@ (8002208 <rt_schedule+0x164>)
 800214e:	701a      	strb	r2, [r3, #0]
 8002150:	4b2c      	ldr	r3, [pc, #176]	@ (8002204 <rt_schedule+0x160>)
 8002152:	681b      	ldr	r3, [r3, #0]
 8002154:	60bb      	str	r3, [r7, #8]
 8002156:	4a2b      	ldr	r2, [pc, #172]	@ (8002204 <rt_schedule+0x160>)
 8002158:	697b      	ldr	r3, [r7, #20]
 800215a:	6013      	str	r3, [r2, #0]
 800215c:	693b      	ldr	r3, [r7, #16]
 800215e:	2b00      	cmp	r3, #0
 8002160:	d002      	beq.n	8002168 <rt_schedule+0xc4>
 8002162:	68b8      	ldr	r0, [r7, #8]
 8002164:	f000 f854 	bl	8002210 <rt_schedule_insert_thread>
 8002168:	6978      	ldr	r0, [r7, #20]
 800216a:	f000 f8af 	bl	80022cc <rt_schedule_remove_thread>
 800216e:	697b      	ldr	r3, [r7, #20]
 8002170:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 8002174:	b25b      	sxtb	r3, r3
 8002176:	f023 0307 	bic.w	r3, r3, #7
 800217a:	b25b      	sxtb	r3, r3
 800217c:	f043 0303 	orr.w	r3, r3, #3
 8002180:	b25b      	sxtb	r3, r3
 8002182:	b2da      	uxtb	r2, r3
 8002184:	697b      	ldr	r3, [r7, #20]
 8002186:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 800218a:	4b20      	ldr	r3, [pc, #128]	@ (800220c <rt_schedule+0x168>)
 800218c:	781b      	ldrb	r3, [r3, #0]
 800218e:	b2db      	uxtb	r3, r3
 8002190:	2b00      	cmp	r3, #0
 8002192:	d10c      	bne.n	80021ae <rt_schedule+0x10a>
 8002194:	68bb      	ldr	r3, [r7, #8]
 8002196:	331c      	adds	r3, #28
 8002198:	461a      	mov	r2, r3
 800219a:	697b      	ldr	r3, [r7, #20]
 800219c:	331c      	adds	r3, #28
 800219e:	4619      	mov	r1, r3
 80021a0:	4610      	mov	r0, r2
 80021a2:	f7fd fffe 	bl	80001a2 <rt_hw_context_switch>
 80021a6:	68f8      	ldr	r0, [r7, #12]
 80021a8:	f7fd fff8 	bl	800019c <rt_hw_interrupt_enable>
 80021ac:	e022      	b.n	80021f4 <rt_schedule+0x150>
 80021ae:	68bb      	ldr	r3, [r7, #8]
 80021b0:	331c      	adds	r3, #28
 80021b2:	461a      	mov	r2, r3
 80021b4:	697b      	ldr	r3, [r7, #20]
 80021b6:	331c      	adds	r3, #28
 80021b8:	4619      	mov	r1, r3
 80021ba:	4610      	mov	r0, r2
 80021bc:	f7fd fff1 	bl	80001a2 <rt_hw_context_switch>
 80021c0:	e014      	b.n	80021ec <rt_schedule+0x148>
 80021c2:	4b10      	ldr	r3, [pc, #64]	@ (8002204 <rt_schedule+0x160>)
 80021c4:	681b      	ldr	r3, [r3, #0]
 80021c6:	4618      	mov	r0, r3
 80021c8:	f000 f880 	bl	80022cc <rt_schedule_remove_thread>
 80021cc:	4b0d      	ldr	r3, [pc, #52]	@ (8002204 <rt_schedule+0x160>)
 80021ce:	681b      	ldr	r3, [r3, #0]
 80021d0:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 80021d4:	b25b      	sxtb	r3, r3
 80021d6:	f023 0307 	bic.w	r3, r3, #7
 80021da:	b25b      	sxtb	r3, r3
 80021dc:	f043 0303 	orr.w	r3, r3, #3
 80021e0:	b25a      	sxtb	r2, r3
 80021e2:	4b08      	ldr	r3, [pc, #32]	@ (8002204 <rt_schedule+0x160>)
 80021e4:	681b      	ldr	r3, [r3, #0]
 80021e6:	b2d2      	uxtb	r2, r2
 80021e8:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 80021ec:	68f8      	ldr	r0, [r7, #12]
 80021ee:	f7fd ffd5 	bl	800019c <rt_hw_interrupt_enable>
 80021f2:	bf00      	nop
 80021f4:	3718      	adds	r7, #24
 80021f6:	46bd      	mov	sp, r7
 80021f8:	bd80      	pop	{r7, pc}
 80021fa:	bf00      	nop
 80021fc:	20003fa4 	.word	0x20003fa4
 8002200:	20003fa0 	.word	0x20003fa0
 8002204:	20003fa8 	.word	0x20003fa8
 8002208:	20003fac 	.word	0x20003fac
 800220c:	20003e98 	.word	0x20003e98

08002210 <rt_schedule_insert_thread>:
 8002210:	b580      	push	{r7, lr}
 8002212:	b084      	sub	sp, #16
 8002214:	af00      	add	r7, sp, #0
 8002216:	6078      	str	r0, [r7, #4]
 8002218:	f7fd ffbc 	bl	8000194 <rt_hw_interrupt_disable>
 800221c:	60f8      	str	r0, [r7, #12]
 800221e:	4b28      	ldr	r3, [pc, #160]	@ (80022c0 <rt_schedule_insert_thread+0xb0>)
 8002220:	681b      	ldr	r3, [r3, #0]
 8002222:	687a      	ldr	r2, [r7, #4]
 8002224:	429a      	cmp	r2, r3
 8002226:	d10e      	bne.n	8002246 <rt_schedule_insert_thread+0x36>
 8002228:	687b      	ldr	r3, [r7, #4]
 800222a:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 800222e:	b25b      	sxtb	r3, r3
 8002230:	f023 0307 	bic.w	r3, r3, #7
 8002234:	b25b      	sxtb	r3, r3
 8002236:	f043 0303 	orr.w	r3, r3, #3
 800223a:	b25b      	sxtb	r3, r3
 800223c:	b2da      	uxtb	r2, r3
 800223e:	687b      	ldr	r3, [r7, #4]
 8002240:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8002244:	e034      	b.n	80022b0 <rt_schedule_insert_thread+0xa0>
 8002246:	687b      	ldr	r3, [r7, #4]
 8002248:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 800224c:	b25b      	sxtb	r3, r3
 800224e:	f023 0307 	bic.w	r3, r3, #7
 8002252:	b25b      	sxtb	r3, r3
 8002254:	f043 0301 	orr.w	r3, r3, #1
 8002258:	b25b      	sxtb	r3, r3
 800225a:	b2da      	uxtb	r2, r3
 800225c:	687b      	ldr	r3, [r7, #4]
 800225e:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8002262:	687b      	ldr	r3, [r7, #4]
 8002264:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 8002268:	f003 0308 	and.w	r3, r3, #8
 800226c:	2b00      	cmp	r3, #0
 800226e:	d00c      	beq.n	800228a <rt_schedule_insert_thread+0x7a>
 8002270:	687b      	ldr	r3, [r7, #4]
 8002272:	f893 3035 	ldrb.w	r3, [r3, #53]	@ 0x35
 8002276:	00db      	lsls	r3, r3, #3
 8002278:	4a12      	ldr	r2, [pc, #72]	@ (80022c4 <rt_schedule_insert_thread+0xb4>)
 800227a:	441a      	add	r2, r3
 800227c:	687b      	ldr	r3, [r7, #4]
 800227e:	3314      	adds	r3, #20
 8002280:	4619      	mov	r1, r3
 8002282:	4610      	mov	r0, r2
 8002284:	f7ff fe68 	bl	8001f58 <rt_list_insert_before>
 8002288:	e00b      	b.n	80022a2 <rt_schedule_insert_thread+0x92>
 800228a:	687b      	ldr	r3, [r7, #4]
 800228c:	f893 3035 	ldrb.w	r3, [r3, #53]	@ 0x35
 8002290:	00db      	lsls	r3, r3, #3
 8002292:	4a0c      	ldr	r2, [pc, #48]	@ (80022c4 <rt_schedule_insert_thread+0xb4>)
 8002294:	441a      	add	r2, r3
 8002296:	687b      	ldr	r3, [r7, #4]
 8002298:	3314      	adds	r3, #20
 800229a:	4619      	mov	r1, r3
 800229c:	4610      	mov	r0, r2
 800229e:	f7ff fe42 	bl	8001f26 <rt_list_insert_after>
 80022a2:	687b      	ldr	r3, [r7, #4]
 80022a4:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 80022a6:	4b08      	ldr	r3, [pc, #32]	@ (80022c8 <rt_schedule_insert_thread+0xb8>)
 80022a8:	681b      	ldr	r3, [r3, #0]
 80022aa:	4313      	orrs	r3, r2
 80022ac:	4a06      	ldr	r2, [pc, #24]	@ (80022c8 <rt_schedule_insert_thread+0xb8>)
 80022ae:	6013      	str	r3, [r2, #0]
 80022b0:	68f8      	ldr	r0, [r7, #12]
 80022b2:	f7fd ff73 	bl	800019c <rt_hw_interrupt_enable>
 80022b6:	bf00      	nop
 80022b8:	3710      	adds	r7, #16
 80022ba:	46bd      	mov	sp, r7
 80022bc:	bd80      	pop	{r7, pc}
 80022be:	bf00      	nop
 80022c0:	20003fa8 	.word	0x20003fa8
 80022c4:	20003ea0 	.word	0x20003ea0
 80022c8:	20003fa0 	.word	0x20003fa0

080022cc <rt_schedule_remove_thread>:
 80022cc:	b580      	push	{r7, lr}
 80022ce:	b084      	sub	sp, #16
 80022d0:	af00      	add	r7, sp, #0
 80022d2:	6078      	str	r0, [r7, #4]
 80022d4:	f7fd ff5e 	bl	8000194 <rt_hw_interrupt_disable>
 80022d8:	60f8      	str	r0, [r7, #12]
 80022da:	687b      	ldr	r3, [r7, #4]
 80022dc:	3314      	adds	r3, #20
 80022de:	4618      	mov	r0, r3
 80022e0:	f7ff fe53 	bl	8001f8a <rt_list_remove>
 80022e4:	687b      	ldr	r3, [r7, #4]
 80022e6:	f893 3035 	ldrb.w	r3, [r3, #53]	@ 0x35
 80022ea:	00db      	lsls	r3, r3, #3
 80022ec:	4a0b      	ldr	r2, [pc, #44]	@ (800231c <rt_schedule_remove_thread+0x50>)
 80022ee:	4413      	add	r3, r2
 80022f0:	4618      	mov	r0, r3
 80022f2:	f7ff fe65 	bl	8001fc0 <rt_list_isempty>
 80022f6:	4603      	mov	r3, r0
 80022f8:	2b00      	cmp	r3, #0
 80022fa:	d007      	beq.n	800230c <rt_schedule_remove_thread+0x40>
 80022fc:	687b      	ldr	r3, [r7, #4]
 80022fe:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8002300:	43da      	mvns	r2, r3
 8002302:	4b07      	ldr	r3, [pc, #28]	@ (8002320 <rt_schedule_remove_thread+0x54>)
 8002304:	681b      	ldr	r3, [r3, #0]
 8002306:	4013      	ands	r3, r2
 8002308:	4a05      	ldr	r2, [pc, #20]	@ (8002320 <rt_schedule_remove_thread+0x54>)
 800230a:	6013      	str	r3, [r2, #0]
 800230c:	68f8      	ldr	r0, [r7, #12]
 800230e:	f7fd ff45 	bl	800019c <rt_hw_interrupt_enable>
 8002312:	bf00      	nop
 8002314:	3710      	adds	r7, #16
 8002316:	46bd      	mov	sp, r7
 8002318:	bd80      	pop	{r7, pc}
 800231a:	bf00      	nop
 800231c:	20003ea0 	.word	0x20003ea0
 8002320:	20003fa0 	.word	0x20003fa0

08002324 <rt_enter_critical>:
 8002324:	b580      	push	{r7, lr}
 8002326:	b082      	sub	sp, #8
 8002328:	af00      	add	r7, sp, #0
 800232a:	f7fd ff33 	bl	8000194 <rt_hw_interrupt_disable>
 800232e:	6078      	str	r0, [r7, #4]
 8002330:	4b07      	ldr	r3, [pc, #28]	@ (8002350 <rt_enter_critical+0x2c>)
 8002332:	f9b3 3000 	ldrsh.w	r3, [r3]
 8002336:	b29b      	uxth	r3, r3
 8002338:	3301      	adds	r3, #1
 800233a:	b29b      	uxth	r3, r3
 800233c:	b21a      	sxth	r2, r3
 800233e:	4b04      	ldr	r3, [pc, #16]	@ (8002350 <rt_enter_critical+0x2c>)
 8002340:	801a      	strh	r2, [r3, #0]
 8002342:	6878      	ldr	r0, [r7, #4]
 8002344:	f7fd ff2a 	bl	800019c <rt_hw_interrupt_enable>
 8002348:	bf00      	nop
 800234a:	3708      	adds	r7, #8
 800234c:	46bd      	mov	sp, r7
 800234e:	bd80      	pop	{r7, pc}
 8002350:	20003fa4 	.word	0x20003fa4

08002354 <rt_exit_critical>:
 8002354:	b580      	push	{r7, lr}
 8002356:	b082      	sub	sp, #8
 8002358:	af00      	add	r7, sp, #0
 800235a:	f7fd ff1b 	bl	8000194 <rt_hw_interrupt_disable>
 800235e:	6078      	str	r0, [r7, #4]
 8002360:	4b10      	ldr	r3, [pc, #64]	@ (80023a4 <rt_exit_critical+0x50>)
 8002362:	f9b3 3000 	ldrsh.w	r3, [r3]
 8002366:	b29b      	uxth	r3, r3
 8002368:	3b01      	subs	r3, #1
 800236a:	b29b      	uxth	r3, r3
 800236c:	b21a      	sxth	r2, r3
 800236e:	4b0d      	ldr	r3, [pc, #52]	@ (80023a4 <rt_exit_critical+0x50>)
 8002370:	801a      	strh	r2, [r3, #0]
 8002372:	4b0c      	ldr	r3, [pc, #48]	@ (80023a4 <rt_exit_critical+0x50>)
 8002374:	f9b3 3000 	ldrsh.w	r3, [r3]
 8002378:	2b00      	cmp	r3, #0
 800237a:	dc0c      	bgt.n	8002396 <rt_exit_critical+0x42>
 800237c:	4b09      	ldr	r3, [pc, #36]	@ (80023a4 <rt_exit_critical+0x50>)
 800237e:	2200      	movs	r2, #0
 8002380:	801a      	strh	r2, [r3, #0]
 8002382:	6878      	ldr	r0, [r7, #4]
 8002384:	f7fd ff0a 	bl	800019c <rt_hw_interrupt_enable>
 8002388:	4b07      	ldr	r3, [pc, #28]	@ (80023a8 <rt_exit_critical+0x54>)
 800238a:	681b      	ldr	r3, [r3, #0]
 800238c:	2b00      	cmp	r3, #0
 800238e:	d005      	beq.n	800239c <rt_exit_critical+0x48>
 8002390:	f7ff fe88 	bl	80020a4 <rt_schedule>
 8002394:	e002      	b.n	800239c <rt_exit_critical+0x48>
 8002396:	6878      	ldr	r0, [r7, #4]
 8002398:	f7fd ff00 	bl	800019c <rt_hw_interrupt_enable>
 800239c:	bf00      	nop
 800239e:	3708      	adds	r7, #8
 80023a0:	46bd      	mov	sp, r7
 80023a2:	bd80      	pop	{r7, pc}
 80023a4:	20003fa4 	.word	0x20003fa4
 80023a8:	20003fa8 	.word	0x20003fa8

080023ac <rt_list_init>:
 80023ac:	b480      	push	{r7}
 80023ae:	b083      	sub	sp, #12
 80023b0:	af00      	add	r7, sp, #0
 80023b2:	6078      	str	r0, [r7, #4]
 80023b4:	687b      	ldr	r3, [r7, #4]
 80023b6:	687a      	ldr	r2, [r7, #4]
 80023b8:	605a      	str	r2, [r3, #4]
 80023ba:	687b      	ldr	r3, [r7, #4]
 80023bc:	685a      	ldr	r2, [r3, #4]
 80023be:	687b      	ldr	r3, [r7, #4]
 80023c0:	601a      	str	r2, [r3, #0]
 80023c2:	bf00      	nop
 80023c4:	370c      	adds	r7, #12
 80023c6:	46bd      	mov	sp, r7
 80023c8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80023cc:	4770      	bx	lr

080023ce <rt_list_remove>:
 80023ce:	b480      	push	{r7}
 80023d0:	b083      	sub	sp, #12
 80023d2:	af00      	add	r7, sp, #0
 80023d4:	6078      	str	r0, [r7, #4]
 80023d6:	687b      	ldr	r3, [r7, #4]
 80023d8:	681b      	ldr	r3, [r3, #0]
 80023da:	687a      	ldr	r2, [r7, #4]
 80023dc:	6852      	ldr	r2, [r2, #4]
 80023de:	605a      	str	r2, [r3, #4]
 80023e0:	687b      	ldr	r3, [r7, #4]
 80023e2:	685b      	ldr	r3, [r3, #4]
 80023e4:	687a      	ldr	r2, [r7, #4]
 80023e6:	6812      	ldr	r2, [r2, #0]
 80023e8:	601a      	str	r2, [r3, #0]
 80023ea:	687b      	ldr	r3, [r7, #4]
 80023ec:	687a      	ldr	r2, [r7, #4]
 80023ee:	605a      	str	r2, [r3, #4]
 80023f0:	687b      	ldr	r3, [r7, #4]
 80023f2:	685a      	ldr	r2, [r3, #4]
 80023f4:	687b      	ldr	r3, [r7, #4]
 80023f6:	601a      	str	r2, [r3, #0]
 80023f8:	bf00      	nop
 80023fa:	370c      	adds	r7, #12
 80023fc:	46bd      	mov	sp, r7
 80023fe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002402:	4770      	bx	lr

08002404 <_thread_exit>:
 8002404:	b580      	push	{r7, lr}
 8002406:	b082      	sub	sp, #8
 8002408:	af00      	add	r7, sp, #0
 800240a:	f000 f8bb 	bl	8002584 <rt_thread_self>
 800240e:	6078      	str	r0, [r7, #4]
 8002410:	f7fd fec0 	bl	8000194 <rt_hw_interrupt_disable>
 8002414:	6038      	str	r0, [r7, #0]
 8002416:	6878      	ldr	r0, [r7, #4]
 8002418:	f7ff ff58 	bl	80022cc <rt_schedule_remove_thread>
 800241c:	687b      	ldr	r3, [r7, #4]
 800241e:	3344      	adds	r3, #68	@ 0x44
 8002420:	4618      	mov	r0, r3
 8002422:	f000 fa61 	bl	80028e8 <rt_timer_detach>
 8002426:	687b      	ldr	r3, [r7, #4]
 8002428:	2204      	movs	r2, #4
 800242a:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 800242e:	6878      	ldr	r0, [r7, #4]
 8002430:	f7fe fc9e 	bl	8000d70 <rt_thread_defunct_enqueue>
 8002434:	6838      	ldr	r0, [r7, #0]
 8002436:	f7fd feb1 	bl	800019c <rt_hw_interrupt_enable>
 800243a:	f7ff fe33 	bl	80020a4 <rt_schedule>
 800243e:	bf00      	nop
 8002440:	3708      	adds	r7, #8
 8002442:	46bd      	mov	sp, r7
 8002444:	bd80      	pop	{r7, pc}

08002446 <_thread_timeout>:
 8002446:	b580      	push	{r7, lr}
 8002448:	b084      	sub	sp, #16
 800244a:	af00      	add	r7, sp, #0
 800244c:	6078      	str	r0, [r7, #4]
 800244e:	687b      	ldr	r3, [r7, #4]
 8002450:	60fb      	str	r3, [r7, #12]
 8002452:	f7fd fe9f 	bl	8000194 <rt_hw_interrupt_disable>
 8002456:	60b8      	str	r0, [r7, #8]
 8002458:	68fb      	ldr	r3, [r7, #12]
 800245a:	f06f 0201 	mvn.w	r2, #1
 800245e:	631a      	str	r2, [r3, #48]	@ 0x30
 8002460:	68fb      	ldr	r3, [r7, #12]
 8002462:	3314      	adds	r3, #20
 8002464:	4618      	mov	r0, r3
 8002466:	f7ff ffb2 	bl	80023ce <rt_list_remove>
 800246a:	68f8      	ldr	r0, [r7, #12]
 800246c:	f7ff fed0 	bl	8002210 <rt_schedule_insert_thread>
 8002470:	68b8      	ldr	r0, [r7, #8]
 8002472:	f7fd fe93 	bl	800019c <rt_hw_interrupt_enable>
 8002476:	f7ff fe15 	bl	80020a4 <rt_schedule>
 800247a:	bf00      	nop
 800247c:	3710      	adds	r7, #16
 800247e:	46bd      	mov	sp, r7
 8002480:	bd80      	pop	{r7, pc}
	...

08002484 <_thread_init>:
 8002484:	b580      	push	{r7, lr}
 8002486:	b086      	sub	sp, #24
 8002488:	af02      	add	r7, sp, #8
 800248a:	60f8      	str	r0, [r7, #12]
 800248c:	60b9      	str	r1, [r7, #8]
 800248e:	607a      	str	r2, [r7, #4]
 8002490:	603b      	str	r3, [r7, #0]
 8002492:	68fb      	ldr	r3, [r7, #12]
 8002494:	3314      	adds	r3, #20
 8002496:	4618      	mov	r0, r3
 8002498:	f7ff ff88 	bl	80023ac <rt_list_init>
 800249c:	68fb      	ldr	r3, [r7, #12]
 800249e:	687a      	ldr	r2, [r7, #4]
 80024a0:	621a      	str	r2, [r3, #32]
 80024a2:	68fb      	ldr	r3, [r7, #12]
 80024a4:	683a      	ldr	r2, [r7, #0]
 80024a6:	625a      	str	r2, [r3, #36]	@ 0x24
 80024a8:	68fb      	ldr	r3, [r7, #12]
 80024aa:	69ba      	ldr	r2, [r7, #24]
 80024ac:	629a      	str	r2, [r3, #40]	@ 0x28
 80024ae:	68fb      	ldr	r3, [r7, #12]
 80024b0:	69fa      	ldr	r2, [r7, #28]
 80024b2:	62da      	str	r2, [r3, #44]	@ 0x2c
 80024b4:	68fb      	ldr	r3, [r7, #12]
 80024b6:	6a98      	ldr	r0, [r3, #40]	@ 0x28
 80024b8:	68fb      	ldr	r3, [r7, #12]
 80024ba:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80024bc:	461a      	mov	r2, r3
 80024be:	2123      	movs	r1, #35	@ 0x23
 80024c0:	f7fe fd2a 	bl	8000f18 <rt_memset>
 80024c4:	68fb      	ldr	r3, [r7, #12]
 80024c6:	6a18      	ldr	r0, [r3, #32]
 80024c8:	68fb      	ldr	r3, [r7, #12]
 80024ca:	6a59      	ldr	r1, [r3, #36]	@ 0x24
 80024cc:	68fb      	ldr	r3, [r7, #12]
 80024ce:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 80024d0:	68fb      	ldr	r3, [r7, #12]
 80024d2:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80024d4:	3b04      	subs	r3, #4
 80024d6:	441a      	add	r2, r3
 80024d8:	4b18      	ldr	r3, [pc, #96]	@ (800253c <_thread_init+0xb8>)
 80024da:	f7fe faaf 	bl	8000a3c <rt_hw_stack_init>
 80024de:	4602      	mov	r2, r0
 80024e0:	68fb      	ldr	r3, [r7, #12]
 80024e2:	61da      	str	r2, [r3, #28]
 80024e4:	68fb      	ldr	r3, [r7, #12]
 80024e6:	f897 2020 	ldrb.w	r2, [r7, #32]
 80024ea:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 80024ee:	68fb      	ldr	r3, [r7, #12]
 80024f0:	2200      	movs	r2, #0
 80024f2:	639a      	str	r2, [r3, #56]	@ 0x38
 80024f4:	68fb      	ldr	r3, [r7, #12]
 80024f6:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
 80024f8:	63da      	str	r2, [r3, #60]	@ 0x3c
 80024fa:	68fb      	ldr	r3, [r7, #12]
 80024fc:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
 80024fe:	641a      	str	r2, [r3, #64]	@ 0x40
 8002500:	68fb      	ldr	r3, [r7, #12]
 8002502:	2200      	movs	r2, #0
 8002504:	631a      	str	r2, [r3, #48]	@ 0x30
 8002506:	68fb      	ldr	r3, [r7, #12]
 8002508:	2200      	movs	r2, #0
 800250a:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 800250e:	68fb      	ldr	r3, [r7, #12]
 8002510:	2200      	movs	r2, #0
 8002512:	671a      	str	r2, [r3, #112]	@ 0x70
 8002514:	68fb      	ldr	r3, [r7, #12]
 8002516:	2200      	movs	r2, #0
 8002518:	675a      	str	r2, [r3, #116]	@ 0x74
 800251a:	68fb      	ldr	r3, [r7, #12]
 800251c:	f103 0044 	add.w	r0, r3, #68	@ 0x44
 8002520:	68f9      	ldr	r1, [r7, #12]
 8002522:	2300      	movs	r3, #0
 8002524:	9301      	str	r3, [sp, #4]
 8002526:	2300      	movs	r3, #0
 8002528:	9300      	str	r3, [sp, #0]
 800252a:	68fb      	ldr	r3, [r7, #12]
 800252c:	4a04      	ldr	r2, [pc, #16]	@ (8002540 <_thread_init+0xbc>)
 800252e:	f000 f9c2 	bl	80028b6 <rt_timer_init>
 8002532:	2300      	movs	r3, #0
 8002534:	4618      	mov	r0, r3
 8002536:	3710      	adds	r7, #16
 8002538:	46bd      	mov	sp, r7
 800253a:	bd80      	pop	{r7, pc}
 800253c:	08002405 	.word	0x08002405
 8002540:	08002447 	.word	0x08002447

08002544 <rt_thread_init>:
 8002544:	b580      	push	{r7, lr}
 8002546:	b088      	sub	sp, #32
 8002548:	af04      	add	r7, sp, #16
 800254a:	60f8      	str	r0, [r7, #12]
 800254c:	60b9      	str	r1, [r7, #8]
 800254e:	607a      	str	r2, [r7, #4]
 8002550:	603b      	str	r3, [r7, #0]
 8002552:	68ba      	ldr	r2, [r7, #8]
 8002554:	2101      	movs	r1, #1
 8002556:	68f8      	ldr	r0, [r7, #12]
 8002558:	f7ff fc18 	bl	8001d8c <rt_object_init>
 800255c:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800255e:	9303      	str	r3, [sp, #12]
 8002560:	f897 3020 	ldrb.w	r3, [r7, #32]
 8002564:	9302      	str	r3, [sp, #8]
 8002566:	69fb      	ldr	r3, [r7, #28]
 8002568:	9301      	str	r3, [sp, #4]
 800256a:	69bb      	ldr	r3, [r7, #24]
 800256c:	9300      	str	r3, [sp, #0]
 800256e:	683b      	ldr	r3, [r7, #0]
 8002570:	687a      	ldr	r2, [r7, #4]
 8002572:	68b9      	ldr	r1, [r7, #8]
 8002574:	68f8      	ldr	r0, [r7, #12]
 8002576:	f7ff ff85 	bl	8002484 <_thread_init>
 800257a:	4603      	mov	r3, r0
 800257c:	4618      	mov	r0, r3
 800257e:	3710      	adds	r7, #16
 8002580:	46bd      	mov	sp, r7
 8002582:	bd80      	pop	{r7, pc}

08002584 <rt_thread_self>:
 8002584:	b480      	push	{r7}
 8002586:	af00      	add	r7, sp, #0
 8002588:	4b03      	ldr	r3, [pc, #12]	@ (8002598 <rt_thread_self+0x14>)
 800258a:	681b      	ldr	r3, [r3, #0]
 800258c:	4618      	mov	r0, r3
 800258e:	46bd      	mov	sp, r7
 8002590:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002594:	4770      	bx	lr
 8002596:	bf00      	nop
 8002598:	20003fa8 	.word	0x20003fa8

0800259c <rt_thread_startup>:
 800259c:	b580      	push	{r7, lr}
 800259e:	b082      	sub	sp, #8
 80025a0:	af00      	add	r7, sp, #0
 80025a2:	6078      	str	r0, [r7, #4]
 80025a4:	687b      	ldr	r3, [r7, #4]
 80025a6:	f893 3035 	ldrb.w	r3, [r3, #53]	@ 0x35
 80025aa:	461a      	mov	r2, r3
 80025ac:	2301      	movs	r3, #1
 80025ae:	4093      	lsls	r3, r2
 80025b0:	461a      	mov	r2, r3
 80025b2:	687b      	ldr	r3, [r7, #4]
 80025b4:	639a      	str	r2, [r3, #56]	@ 0x38
 80025b6:	687b      	ldr	r3, [r7, #4]
 80025b8:	2202      	movs	r2, #2
 80025ba:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 80025be:	6878      	ldr	r0, [r7, #4]
 80025c0:	f000 f8ac 	bl	800271c <rt_thread_resume>
 80025c4:	f7ff ffde 	bl	8002584 <rt_thread_self>
 80025c8:	4603      	mov	r3, r0
 80025ca:	2b00      	cmp	r3, #0
 80025cc:	d001      	beq.n	80025d2 <rt_thread_startup+0x36>
 80025ce:	f7ff fd69 	bl	80020a4 <rt_schedule>
 80025d2:	2300      	movs	r3, #0
 80025d4:	4618      	mov	r0, r3
 80025d6:	3708      	adds	r7, #8
 80025d8:	46bd      	mov	sp, r7
 80025da:	bd80      	pop	{r7, pc}

080025dc <rt_thread_create>:
 80025dc:	b580      	push	{r7, lr}
 80025de:	b08a      	sub	sp, #40	@ 0x28
 80025e0:	af04      	add	r7, sp, #16
 80025e2:	60f8      	str	r0, [r7, #12]
 80025e4:	60b9      	str	r1, [r7, #8]
 80025e6:	607a      	str	r2, [r7, #4]
 80025e8:	603b      	str	r3, [r7, #0]
 80025ea:	68f9      	ldr	r1, [r7, #12]
 80025ec:	2001      	movs	r0, #1
 80025ee:	f7ff fc22 	bl	8001e36 <rt_object_allocate>
 80025f2:	6178      	str	r0, [r7, #20]
 80025f4:	697b      	ldr	r3, [r7, #20]
 80025f6:	2b00      	cmp	r3, #0
 80025f8:	d101      	bne.n	80025fe <rt_thread_create+0x22>
 80025fa:	2300      	movs	r3, #0
 80025fc:	e01b      	b.n	8002636 <rt_thread_create+0x5a>
 80025fe:	6838      	ldr	r0, [r7, #0]
 8002600:	f7ff f92e 	bl	8001860 <rt_malloc>
 8002604:	6138      	str	r0, [r7, #16]
 8002606:	693b      	ldr	r3, [r7, #16]
 8002608:	2b00      	cmp	r3, #0
 800260a:	d104      	bne.n	8002616 <rt_thread_create+0x3a>
 800260c:	6978      	ldr	r0, [r7, #20]
 800260e:	f7ff fc4e 	bl	8001eae <rt_object_delete>
 8002612:	2300      	movs	r3, #0
 8002614:	e00f      	b.n	8002636 <rt_thread_create+0x5a>
 8002616:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8002618:	9303      	str	r3, [sp, #12]
 800261a:	f897 3020 	ldrb.w	r3, [r7, #32]
 800261e:	9302      	str	r3, [sp, #8]
 8002620:	683b      	ldr	r3, [r7, #0]
 8002622:	9301      	str	r3, [sp, #4]
 8002624:	693b      	ldr	r3, [r7, #16]
 8002626:	9300      	str	r3, [sp, #0]
 8002628:	687b      	ldr	r3, [r7, #4]
 800262a:	68ba      	ldr	r2, [r7, #8]
 800262c:	68f9      	ldr	r1, [r7, #12]
 800262e:	6978      	ldr	r0, [r7, #20]
 8002630:	f7ff ff28 	bl	8002484 <_thread_init>
 8002634:	697b      	ldr	r3, [r7, #20]
 8002636:	4618      	mov	r0, r3
 8002638:	3718      	adds	r7, #24
 800263a:	46bd      	mov	sp, r7
 800263c:	bd80      	pop	{r7, pc}

0800263e <rt_thread_sleep>:
 800263e:	b580      	push	{r7, lr}
 8002640:	b084      	sub	sp, #16
 8002642:	af00      	add	r7, sp, #0
 8002644:	6078      	str	r0, [r7, #4]
 8002646:	f7ff ff9d 	bl	8002584 <rt_thread_self>
 800264a:	60f8      	str	r0, [r7, #12]
 800264c:	f7fd fda2 	bl	8000194 <rt_hw_interrupt_disable>
 8002650:	60b8      	str	r0, [r7, #8]
 8002652:	68fb      	ldr	r3, [r7, #12]
 8002654:	2200      	movs	r2, #0
 8002656:	631a      	str	r2, [r3, #48]	@ 0x30
 8002658:	68f8      	ldr	r0, [r7, #12]
 800265a:	f000 f82b 	bl	80026b4 <rt_thread_suspend>
 800265e:	68fb      	ldr	r3, [r7, #12]
 8002660:	3344      	adds	r3, #68	@ 0x44
 8002662:	1d3a      	adds	r2, r7, #4
 8002664:	2100      	movs	r1, #0
 8002666:	4618      	mov	r0, r3
 8002668:	f000 fa40 	bl	8002aec <rt_timer_control>
 800266c:	68fb      	ldr	r3, [r7, #12]
 800266e:	3344      	adds	r3, #68	@ 0x44
 8002670:	4618      	mov	r0, r3
 8002672:	f000 f957 	bl	8002924 <rt_timer_start>
 8002676:	68b8      	ldr	r0, [r7, #8]
 8002678:	f7fd fd90 	bl	800019c <rt_hw_interrupt_enable>
 800267c:	f7ff fd12 	bl	80020a4 <rt_schedule>
 8002680:	68fb      	ldr	r3, [r7, #12]
 8002682:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8002684:	f113 0f02 	cmn.w	r3, #2
 8002688:	d102      	bne.n	8002690 <rt_thread_sleep+0x52>
 800268a:	68fb      	ldr	r3, [r7, #12]
 800268c:	2200      	movs	r2, #0
 800268e:	631a      	str	r2, [r3, #48]	@ 0x30
 8002690:	68fb      	ldr	r3, [r7, #12]
 8002692:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8002694:	4618      	mov	r0, r3
 8002696:	3710      	adds	r7, #16
 8002698:	46bd      	mov	sp, r7
 800269a:	bd80      	pop	{r7, pc}

0800269c <rt_thread_delay>:
 800269c:	b580      	push	{r7, lr}
 800269e:	b082      	sub	sp, #8
 80026a0:	af00      	add	r7, sp, #0
 80026a2:	6078      	str	r0, [r7, #4]
 80026a4:	6878      	ldr	r0, [r7, #4]
 80026a6:	f7ff ffca 	bl	800263e <rt_thread_sleep>
 80026aa:	4603      	mov	r3, r0
 80026ac:	4618      	mov	r0, r3
 80026ae:	3708      	adds	r7, #8
 80026b0:	46bd      	mov	sp, r7
 80026b2:	bd80      	pop	{r7, pc}

080026b4 <rt_thread_suspend>:
 80026b4:	b580      	push	{r7, lr}
 80026b6:	b084      	sub	sp, #16
 80026b8:	af00      	add	r7, sp, #0
 80026ba:	6078      	str	r0, [r7, #4]
 80026bc:	687b      	ldr	r3, [r7, #4]
 80026be:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 80026c2:	f003 0307 	and.w	r3, r3, #7
 80026c6:	60fb      	str	r3, [r7, #12]
 80026c8:	68fb      	ldr	r3, [r7, #12]
 80026ca:	2b01      	cmp	r3, #1
 80026cc:	d005      	beq.n	80026da <rt_thread_suspend+0x26>
 80026ce:	68fb      	ldr	r3, [r7, #12]
 80026d0:	2b03      	cmp	r3, #3
 80026d2:	d002      	beq.n	80026da <rt_thread_suspend+0x26>
 80026d4:	f04f 33ff 	mov.w	r3, #4294967295
 80026d8:	e01c      	b.n	8002714 <rt_thread_suspend+0x60>
 80026da:	f7fd fd5b 	bl	8000194 <rt_hw_interrupt_disable>
 80026de:	60b8      	str	r0, [r7, #8]
 80026e0:	6878      	ldr	r0, [r7, #4]
 80026e2:	f7ff fdf3 	bl	80022cc <rt_schedule_remove_thread>
 80026e6:	687b      	ldr	r3, [r7, #4]
 80026e8:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 80026ec:	b25b      	sxtb	r3, r3
 80026ee:	f023 0307 	bic.w	r3, r3, #7
 80026f2:	b25b      	sxtb	r3, r3
 80026f4:	f043 0302 	orr.w	r3, r3, #2
 80026f8:	b25b      	sxtb	r3, r3
 80026fa:	b2da      	uxtb	r2, r3
 80026fc:	687b      	ldr	r3, [r7, #4]
 80026fe:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8002702:	687b      	ldr	r3, [r7, #4]
 8002704:	3344      	adds	r3, #68	@ 0x44
 8002706:	4618      	mov	r0, r3
 8002708:	f000 f9ce 	bl	8002aa8 <rt_timer_stop>
 800270c:	68b8      	ldr	r0, [r7, #8]
 800270e:	f7fd fd45 	bl	800019c <rt_hw_interrupt_enable>
 8002712:	2300      	movs	r3, #0
 8002714:	4618      	mov	r0, r3
 8002716:	3710      	adds	r7, #16
 8002718:	46bd      	mov	sp, r7
 800271a:	bd80      	pop	{r7, pc}

0800271c <rt_thread_resume>:
 800271c:	b580      	push	{r7, lr}
 800271e:	b084      	sub	sp, #16
 8002720:	af00      	add	r7, sp, #0
 8002722:	6078      	str	r0, [r7, #4]
 8002724:	687b      	ldr	r3, [r7, #4]
 8002726:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 800272a:	f003 0307 	and.w	r3, r3, #7
 800272e:	2b02      	cmp	r3, #2
 8002730:	d002      	beq.n	8002738 <rt_thread_resume+0x1c>
 8002732:	f04f 33ff 	mov.w	r3, #4294967295
 8002736:	e013      	b.n	8002760 <rt_thread_resume+0x44>
 8002738:	f7fd fd2c 	bl	8000194 <rt_hw_interrupt_disable>
 800273c:	60f8      	str	r0, [r7, #12]
 800273e:	687b      	ldr	r3, [r7, #4]
 8002740:	3314      	adds	r3, #20
 8002742:	4618      	mov	r0, r3
 8002744:	f7ff fe43 	bl	80023ce <rt_list_remove>
 8002748:	687b      	ldr	r3, [r7, #4]
 800274a:	3344      	adds	r3, #68	@ 0x44
 800274c:	4618      	mov	r0, r3
 800274e:	f000 f9ab 	bl	8002aa8 <rt_timer_stop>
 8002752:	6878      	ldr	r0, [r7, #4]
 8002754:	f7ff fd5c 	bl	8002210 <rt_schedule_insert_thread>
 8002758:	68f8      	ldr	r0, [r7, #12]
 800275a:	f7fd fd1f 	bl	800019c <rt_hw_interrupt_enable>
 800275e:	2300      	movs	r3, #0
 8002760:	4618      	mov	r0, r3
 8002762:	3710      	adds	r7, #16
 8002764:	46bd      	mov	sp, r7
 8002766:	bd80      	pop	{r7, pc}

08002768 <rt_list_init>:
 8002768:	b480      	push	{r7}
 800276a:	b083      	sub	sp, #12
 800276c:	af00      	add	r7, sp, #0
 800276e:	6078      	str	r0, [r7, #4]
 8002770:	687b      	ldr	r3, [r7, #4]
 8002772:	687a      	ldr	r2, [r7, #4]
 8002774:	605a      	str	r2, [r3, #4]
 8002776:	687b      	ldr	r3, [r7, #4]
 8002778:	685a      	ldr	r2, [r3, #4]
 800277a:	687b      	ldr	r3, [r7, #4]
 800277c:	601a      	str	r2, [r3, #0]
 800277e:	bf00      	nop
 8002780:	370c      	adds	r7, #12
 8002782:	46bd      	mov	sp, r7
 8002784:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002788:	4770      	bx	lr

0800278a <rt_list_insert_after>:
 800278a:	b480      	push	{r7}
 800278c:	b083      	sub	sp, #12
 800278e:	af00      	add	r7, sp, #0
 8002790:	6078      	str	r0, [r7, #4]
 8002792:	6039      	str	r1, [r7, #0]
 8002794:	687b      	ldr	r3, [r7, #4]
 8002796:	681b      	ldr	r3, [r3, #0]
 8002798:	683a      	ldr	r2, [r7, #0]
 800279a:	605a      	str	r2, [r3, #4]
 800279c:	687b      	ldr	r3, [r7, #4]
 800279e:	681a      	ldr	r2, [r3, #0]
 80027a0:	683b      	ldr	r3, [r7, #0]
 80027a2:	601a      	str	r2, [r3, #0]
 80027a4:	687b      	ldr	r3, [r7, #4]
 80027a6:	683a      	ldr	r2, [r7, #0]
 80027a8:	601a      	str	r2, [r3, #0]
 80027aa:	683b      	ldr	r3, [r7, #0]
 80027ac:	687a      	ldr	r2, [r7, #4]
 80027ae:	605a      	str	r2, [r3, #4]
 80027b0:	bf00      	nop
 80027b2:	370c      	adds	r7, #12
 80027b4:	46bd      	mov	sp, r7
 80027b6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80027ba:	4770      	bx	lr

080027bc <rt_list_remove>:
 80027bc:	b480      	push	{r7}
 80027be:	b083      	sub	sp, #12
 80027c0:	af00      	add	r7, sp, #0
 80027c2:	6078      	str	r0, [r7, #4]
 80027c4:	687b      	ldr	r3, [r7, #4]
 80027c6:	681b      	ldr	r3, [r3, #0]
 80027c8:	687a      	ldr	r2, [r7, #4]
 80027ca:	6852      	ldr	r2, [r2, #4]
 80027cc:	605a      	str	r2, [r3, #4]
 80027ce:	687b      	ldr	r3, [r7, #4]
 80027d0:	685b      	ldr	r3, [r3, #4]
 80027d2:	687a      	ldr	r2, [r7, #4]
 80027d4:	6812      	ldr	r2, [r2, #0]
 80027d6:	601a      	str	r2, [r3, #0]
 80027d8:	687b      	ldr	r3, [r7, #4]
 80027da:	687a      	ldr	r2, [r7, #4]
 80027dc:	605a      	str	r2, [r3, #4]
 80027de:	687b      	ldr	r3, [r7, #4]
 80027e0:	685a      	ldr	r2, [r3, #4]
 80027e2:	687b      	ldr	r3, [r7, #4]
 80027e4:	601a      	str	r2, [r3, #0]
 80027e6:	bf00      	nop
 80027e8:	370c      	adds	r7, #12
 80027ea:	46bd      	mov	sp, r7
 80027ec:	f85d 7b04 	ldr.w	r7, [sp], #4
 80027f0:	4770      	bx	lr

080027f2 <rt_list_isempty>:
 80027f2:	b480      	push	{r7}
 80027f4:	b083      	sub	sp, #12
 80027f6:	af00      	add	r7, sp, #0
 80027f8:	6078      	str	r0, [r7, #4]
 80027fa:	687b      	ldr	r3, [r7, #4]
 80027fc:	681b      	ldr	r3, [r3, #0]
 80027fe:	687a      	ldr	r2, [r7, #4]
 8002800:	429a      	cmp	r2, r3
 8002802:	bf0c      	ite	eq
 8002804:	2301      	moveq	r3, #1
 8002806:	2300      	movne	r3, #0
 8002808:	b2db      	uxtb	r3, r3
 800280a:	4618      	mov	r0, r3
 800280c:	370c      	adds	r7, #12
 800280e:	46bd      	mov	sp, r7
 8002810:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002814:	4770      	bx	lr

08002816 <_timer_init>:
 8002816:	b580      	push	{r7, lr}
 8002818:	b086      	sub	sp, #24
 800281a:	af00      	add	r7, sp, #0
 800281c:	60f8      	str	r0, [r7, #12]
 800281e:	60b9      	str	r1, [r7, #8]
 8002820:	607a      	str	r2, [r7, #4]
 8002822:	603b      	str	r3, [r7, #0]
 8002824:	68fb      	ldr	r3, [r7, #12]
 8002826:	f897 2020 	ldrb.w	r2, [r7, #32]
 800282a:	725a      	strb	r2, [r3, #9]
 800282c:	68fb      	ldr	r3, [r7, #12]
 800282e:	7a5b      	ldrb	r3, [r3, #9]
 8002830:	f023 0301 	bic.w	r3, r3, #1
 8002834:	b2da      	uxtb	r2, r3
 8002836:	68fb      	ldr	r3, [r7, #12]
 8002838:	725a      	strb	r2, [r3, #9]
 800283a:	68fb      	ldr	r3, [r7, #12]
 800283c:	68ba      	ldr	r2, [r7, #8]
 800283e:	61da      	str	r2, [r3, #28]
 8002840:	68fb      	ldr	r3, [r7, #12]
 8002842:	687a      	ldr	r2, [r7, #4]
 8002844:	621a      	str	r2, [r3, #32]
 8002846:	68fb      	ldr	r3, [r7, #12]
 8002848:	2200      	movs	r2, #0
 800284a:	629a      	str	r2, [r3, #40]	@ 0x28
 800284c:	68fb      	ldr	r3, [r7, #12]
 800284e:	683a      	ldr	r2, [r7, #0]
 8002850:	625a      	str	r2, [r3, #36]	@ 0x24
 8002852:	2300      	movs	r3, #0
 8002854:	617b      	str	r3, [r7, #20]
 8002856:	e00b      	b.n	8002870 <_timer_init+0x5a>
 8002858:	697b      	ldr	r3, [r7, #20]
 800285a:	3302      	adds	r3, #2
 800285c:	00db      	lsls	r3, r3, #3
 800285e:	68fa      	ldr	r2, [r7, #12]
 8002860:	4413      	add	r3, r2
 8002862:	3304      	adds	r3, #4
 8002864:	4618      	mov	r0, r3
 8002866:	f7ff ff7f 	bl	8002768 <rt_list_init>
 800286a:	697b      	ldr	r3, [r7, #20]
 800286c:	3301      	adds	r3, #1
 800286e:	617b      	str	r3, [r7, #20]
 8002870:	697b      	ldr	r3, [r7, #20]
 8002872:	2b00      	cmp	r3, #0
 8002874:	ddf0      	ble.n	8002858 <_timer_init+0x42>
 8002876:	bf00      	nop
 8002878:	bf00      	nop
 800287a:	3718      	adds	r7, #24
 800287c:	46bd      	mov	sp, r7
 800287e:	bd80      	pop	{r7, pc}

08002880 <_timer_remove>:
 8002880:	b580      	push	{r7, lr}
 8002882:	b084      	sub	sp, #16
 8002884:	af00      	add	r7, sp, #0
 8002886:	6078      	str	r0, [r7, #4]
 8002888:	2300      	movs	r3, #0
 800288a:	60fb      	str	r3, [r7, #12]
 800288c:	e00b      	b.n	80028a6 <_timer_remove+0x26>
 800288e:	68fb      	ldr	r3, [r7, #12]
 8002890:	3302      	adds	r3, #2
 8002892:	00db      	lsls	r3, r3, #3
 8002894:	687a      	ldr	r2, [r7, #4]
 8002896:	4413      	add	r3, r2
 8002898:	3304      	adds	r3, #4
 800289a:	4618      	mov	r0, r3
 800289c:	f7ff ff8e 	bl	80027bc <rt_list_remove>
 80028a0:	68fb      	ldr	r3, [r7, #12]
 80028a2:	3301      	adds	r3, #1
 80028a4:	60fb      	str	r3, [r7, #12]
 80028a6:	68fb      	ldr	r3, [r7, #12]
 80028a8:	2b00      	cmp	r3, #0
 80028aa:	ddf0      	ble.n	800288e <_timer_remove+0xe>
 80028ac:	bf00      	nop
 80028ae:	bf00      	nop
 80028b0:	3710      	adds	r7, #16
 80028b2:	46bd      	mov	sp, r7
 80028b4:	bd80      	pop	{r7, pc}

080028b6 <rt_timer_init>:
 80028b6:	b580      	push	{r7, lr}
 80028b8:	b086      	sub	sp, #24
 80028ba:	af02      	add	r7, sp, #8
 80028bc:	60f8      	str	r0, [r7, #12]
 80028be:	60b9      	str	r1, [r7, #8]
 80028c0:	607a      	str	r2, [r7, #4]
 80028c2:	603b      	str	r3, [r7, #0]
 80028c4:	68fb      	ldr	r3, [r7, #12]
 80028c6:	68ba      	ldr	r2, [r7, #8]
 80028c8:	210a      	movs	r1, #10
 80028ca:	4618      	mov	r0, r3
 80028cc:	f7ff fa5e 	bl	8001d8c <rt_object_init>
 80028d0:	7f3b      	ldrb	r3, [r7, #28]
 80028d2:	9300      	str	r3, [sp, #0]
 80028d4:	69bb      	ldr	r3, [r7, #24]
 80028d6:	683a      	ldr	r2, [r7, #0]
 80028d8:	6879      	ldr	r1, [r7, #4]
 80028da:	68f8      	ldr	r0, [r7, #12]
 80028dc:	f7ff ff9b 	bl	8002816 <_timer_init>
 80028e0:	bf00      	nop
 80028e2:	3710      	adds	r7, #16
 80028e4:	46bd      	mov	sp, r7
 80028e6:	bd80      	pop	{r7, pc}

080028e8 <rt_timer_detach>:
 80028e8:	b580      	push	{r7, lr}
 80028ea:	b084      	sub	sp, #16
 80028ec:	af00      	add	r7, sp, #0
 80028ee:	6078      	str	r0, [r7, #4]
 80028f0:	f7fd fc50 	bl	8000194 <rt_hw_interrupt_disable>
 80028f4:	60f8      	str	r0, [r7, #12]
 80028f6:	6878      	ldr	r0, [r7, #4]
 80028f8:	f7ff ffc2 	bl	8002880 <_timer_remove>
 80028fc:	687b      	ldr	r3, [r7, #4]
 80028fe:	7a5b      	ldrb	r3, [r3, #9]
 8002900:	f023 0301 	bic.w	r3, r3, #1
 8002904:	b2da      	uxtb	r2, r3
 8002906:	687b      	ldr	r3, [r7, #4]
 8002908:	725a      	strb	r2, [r3, #9]
 800290a:	68f8      	ldr	r0, [r7, #12]
 800290c:	f7fd fc46 	bl	800019c <rt_hw_interrupt_enable>
 8002910:	687b      	ldr	r3, [r7, #4]
 8002912:	4618      	mov	r0, r3
 8002914:	f7ff fa79 	bl	8001e0a <rt_object_detach>
 8002918:	2300      	movs	r3, #0
 800291a:	4618      	mov	r0, r3
 800291c:	3710      	adds	r7, #16
 800291e:	46bd      	mov	sp, r7
 8002920:	bd80      	pop	{r7, pc}
	...

08002924 <rt_timer_start>:
 8002924:	b580      	push	{r7, lr}
 8002926:	b08a      	sub	sp, #40	@ 0x28
 8002928:	af00      	add	r7, sp, #0
 800292a:	6078      	str	r0, [r7, #4]
 800292c:	2300      	movs	r3, #0
 800292e:	61fb      	str	r3, [r7, #28]
 8002930:	f7fd fc30 	bl	8000194 <rt_hw_interrupt_disable>
 8002934:	61b8      	str	r0, [r7, #24]
 8002936:	6878      	ldr	r0, [r7, #4]
 8002938:	f7ff ffa2 	bl	8002880 <_timer_remove>
 800293c:	687b      	ldr	r3, [r7, #4]
 800293e:	7a5b      	ldrb	r3, [r3, #9]
 8002940:	f023 0301 	bic.w	r3, r3, #1
 8002944:	b2da      	uxtb	r2, r3
 8002946:	687b      	ldr	r3, [r7, #4]
 8002948:	725a      	strb	r2, [r3, #9]
 800294a:	f7fe f909 	bl	8000b60 <rt_tick_get>
 800294e:	4602      	mov	r2, r0
 8002950:	687b      	ldr	r3, [r7, #4]
 8002952:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8002954:	441a      	add	r2, r3
 8002956:	687b      	ldr	r3, [r7, #4]
 8002958:	629a      	str	r2, [r3, #40]	@ 0x28
 800295a:	4b51      	ldr	r3, [pc, #324]	@ (8002aa0 <rt_timer_start+0x17c>)
 800295c:	617b      	str	r3, [r7, #20]
 800295e:	697b      	ldr	r3, [r7, #20]
 8002960:	60bb      	str	r3, [r7, #8]
 8002962:	2300      	movs	r3, #0
 8002964:	627b      	str	r3, [r7, #36]	@ 0x24
 8002966:	e04f      	b.n	8002a08 <rt_timer_start+0xe4>
 8002968:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800296a:	009b      	lsls	r3, r3, #2
 800296c:	3328      	adds	r3, #40	@ 0x28
 800296e:	443b      	add	r3, r7
 8002970:	f853 3c20 	ldr.w	r3, [r3, #-32]
 8002974:	681b      	ldr	r3, [r3, #0]
 8002976:	613b      	str	r3, [r7, #16]
 8002978:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800297a:	00db      	lsls	r3, r3, #3
 800297c:	3314      	adds	r3, #20
 800297e:	425b      	negs	r3, r3
 8002980:	693a      	ldr	r2, [r7, #16]
 8002982:	4413      	add	r3, r2
 8002984:	60fb      	str	r3, [r7, #12]
 8002986:	68fb      	ldr	r3, [r7, #12]
 8002988:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 800298a:	687b      	ldr	r3, [r7, #4]
 800298c:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 800298e:	429a      	cmp	r2, r3
 8002990:	d009      	beq.n	80029a6 <rt_timer_start+0x82>
 8002992:	68fb      	ldr	r3, [r7, #12]
 8002994:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 8002996:	687b      	ldr	r3, [r7, #4]
 8002998:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 800299a:	1ad3      	subs	r3, r2, r3
 800299c:	f06f 4200 	mvn.w	r2, #2147483648	@ 0x80000000
 80029a0:	4293      	cmp	r3, r2
 80029a2:	d31c      	bcc.n	80029de <rt_timer_start+0xba>
 80029a4:	e000      	b.n	80029a8 <rt_timer_start+0x84>
 80029a6:	bf00      	nop
 80029a8:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80029aa:	009b      	lsls	r3, r3, #2
 80029ac:	3328      	adds	r3, #40	@ 0x28
 80029ae:	443b      	add	r3, r7
 80029b0:	f853 3c20 	ldr.w	r3, [r3, #-32]
 80029b4:	681a      	ldr	r2, [r3, #0]
 80029b6:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80029b8:	009b      	lsls	r3, r3, #2
 80029ba:	3328      	adds	r3, #40	@ 0x28
 80029bc:	443b      	add	r3, r7
 80029be:	f843 2c20 	str.w	r2, [r3, #-32]
 80029c2:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80029c4:	009b      	lsls	r3, r3, #2
 80029c6:	3328      	adds	r3, #40	@ 0x28
 80029c8:	443b      	add	r3, r7
 80029ca:	f853 2c20 	ldr.w	r2, [r3, #-32]
 80029ce:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80029d0:	00db      	lsls	r3, r3, #3
 80029d2:	6979      	ldr	r1, [r7, #20]
 80029d4:	440b      	add	r3, r1
 80029d6:	685b      	ldr	r3, [r3, #4]
 80029d8:	429a      	cmp	r2, r3
 80029da:	d1c5      	bne.n	8002968 <rt_timer_start+0x44>
 80029dc:	e000      	b.n	80029e0 <rt_timer_start+0xbc>
 80029de:	bf00      	nop
 80029e0:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80029e2:	2b00      	cmp	r3, #0
 80029e4:	d00d      	beq.n	8002a02 <rt_timer_start+0xde>
 80029e6:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80029e8:	009b      	lsls	r3, r3, #2
 80029ea:	3328      	adds	r3, #40	@ 0x28
 80029ec:	443b      	add	r3, r7
 80029ee:	f853 2c20 	ldr.w	r2, [r3, #-32]
 80029f2:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80029f4:	3301      	adds	r3, #1
 80029f6:	3208      	adds	r2, #8
 80029f8:	009b      	lsls	r3, r3, #2
 80029fa:	3328      	adds	r3, #40	@ 0x28
 80029fc:	443b      	add	r3, r7
 80029fe:	f843 2c20 	str.w	r2, [r3, #-32]
 8002a02:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8002a04:	3301      	adds	r3, #1
 8002a06:	627b      	str	r3, [r7, #36]	@ 0x24
 8002a08:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8002a0a:	2b00      	cmp	r3, #0
 8002a0c:	d0d9      	beq.n	80029c2 <rt_timer_start+0x9e>
 8002a0e:	4b25      	ldr	r3, [pc, #148]	@ (8002aa4 <rt_timer_start+0x180>)
 8002a10:	681b      	ldr	r3, [r3, #0]
 8002a12:	3301      	adds	r3, #1
 8002a14:	4a23      	ldr	r2, [pc, #140]	@ (8002aa4 <rt_timer_start+0x180>)
 8002a16:	6013      	str	r3, [r2, #0]
 8002a18:	4b22      	ldr	r3, [pc, #136]	@ (8002aa4 <rt_timer_start+0x180>)
 8002a1a:	681b      	ldr	r3, [r3, #0]
 8002a1c:	623b      	str	r3, [r7, #32]
 8002a1e:	68ba      	ldr	r2, [r7, #8]
 8002a20:	687b      	ldr	r3, [r7, #4]
 8002a22:	3314      	adds	r3, #20
 8002a24:	4619      	mov	r1, r3
 8002a26:	4610      	mov	r0, r2
 8002a28:	f7ff feaf 	bl	800278a <rt_list_insert_after>
 8002a2c:	2302      	movs	r3, #2
 8002a2e:	627b      	str	r3, [r7, #36]	@ 0x24
 8002a30:	e01d      	b.n	8002a6e <rt_timer_start+0x14a>
 8002a32:	6a3b      	ldr	r3, [r7, #32]
 8002a34:	f003 0303 	and.w	r3, r3, #3
 8002a38:	2b00      	cmp	r3, #0
 8002a3a:	d11c      	bne.n	8002a76 <rt_timer_start+0x152>
 8002a3c:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8002a3e:	f1c3 0301 	rsb	r3, r3, #1
 8002a42:	009b      	lsls	r3, r3, #2
 8002a44:	3328      	adds	r3, #40	@ 0x28
 8002a46:	443b      	add	r3, r7
 8002a48:	f853 0c20 	ldr.w	r0, [r3, #-32]
 8002a4c:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8002a4e:	f1c3 0301 	rsb	r3, r3, #1
 8002a52:	3302      	adds	r3, #2
 8002a54:	00db      	lsls	r3, r3, #3
 8002a56:	687a      	ldr	r2, [r7, #4]
 8002a58:	4413      	add	r3, r2
 8002a5a:	3304      	adds	r3, #4
 8002a5c:	4619      	mov	r1, r3
 8002a5e:	f7ff fe94 	bl	800278a <rt_list_insert_after>
 8002a62:	6a3b      	ldr	r3, [r7, #32]
 8002a64:	089b      	lsrs	r3, r3, #2
 8002a66:	623b      	str	r3, [r7, #32]
 8002a68:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8002a6a:	3301      	adds	r3, #1
 8002a6c:	627b      	str	r3, [r7, #36]	@ 0x24
 8002a6e:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8002a70:	2b01      	cmp	r3, #1
 8002a72:	d9de      	bls.n	8002a32 <rt_timer_start+0x10e>
 8002a74:	e000      	b.n	8002a78 <rt_timer_start+0x154>
 8002a76:	bf00      	nop
 8002a78:	687b      	ldr	r3, [r7, #4]
 8002a7a:	7a5b      	ldrb	r3, [r3, #9]
 8002a7c:	f043 0301 	orr.w	r3, r3, #1
 8002a80:	b2da      	uxtb	r2, r3
 8002a82:	687b      	ldr	r3, [r7, #4]
 8002a84:	725a      	strb	r2, [r3, #9]
 8002a86:	69b8      	ldr	r0, [r7, #24]
 8002a88:	f7fd fb88 	bl	800019c <rt_hw_interrupt_enable>
 8002a8c:	69fb      	ldr	r3, [r7, #28]
 8002a8e:	2b00      	cmp	r3, #0
 8002a90:	d001      	beq.n	8002a96 <rt_timer_start+0x172>
 8002a92:	f7ff fb07 	bl	80020a4 <rt_schedule>
 8002a96:	2300      	movs	r3, #0
 8002a98:	4618      	mov	r0, r3
 8002a9a:	3728      	adds	r7, #40	@ 0x28
 8002a9c:	46bd      	mov	sp, r7
 8002a9e:	bd80      	pop	{r7, pc}
 8002aa0:	20003fb0 	.word	0x20003fb0
 8002aa4:	20003fb8 	.word	0x20003fb8

08002aa8 <rt_timer_stop>:
 8002aa8:	b580      	push	{r7, lr}
 8002aaa:	b084      	sub	sp, #16
 8002aac:	af00      	add	r7, sp, #0
 8002aae:	6078      	str	r0, [r7, #4]
 8002ab0:	687b      	ldr	r3, [r7, #4]
 8002ab2:	7a5b      	ldrb	r3, [r3, #9]
 8002ab4:	f003 0301 	and.w	r3, r3, #1
 8002ab8:	2b00      	cmp	r3, #0
 8002aba:	d102      	bne.n	8002ac2 <rt_timer_stop+0x1a>
 8002abc:	f04f 33ff 	mov.w	r3, #4294967295
 8002ac0:	e010      	b.n	8002ae4 <rt_timer_stop+0x3c>
 8002ac2:	f7fd fb67 	bl	8000194 <rt_hw_interrupt_disable>
 8002ac6:	60f8      	str	r0, [r7, #12]
 8002ac8:	6878      	ldr	r0, [r7, #4]
 8002aca:	f7ff fed9 	bl	8002880 <_timer_remove>
 8002ace:	687b      	ldr	r3, [r7, #4]
 8002ad0:	7a5b      	ldrb	r3, [r3, #9]
 8002ad2:	f023 0301 	bic.w	r3, r3, #1
 8002ad6:	b2da      	uxtb	r2, r3
 8002ad8:	687b      	ldr	r3, [r7, #4]
 8002ada:	725a      	strb	r2, [r3, #9]
 8002adc:	68f8      	ldr	r0, [r7, #12]
 8002ade:	f7fd fb5d 	bl	800019c <rt_hw_interrupt_enable>
 8002ae2:	2300      	movs	r3, #0
 8002ae4:	4618      	mov	r0, r3
 8002ae6:	3710      	adds	r7, #16
 8002ae8:	46bd      	mov	sp, r7
 8002aea:	bd80      	pop	{r7, pc}

08002aec <rt_timer_control>:
 8002aec:	b580      	push	{r7, lr}
 8002aee:	b086      	sub	sp, #24
 8002af0:	af00      	add	r7, sp, #0
 8002af2:	60f8      	str	r0, [r7, #12]
 8002af4:	60b9      	str	r1, [r7, #8]
 8002af6:	607a      	str	r2, [r7, #4]
 8002af8:	f7fd fb4c 	bl	8000194 <rt_hw_interrupt_disable>
 8002afc:	6178      	str	r0, [r7, #20]
 8002afe:	68bb      	ldr	r3, [r7, #8]
 8002b00:	2b05      	cmp	r3, #5
 8002b02:	d83c      	bhi.n	8002b7e <rt_timer_control+0x92>
 8002b04:	a201      	add	r2, pc, #4	@ (adr r2, 8002b0c <rt_timer_control+0x20>)
 8002b06:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8002b0a:	bf00      	nop
 8002b0c:	08002b2f 	.word	0x08002b2f
 8002b10:	08002b25 	.word	0x08002b25
 8002b14:	08002b39 	.word	0x08002b39
 8002b18:	08002b49 	.word	0x08002b49
 8002b1c:	08002b59 	.word	0x08002b59
 8002b20:	08002b75 	.word	0x08002b75
 8002b24:	68fb      	ldr	r3, [r7, #12]
 8002b26:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 8002b28:	687b      	ldr	r3, [r7, #4]
 8002b2a:	601a      	str	r2, [r3, #0]
 8002b2c:	e028      	b.n	8002b80 <rt_timer_control+0x94>
 8002b2e:	687b      	ldr	r3, [r7, #4]
 8002b30:	681a      	ldr	r2, [r3, #0]
 8002b32:	68fb      	ldr	r3, [r7, #12]
 8002b34:	625a      	str	r2, [r3, #36]	@ 0x24
 8002b36:	e023      	b.n	8002b80 <rt_timer_control+0x94>
 8002b38:	68fb      	ldr	r3, [r7, #12]
 8002b3a:	7a5b      	ldrb	r3, [r3, #9]
 8002b3c:	f023 0302 	bic.w	r3, r3, #2
 8002b40:	b2da      	uxtb	r2, r3
 8002b42:	68fb      	ldr	r3, [r7, #12]
 8002b44:	725a      	strb	r2, [r3, #9]
 8002b46:	e01b      	b.n	8002b80 <rt_timer_control+0x94>
 8002b48:	68fb      	ldr	r3, [r7, #12]
 8002b4a:	7a5b      	ldrb	r3, [r3, #9]
 8002b4c:	f043 0302 	orr.w	r3, r3, #2
 8002b50:	b2da      	uxtb	r2, r3
 8002b52:	68fb      	ldr	r3, [r7, #12]
 8002b54:	725a      	strb	r2, [r3, #9]
 8002b56:	e013      	b.n	8002b80 <rt_timer_control+0x94>
 8002b58:	68fb      	ldr	r3, [r7, #12]
 8002b5a:	7a5b      	ldrb	r3, [r3, #9]
 8002b5c:	f003 0301 	and.w	r3, r3, #1
 8002b60:	2b00      	cmp	r3, #0
 8002b62:	d003      	beq.n	8002b6c <rt_timer_control+0x80>
 8002b64:	687b      	ldr	r3, [r7, #4]
 8002b66:	2201      	movs	r2, #1
 8002b68:	601a      	str	r2, [r3, #0]
 8002b6a:	e009      	b.n	8002b80 <rt_timer_control+0x94>
 8002b6c:	687b      	ldr	r3, [r7, #4]
 8002b6e:	2200      	movs	r2, #0
 8002b70:	601a      	str	r2, [r3, #0]
 8002b72:	e005      	b.n	8002b80 <rt_timer_control+0x94>
 8002b74:	68fb      	ldr	r3, [r7, #12]
 8002b76:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 8002b78:	687b      	ldr	r3, [r7, #4]
 8002b7a:	601a      	str	r2, [r3, #0]
 8002b7c:	e000      	b.n	8002b80 <rt_timer_control+0x94>
 8002b7e:	bf00      	nop
 8002b80:	6978      	ldr	r0, [r7, #20]
 8002b82:	f7fd fb0b 	bl	800019c <rt_hw_interrupt_enable>
 8002b86:	2300      	movs	r3, #0
 8002b88:	4618      	mov	r0, r3
 8002b8a:	3718      	adds	r7, #24
 8002b8c:	46bd      	mov	sp, r7
 8002b8e:	bd80      	pop	{r7, pc}

08002b90 <rt_timer_check>:
 8002b90:	b580      	push	{r7, lr}
 8002b92:	b086      	sub	sp, #24
 8002b94:	af00      	add	r7, sp, #0
 8002b96:	1d3b      	adds	r3, r7, #4
 8002b98:	4618      	mov	r0, r3
 8002b9a:	f7ff fde5 	bl	8002768 <rt_list_init>
 8002b9e:	f7fd ffdf 	bl	8000b60 <rt_tick_get>
 8002ba2:	6178      	str	r0, [r7, #20]
 8002ba4:	f7fd faf6 	bl	8000194 <rt_hw_interrupt_disable>
 8002ba8:	6138      	str	r0, [r7, #16]
 8002baa:	e04f      	b.n	8002c4c <rt_timer_check+0xbc>
 8002bac:	4b2f      	ldr	r3, [pc, #188]	@ (8002c6c <rt_timer_check+0xdc>)
 8002bae:	681b      	ldr	r3, [r3, #0]
 8002bb0:	3b14      	subs	r3, #20
 8002bb2:	60fb      	str	r3, [r7, #12]
 8002bb4:	68fb      	ldr	r3, [r7, #12]
 8002bb6:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8002bb8:	697a      	ldr	r2, [r7, #20]
 8002bba:	1ad3      	subs	r3, r2, r3
 8002bbc:	f06f 4200 	mvn.w	r2, #2147483648	@ 0x80000000
 8002bc0:	4293      	cmp	r3, r2
 8002bc2:	d24a      	bcs.n	8002c5a <rt_timer_check+0xca>
 8002bc4:	68f8      	ldr	r0, [r7, #12]
 8002bc6:	f7ff fe5b 	bl	8002880 <_timer_remove>
 8002bca:	68fb      	ldr	r3, [r7, #12]
 8002bcc:	7a5b      	ldrb	r3, [r3, #9]
 8002bce:	f003 0302 	and.w	r3, r3, #2
 8002bd2:	2b00      	cmp	r3, #0
 8002bd4:	d106      	bne.n	8002be4 <rt_timer_check+0x54>
 8002bd6:	68fb      	ldr	r3, [r7, #12]
 8002bd8:	7a5b      	ldrb	r3, [r3, #9]
 8002bda:	f023 0301 	bic.w	r3, r3, #1
 8002bde:	b2da      	uxtb	r2, r3
 8002be0:	68fb      	ldr	r3, [r7, #12]
 8002be2:	725a      	strb	r2, [r3, #9]
 8002be4:	68fb      	ldr	r3, [r7, #12]
 8002be6:	f103 0214 	add.w	r2, r3, #20
 8002bea:	1d3b      	adds	r3, r7, #4
 8002bec:	4611      	mov	r1, r2
 8002bee:	4618      	mov	r0, r3
 8002bf0:	f7ff fdcb 	bl	800278a <rt_list_insert_after>
 8002bf4:	68fb      	ldr	r3, [r7, #12]
 8002bf6:	69db      	ldr	r3, [r3, #28]
 8002bf8:	68fa      	ldr	r2, [r7, #12]
 8002bfa:	6a12      	ldr	r2, [r2, #32]
 8002bfc:	4610      	mov	r0, r2
 8002bfe:	4798      	blx	r3
 8002c00:	f7fd ffae 	bl	8000b60 <rt_tick_get>
 8002c04:	6178      	str	r0, [r7, #20]
 8002c06:	1d3b      	adds	r3, r7, #4
 8002c08:	4618      	mov	r0, r3
 8002c0a:	f7ff fdf2 	bl	80027f2 <rt_list_isempty>
 8002c0e:	4603      	mov	r3, r0
 8002c10:	2b00      	cmp	r3, #0
 8002c12:	d000      	beq.n	8002c16 <rt_timer_check+0x86>
 8002c14:	e01a      	b.n	8002c4c <rt_timer_check+0xbc>
 8002c16:	68fb      	ldr	r3, [r7, #12]
 8002c18:	3314      	adds	r3, #20
 8002c1a:	4618      	mov	r0, r3
 8002c1c:	f7ff fdce 	bl	80027bc <rt_list_remove>
 8002c20:	68fb      	ldr	r3, [r7, #12]
 8002c22:	7a5b      	ldrb	r3, [r3, #9]
 8002c24:	f003 0302 	and.w	r3, r3, #2
 8002c28:	2b00      	cmp	r3, #0
 8002c2a:	d00f      	beq.n	8002c4c <rt_timer_check+0xbc>
 8002c2c:	68fb      	ldr	r3, [r7, #12]
 8002c2e:	7a5b      	ldrb	r3, [r3, #9]
 8002c30:	f003 0301 	and.w	r3, r3, #1
 8002c34:	2b00      	cmp	r3, #0
 8002c36:	d009      	beq.n	8002c4c <rt_timer_check+0xbc>
 8002c38:	68fb      	ldr	r3, [r7, #12]
 8002c3a:	7a5b      	ldrb	r3, [r3, #9]
 8002c3c:	f023 0301 	bic.w	r3, r3, #1
 8002c40:	b2da      	uxtb	r2, r3
 8002c42:	68fb      	ldr	r3, [r7, #12]
 8002c44:	725a      	strb	r2, [r3, #9]
 8002c46:	68f8      	ldr	r0, [r7, #12]
 8002c48:	f7ff fe6c 	bl	8002924 <rt_timer_start>
 8002c4c:	4807      	ldr	r0, [pc, #28]	@ (8002c6c <rt_timer_check+0xdc>)
 8002c4e:	f7ff fdd0 	bl	80027f2 <rt_list_isempty>
 8002c52:	4603      	mov	r3, r0
 8002c54:	2b00      	cmp	r3, #0
 8002c56:	d0a9      	beq.n	8002bac <rt_timer_check+0x1c>
 8002c58:	e000      	b.n	8002c5c <rt_timer_check+0xcc>
 8002c5a:	bf00      	nop
 8002c5c:	6938      	ldr	r0, [r7, #16]
 8002c5e:	f7fd fa9d 	bl	800019c <rt_hw_interrupt_enable>
 8002c62:	bf00      	nop
 8002c64:	3718      	adds	r7, #24
 8002c66:	46bd      	mov	sp, r7
 8002c68:	bd80      	pop	{r7, pc}
 8002c6a:	bf00      	nop
 8002c6c:	20003fb0 	.word	0x20003fb0

08002c70 <rt_system_timer_init>:
 8002c70:	b580      	push	{r7, lr}
 8002c72:	b082      	sub	sp, #8
 8002c74:	af00      	add	r7, sp, #0
 8002c76:	2300      	movs	r3, #0
 8002c78:	607b      	str	r3, [r7, #4]
 8002c7a:	e009      	b.n	8002c90 <rt_system_timer_init+0x20>
 8002c7c:	687b      	ldr	r3, [r7, #4]
 8002c7e:	00db      	lsls	r3, r3, #3
 8002c80:	4a07      	ldr	r2, [pc, #28]	@ (8002ca0 <rt_system_timer_init+0x30>)
 8002c82:	4413      	add	r3, r2
 8002c84:	4618      	mov	r0, r3
 8002c86:	f7ff fd6f 	bl	8002768 <rt_list_init>
 8002c8a:	687b      	ldr	r3, [r7, #4]
 8002c8c:	3301      	adds	r3, #1
 8002c8e:	607b      	str	r3, [r7, #4]
 8002c90:	687b      	ldr	r3, [r7, #4]
 8002c92:	2b00      	cmp	r3, #0
 8002c94:	d0f2      	beq.n	8002c7c <rt_system_timer_init+0xc>
 8002c96:	bf00      	nop
 8002c98:	bf00      	nop
 8002c9a:	3708      	adds	r7, #8
 8002c9c:	46bd      	mov	sp, r7
 8002c9e:	bd80      	pop	{r7, pc}
 8002ca0:	20003fb0 	.word	0x20003fb0

08002ca4 <rt_system_timer_thread_init>:
 8002ca4:	b480      	push	{r7}
 8002ca6:	af00      	add	r7, sp, #0
 8002ca8:	bf00      	nop
 8002caa:	46bd      	mov	sp, r7
 8002cac:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002cb0:	4770      	bx	lr

08002cb2 <memcpy>:
 8002cb2:	440a      	add	r2, r1
 8002cb4:	4291      	cmp	r1, r2
 8002cb6:	f100 33ff 	add.w	r3, r0, #4294967295
 8002cba:	d100      	bne.n	8002cbe <memcpy+0xc>
 8002cbc:	4770      	bx	lr
 8002cbe:	b510      	push	{r4, lr}
 8002cc0:	f811 4b01 	ldrb.w	r4, [r1], #1
 8002cc4:	f803 4f01 	strb.w	r4, [r3, #1]!
 8002cc8:	4291      	cmp	r1, r2
 8002cca:	d1f9      	bne.n	8002cc0 <memcpy+0xe>
 8002ccc:	bd10      	pop	{r4, pc}
	...

08002cd0 <_init>:
 8002cd0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002cd2:	bf00      	nop
 8002cd4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002cd6:	bc08      	pop	{r3}
 8002cd8:	469e      	mov	lr, r3
 8002cda:	4770      	bx	lr

08002cdc <_fini>:
 8002cdc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002cde:	bf00      	nop
 8002ce0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002ce2:	bc08      	pop	{r3}
 8002ce4:	469e      	mov	lr, r3
 8002ce6:	4770      	bx	lr
