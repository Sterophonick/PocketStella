
m6502.out:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_xx>:
   0:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
   4:	e12fff1e 	bx	lr

00000008 <_00>:
   8:	e59f0118 	ldr	r0, [pc, #280]	; 128 <_49+0x20>
   c:	e5d01000 	ldrb	r1, [r0]
  10:	e59f2114 	ldr	r2, [pc, #276]	; 12c <_49+0x24>
  14:	e59f3114 	ldr	r3, [pc, #276]	; 130 <_49+0x28>
  18:	e5d34000 	ldrb	r4, [r3]
  1c:	e7c24001 	strb	r4, [r2, r1]
  20:	e2411001 	sub	r1, r1, #1
  24:	e5c01000 	strb	r1, [r0]
  28:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
  2c:	e12fff1e 	bx	lr

00000030 <_09>:
  30:	e59f00fc 	ldr	r0, [pc, #252]	; 134 <_49+0x2c>
  34:	e5d01000 	ldrb	r1, [r0]
  38:	e0911001 	adds	r1, r1, r1
  3c:	e5c01000 	strb	r1, [r0]
  40:	e59f20f0 	ldr	r2, [pc, #240]	; 138 <_49+0x30>
  44:	e1a03c01 	lsl	r3, r1, #24
  48:	e3811001 	orr	r1, r1, #1
  4c:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
  50:	e12fff1e 	bx	lr

00000054 <_0D>:
  54:	e59f00d4 	ldr	r0, [pc, #212]	; 130 <_49+0x28>
  58:	e5d01000 	ldrb	r1, [r0]
  5c:	e3c11001 	bic	r1, r1, #1
  60:	e5c01000 	strb	r1, [r0]
  64:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
  68:	e12fff1e 	bx	lr

0000006c <_19>:
  6c:	e59f00b4 	ldr	r0, [pc, #180]	; 128 <_49+0x20>
  70:	e5d01000 	ldrb	r1, [r0]
  74:	e59f20b0 	ldr	r2, [pc, #176]	; 12c <_49+0x24>
  78:	e59f30b0 	ldr	r3, [pc, #176]	; 130 <_49+0x28>
  7c:	e7d24001 	ldrb	r4, [r2, r1]
  80:	e5c34000 	strb	r4, [r3]
  84:	e2811001 	add	r1, r1, #1
  88:	e5c01000 	strb	r1, [r0]
  8c:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
  90:	e12fff1e 	bx	lr

00000094 <_29>:
  94:	e59f00a0 	ldr	r0, [pc, #160]	; 13c <_49+0x34>
  98:	e59f10a0 	ldr	r1, [pc, #160]	; 140 <_49+0x38>
  9c:	e7d02001 	ldrb	r2, [r0, r1]
  a0:	e1a00002 	mov	r0, r2
  a4:	e59f1088 	ldr	r1, [pc, #136]	; 134 <_49+0x2c>
  a8:	e5d12000 	ldrb	r2, [r1]
  ac:	e59f3088 	ldr	r3, [pc, #136]	; 13c <_49+0x34>
  b0:	e0833000 	add	r3, r3, r0
  b4:	e5d33000 	ldrb	r3, [r3]
  b8:	e0014002 	and	r4, r1, r2
  bc:	e5c14000 	strb	r4, [r1]
  c0:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
  c4:	e12fff1e 	bx	lr

000000c8 <_2E>:
  c8:	e59f0060 	ldr	r0, [pc, #96]	; 130 <_49+0x28>
  cc:	e5d01000 	ldrb	r1, [r0]
  d0:	e3811001 	orr	r1, r1, #1
  d4:	e5c01000 	strb	r1, [r0]
  d8:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
  dc:	e12fff1e 	bx	lr

000000e0 <_39>:
  e0:	e59f0040 	ldr	r0, [pc, #64]	; 128 <_49+0x20>
  e4:	e5d01000 	ldrb	r1, [r0]
  e8:	e59f203c 	ldr	r2, [pc, #60]	; 12c <_49+0x24>
  ec:	e59f3040 	ldr	r3, [pc, #64]	; 134 <_49+0x2c>
  f0:	e5d34000 	ldrb	r4, [r3]
  f4:	e7c24001 	strb	r4, [r2, r1]
  f8:	e2411001 	sub	r1, r1, #1
  fc:	e5c01000 	strb	r1, [r0]
 100:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 104:	e12fff1e 	bx	lr

00000108 <_49>:
 108:	e59f0034 	ldr	r0, [pc, #52]	; 144 <_49+0x3c>
 10c:	e1d010b0 	ldrh	r1, [r0]
 110:	e59f0028 	ldr	r0, [pc, #40]	; 140 <_49+0x38>
 114:	e1df22bc 	ldrh	r2, [pc, #44]	; 148 <_49+0x40>
 118:	e0011002 	and	r1, r1, r2
 11c:	e1c010b0 	strh	r1, [r0]
 120:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 124:	e12fff1e 	bx	lr
	...
 148:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>

0000014c <_4D>:
 14c:	e59f06b4 	ldr	r0, [pc, #1716]	; 808 <execute+0x20>
 150:	e59f16b4 	ldr	r1, [pc, #1716]	; 80c <execute+0x24>
 154:	e5d11000 	ldrb	r1, [r1]
 158:	e7d01001 	ldrb	r1, [r0, r1]
 15c:	e59f06ac 	ldr	r0, [pc, #1708]	; 810 <execute+0x28>
 160:	e5d02000 	ldrb	r2, [r0]
 164:	e0213002 	eor	r3, r1, r2
 168:	e20330ff 	and	r3, r3, #255	; 0xff
 16c:	e5c03000 	strb	r3, [r0]
 170:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 174:	e12fff1e 	bx	lr

00000178 <_4E>:
 178:	e59f0694 	ldr	r0, [pc, #1684]	; 814 <execute+0x2c>
 17c:	e5d01000 	ldrb	r1, [r0]
 180:	e3c11004 	bic	r1, r1, #4
 184:	e5c01000 	strb	r1, [r0]
 188:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 18c:	e12fff1e 	bx	lr

00000190 <_59>:
 190:	e59f0680 	ldr	r0, [pc, #1664]	; 818 <execute+0x30>
 194:	e5d01000 	ldrb	r1, [r0]
 198:	e59f267c 	ldr	r2, [pc, #1660]	; 81c <execute+0x34>
 19c:	e59f366c 	ldr	r3, [pc, #1644]	; 810 <execute+0x28>
 1a0:	e7d24001 	ldrb	r4, [r2, r1]
 1a4:	e5c34000 	strb	r4, [r3]
 1a8:	e2811001 	add	r1, r1, #1
 1ac:	e5c01000 	strb	r1, [r0]
 1b0:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 1b4:	e12fff1e 	bx	lr

000001b8 <_69>:
 1b8:	e59f0654 	ldr	r0, [pc, #1620]	; 814 <execute+0x2c>
 1bc:	e5d01000 	ldrb	r1, [r0]
 1c0:	e3811004 	orr	r1, r1, #4
 1c4:	e5c01000 	strb	r1, [r0]
 1c8:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 1cc:	e12fff1e 	bx	lr

000001d0 <_79>:
 1d0:	e59f0648 	ldr	r0, [pc, #1608]	; 820 <execute+0x38>
 1d4:	e5d01000 	ldrb	r1, [r0]
 1d8:	e2411001 	sub	r1, r1, #1
 1dc:	e20110ff 	and	r1, r1, #255	; 0xff
 1e0:	e5c01000 	strb	r1, [r0]
 1e4:	e59f3638 	ldr	r3, [pc, #1592]	; 824 <execute+0x3c>
 1e8:	e5d32000 	ldrb	r2, [r3]
 1ec:	e3510000 	cmp	r1, #0
 1f0:	02222002 	eoreq	r2, r2, #2
 1f4:	e35100ff 	cmp	r1, #255	; 0xff
 1f8:	02222080 	eoreq	r2, r2, #128	; 0x80
 1fc:	e5c32000 	strb	r2, [r3]
 200:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 204:	e12fff1e 	bx	lr

00000208 <_8A>:
 208:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 20c:	e12fff1e 	bx	lr

00000210 <_90>:
 210:	e59f05fc 	ldr	r0, [pc, #1532]	; 814 <execute+0x2c>
 214:	e5d01000 	ldrb	r1, [r0]
 218:	e3110000 	tst	r1, #0
 21c:	059f0604 	ldreq	r0, [pc, #1540]	; 828 <execute+0x40>
 220:	05d01000 	ldrbeq	r1, [r0]
 224:	059f2600 	ldreq	r2, [pc, #1536]	; 82c <execute+0x44>
 228:	01d230d0 	ldrsbeq	r3, [r2]
 22c:	00811003 	addeq	r1, r1, r3
 230:	01c010b0 	strheq	r1, [r0]
 234:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 238:	e12fff1e 	bx	lr

0000023c <_91>:
 23c:	e59f05cc 	ldr	r0, [pc, #1484]	; 810 <execute+0x28>
 240:	e59f25d8 	ldr	r2, [pc, #1496]	; 820 <execute+0x38>
 244:	e5d23000 	ldrb	r3, [r2]
 248:	e5c03000 	strb	r3, [r0]
 24c:	e59f05d0 	ldr	r0, [pc, #1488]	; 824 <execute+0x3c>
 250:	e5d01000 	ldrb	r1, [r0]
 254:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 258:	e12fff1e 	bx	lr

0000025c <_99>:
 25c:	e59f05cc 	ldr	r0, [pc, #1484]	; 830 <execute+0x48>
 260:	e5d01000 	ldrb	r1, [r0]
 264:	e59f05ac 	ldr	r0, [pc, #1452]	; 818 <execute+0x30>
 268:	e5c01000 	strb	r1, [r0]
 26c:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 270:	e12fff1e 	bx	lr

00000274 <_9D>:
 274:	e59f0598 	ldr	r0, [pc, #1432]	; 814 <execute+0x2c>
 278:	e5d01000 	ldrb	r1, [r0]
 27c:	e3110001 	tst	r1, #1
 280:	059f05a0 	ldreq	r0, [pc, #1440]	; 828 <execute+0x40>
 284:	05d01000 	ldrbeq	r1, [r0]
 288:	059f259c 	ldreq	r2, [pc, #1436]	; 82c <execute+0x44>
 28c:	01d230d0 	ldrsbeq	r3, [r2]
 290:	00811003 	addeq	r1, r1, r3
 294:	01c010b0 	strheq	r1, [r0]
 298:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 29c:	e12fff1e 	bx	lr

000002a0 <_B1>:
 2a0:	e59f056c 	ldr	r0, [pc, #1388]	; 814 <execute+0x2c>
 2a4:	e5d01000 	ldrb	r1, [r0]
 2a8:	e3811040 	orr	r1, r1, #64	; 0x40
 2ac:	e5c01000 	strb	r1, [r0]
 2b0:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 2b4:	e12fff1e 	bx	lr

000002b8 <_B9>:
 2b8:	e59f0560 	ldr	r0, [pc, #1376]	; 820 <execute+0x38>
 2bc:	e5d01000 	ldrb	r1, [r0]
 2c0:	e2811001 	add	r1, r1, #1
 2c4:	e20110ff 	and	r1, r1, #255	; 0xff
 2c8:	e5c01000 	strb	r1, [r0]
 2cc:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 2d0:	e12fff1e 	bx	lr

000002d4 <_C9>:
 2d4:	e59f0554 	ldr	r0, [pc, #1364]	; 830 <execute+0x48>
 2d8:	e5d01000 	ldrb	r1, [r0]
 2dc:	e2411001 	sub	r1, r1, #1
 2e0:	e20110ff 	and	r1, r1, #255	; 0xff
 2e4:	e5c01000 	strb	r1, [r0]
 2e8:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 2ec:	e12fff1e 	bx	lr

000002f0 <_CC>:
 2f0:	e59f053c 	ldr	r0, [pc, #1340]	; 834 <execute+0x4c>
 2f4:	e1d010b0 	ldrh	r1, [r0]
 2f8:	e59f0508 	ldr	r0, [pc, #1288]	; 808 <execute+0x20>
 2fc:	e7d02001 	ldrb	r2, [r0, r1]
 300:	e1a02802 	lsl	r2, r2, #16
 304:	e2422801 	sub	r2, r2, #65536	; 0x10000
 308:	e7c02001 	strb	r2, [r0, r1]
 30c:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 310:	e12fff1e 	bx	lr

00000314 <_D0>:
 314:	e59f04f8 	ldr	r0, [pc, #1272]	; 814 <execute+0x2c>
 318:	e5d01000 	ldrb	r1, [r0]
 31c:	e3110001 	tst	r1, #1
 320:	159f0500 	ldrne	r0, [pc, #1280]	; 828 <execute+0x40>
 324:	15d01000 	ldrbne	r1, [r0]
 328:	159f24fc 	ldrne	r2, [pc, #1276]	; 82c <execute+0x44>
 32c:	11d230d0 	ldrsbne	r3, [r2]
 330:	10811003 	addne	r1, r1, r3
 334:	11c010b0 	strhne	r1, [r0]
 338:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 33c:	e12fff1e 	bx	lr

00000340 <_D1>:
 340:	e59f04cc 	ldr	r0, [pc, #1228]	; 814 <execute+0x2c>
 344:	e5d01000 	ldrb	r1, [r0]
 348:	e3c11008 	bic	r1, r1, #8
 34c:	e5c01000 	strb	r1, [r0]
 350:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 354:	e12fff1e 	bx	lr

00000358 <_D9>:
 358:	e59f04d4 	ldr	r0, [pc, #1236]	; 834 <execute+0x4c>
 35c:	e1d010b0 	ldrh	r1, [r0]
 360:	e59f04a0 	ldr	r0, [pc, #1184]	; 808 <execute+0x20>
 364:	e0800001 	add	r0, r0, r1
 368:	e59f04c0 	ldr	r0, [pc, #1216]	; 830 <execute+0x48>
 36c:	e5d01000 	ldrb	r1, [r0]
 370:	e7d02001 	ldrb	r2, [r0, r1]
 374:	e1a02802 	lsl	r2, r2, #16
 378:	e2422801 	sub	r2, r2, #65536	; 0x10000
 37c:	e7c02001 	strb	r2, [r0, r1]
 380:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 384:	e12fff1e 	bx	lr

00000388 <_E0>:
 388:	e59f047c 	ldr	r0, [pc, #1148]	; 80c <execute+0x24>
 38c:	e5d01000 	ldrb	r1, [r0]
 390:	e59f2470 	ldr	r2, [pc, #1136]	; 808 <execute+0x20>
 394:	e7d23001 	ldrb	r3, [r2, r1]
 398:	e2833001 	add	r3, r3, #1
 39c:	e20330ff 	and	r3, r3, #255	; 0xff
 3a0:	e7c23001 	strb	r3, [r2, r1]
 3a4:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 3a8:	e12fff1e 	bx	lr

000003ac <_E8>:
 3ac:	e59f047c 	ldr	r0, [pc, #1148]	; 830 <execute+0x48>
 3b0:	e5d01000 	ldrb	r1, [r0]
 3b4:	e2811001 	add	r1, r1, #1
 3b8:	e20110ff 	and	r1, r1, #255	; 0xff
 3bc:	e5c01000 	strb	r1, [r0]
 3c0:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 3c4:	e12fff1e 	bx	lr

000003c8 <_E9>:
 3c8:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 3cc:	e12fff1e 	bx	lr

000003d0 <_EC>:
 3d0:	e59f043c 	ldr	r0, [pc, #1084]	; 814 <execute+0x2c>
 3d4:	e5d01000 	ldrb	r1, [r0]
 3d8:	e3811008 	orr	r1, r1, #8
 3dc:	e5c01000 	strb	r1, [r0]
 3e0:	e8bd01ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 3e4:	e12fff1e 	bx	lr

000003e8 <op_table>:
 3e8:	00000008 	andeq	r0, r0, r8
 3ec:	00000008 	andeq	r0, r0, r8
	...
 3fc:	00000008 	andeq	r0, r0, r8
 400:	00000008 	andeq	r0, r0, r8
 404:	00000000 	andeq	r0, r0, r0
 408:	00000008 	andeq	r0, r0, r8
 40c:	00000030 	andeq	r0, r0, r0, lsr r0
 410:	00000030 	andeq	r0, r0, r0, lsr r0
	...
 41c:	00000054 	andeq	r0, r0, r4, asr r0
 420:	00000054 	andeq	r0, r0, r4, asr r0
 424:	00000000 	andeq	r0, r0, r0
 428:	00000054 	andeq	r0, r0, r4, asr r0
 42c:	00000054 	andeq	r0, r0, r4, asr r0
	...
 43c:	00000054 	andeq	r0, r0, r4, asr r0
 440:	00000054 	andeq	r0, r0, r4, asr r0
 444:	00000000 	andeq	r0, r0, r0
 448:	00000054 	andeq	r0, r0, r4, asr r0
 44c:	0000006c 	andeq	r0, r0, ip, rrx
	...
 45c:	0000006c 	andeq	r0, r0, ip, rrx
 460:	0000006c 	andeq	r0, r0, ip, rrx
 464:	00000000 	andeq	r0, r0, r0
 468:	0000006c 	andeq	r0, r0, ip, rrx
 46c:	0000006c 	andeq	r0, r0, ip, rrx
	...
 478:	0000006c 	andeq	r0, r0, ip, rrx
 47c:	0000006c 	andeq	r0, r0, ip, rrx
 480:	0000006c 	andeq	r0, r0, ip, rrx
 484:	00000000 	andeq	r0, r0, r0
 488:	0000006c 	andeq	r0, r0, ip, rrx
 48c:	00000094 	muleq	r0, r4, r0
 490:	00000094 	muleq	r0, r4, r0
 494:	00000000 	andeq	r0, r0, r0
 498:	00000094 	muleq	r0, r4, r0
 49c:	00000094 	muleq	r0, r4, r0
 4a0:	000000c8 	andeq	r0, r0, r8, asr #1
 4a4:	00000000 	andeq	r0, r0, r0
 4a8:	000000c8 	andeq	r0, r0, r8, asr #1
 4ac:	000000c8 	andeq	r0, r0, r8, asr #1
	...
 4bc:	000000c8 	andeq	r0, r0, r8, asr #1
 4c0:	000000c8 	andeq	r0, r0, r8, asr #1
 4c4:	00000000 	andeq	r0, r0, r0
 4c8:	000000c8 	andeq	r0, r0, r8, asr #1
 4cc:	000000e0 	andeq	r0, r0, r0, ror #1
	...
 4dc:	000000e0 	andeq	r0, r0, r0, ror #1
 4e0:	000000e0 	andeq	r0, r0, r0, ror #1
 4e4:	00000000 	andeq	r0, r0, r0
 4e8:	000000e0 	andeq	r0, r0, r0, ror #1
 4ec:	000000e0 	andeq	r0, r0, r0, ror #1
	...
 4fc:	000000e0 	andeq	r0, r0, r0, ror #1
 500:	000000e0 	andeq	r0, r0, r0, ror #1
 504:	00000000 	andeq	r0, r0, r0
 508:	000000e0 	andeq	r0, r0, r0, ror #1
 50c:	00000108 	andeq	r0, r0, r8, lsl #2
 510:	00000108 	andeq	r0, r0, r8, lsl #2
 514:	00000000 	andeq	r0, r0, r0
 518:	00000108 	andeq	r0, r0, r8, lsl #2
 51c:	0000014c 	andeq	r0, r0, ip, asr #2
 520:	00000178 	andeq	r0, r0, r8, ror r1
 524:	00000000 	andeq	r0, r0, r0
 528:	00000178 	andeq	r0, r0, r8, ror r1
 52c:	00000178 	andeq	r0, r0, r8, ror r1
	...
 53c:	00000178 	andeq	r0, r0, r8, ror r1
 540:	00000178 	andeq	r0, r0, r8, ror r1
 544:	00000000 	andeq	r0, r0, r0
 548:	00000178 	andeq	r0, r0, r8, ror r1
 54c:	00000190 	muleq	r0, r0, r1
	...
 55c:	00000190 	muleq	r0, r0, r1
 560:	00000190 	muleq	r0, r0, r1
 564:	00000000 	andeq	r0, r0, r0
 568:	00000190 	muleq	r0, r0, r1
 56c:	00000190 	muleq	r0, r0, r1
	...
 57c:	00000190 	muleq	r0, r0, r1
 580:	00000190 	muleq	r0, r0, r1
 584:	00000000 	andeq	r0, r0, r0
 588:	00000190 	muleq	r0, r0, r1
 58c:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
 590:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
 594:	00000000 	andeq	r0, r0, r0
 598:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
 59c:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
 5a0:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
 5a4:	00000000 	andeq	r0, r0, r0
 5a8:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
 5ac:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
	...
 5bc:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
 5c0:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
 5c4:	00000000 	andeq	r0, r0, r0
 5c8:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
 5cc:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
	...
 5dc:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 5e0:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
	...
 5ec:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
	...
 5f8:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 5fc:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 600:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 604:	00000000 	andeq	r0, r0, r0
 608:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 60c:	00000000 	andeq	r0, r0, r0
 610:	00000208 	andeq	r0, r0, r8, lsl #4
 614:	00000000 	andeq	r0, r0, r0
 618:	00000208 	andeq	r0, r0, r8, lsl #4
 61c:	00000208 	andeq	r0, r0, r8, lsl #4
 620:	00000208 	andeq	r0, r0, r8, lsl #4
 624:	00000000 	andeq	r0, r0, r0
 628:	00000210 	andeq	r0, r0, r0, lsl r2
 62c:	0000023c 	andeq	r0, r0, ip, lsr r2
	...
 638:	0000023c 	andeq	r0, r0, ip, lsr r2
 63c:	0000023c 	andeq	r0, r0, ip, lsr r2
 640:	0000023c 	andeq	r0, r0, ip, lsr r2
 644:	00000000 	andeq	r0, r0, r0
 648:	0000023c 	andeq	r0, r0, ip, lsr r2
 64c:	0000025c 	andeq	r0, r0, ip, asr r2
 650:	0000025c 	andeq	r0, r0, ip, asr r2
	...
 65c:	00000274 	andeq	r0, r0, r4, ror r2
	...
 668:	00000274 	andeq	r0, r0, r4, ror r2
 66c:	00000274 	andeq	r0, r0, r4, ror r2
 670:	00000274 	andeq	r0, r0, r4, ror r2
 674:	00000000 	andeq	r0, r0, r0
 678:	00000274 	andeq	r0, r0, r4, ror r2
 67c:	00000274 	andeq	r0, r0, r4, ror r2
 680:	00000274 	andeq	r0, r0, r4, ror r2
 684:	00000000 	andeq	r0, r0, r0
 688:	00000274 	andeq	r0, r0, r4, ror r2
 68c:	00000274 	andeq	r0, r0, r4, ror r2
 690:	00000274 	andeq	r0, r0, r4, ror r2
 694:	00000000 	andeq	r0, r0, r0
 698:	00000274 	andeq	r0, r0, r4, ror r2
 69c:	00000274 	andeq	r0, r0, r4, ror r2
 6a0:	00000274 	andeq	r0, r0, r4, ror r2
 6a4:	00000000 	andeq	r0, r0, r0
 6a8:	00000274 	andeq	r0, r0, r4, ror r2
 6ac:	000002a0 	andeq	r0, r0, r0, lsr #5
	...
 6b8:	000002a0 	andeq	r0, r0, r0, lsr #5
 6bc:	000002a0 	andeq	r0, r0, r0, lsr #5
 6c0:	000002a0 	andeq	r0, r0, r0, lsr #5
 6c4:	00000000 	andeq	r0, r0, r0
 6c8:	000002a0 	andeq	r0, r0, r0, lsr #5
 6cc:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
 6d0:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
 6d4:	00000000 	andeq	r0, r0, r0
 6d8:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
 6dc:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
 6e0:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
 6e4:	00000000 	andeq	r0, r0, r0
 6e8:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
 6ec:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
	...
 6f8:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
 6fc:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
 700:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
 704:	00000000 	andeq	r0, r0, r0
 708:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
 70c:	000002d4 	ldrdeq	r0, [r0], -r4
 710:	000002d4 	ldrdeq	r0, [r0], -r4
 714:	00000000 	andeq	r0, r0, r0
 718:	000002f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 71c:	000002f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 720:	000002f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 724:	00000000 	andeq	r0, r0, r0
 728:	00000314 	andeq	r0, r0, r4, lsl r3
 72c:	00000340 	andeq	r0, r0, r0, asr #6
	...
 73c:	00000340 	andeq	r0, r0, r0, asr #6
 740:	00000340 	andeq	r0, r0, r0, asr #6
 744:	00000000 	andeq	r0, r0, r0
 748:	00000340 	andeq	r0, r0, r0, asr #6
 74c:	00000358 	andeq	r0, r0, r8, asr r3
	...
 75c:	00000358 	andeq	r0, r0, r8, asr r3
 760:	00000358 	andeq	r0, r0, r8, asr r3
 764:	00000000 	andeq	r0, r0, r0
 768:	00000388 	andeq	r0, r0, r8, lsl #7
 76c:	00000388 	andeq	r0, r0, r8, lsl #7
	...
 778:	00000388 	andeq	r0, r0, r8, lsl #7
 77c:	00000388 	andeq	r0, r0, r8, lsl #7
 780:	00000388 	andeq	r0, r0, r8, lsl #7
 784:	00000000 	andeq	r0, r0, r0
 788:	000003ac 	andeq	r0, r0, ip, lsr #7
 78c:	000003c8 	andeq	r0, r0, r8, asr #7
 790:	000003c8 	andeq	r0, r0, r8, asr #7
 794:	00000000 	andeq	r0, r0, r0
 798:	000003d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 79c:	000003d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 7a0:	000003d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 7a4:	00000000 	andeq	r0, r0, r0
 7a8:	000003d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 7ac:	000003d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
	...
 7bc:	000003d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 7c0:	000003d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 7c4:	00000000 	andeq	r0, r0, r0
 7c8:	000003d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 7cc:	000003e8 	andeq	r0, r0, r8, ror #7
	...
 7dc:	000003e8 	andeq	r0, r0, r8, ror #7
 7e0:	000003e8 	andeq	r0, r0, r8, ror #7
 7e4:	00000000 	andeq	r0, r0, r0

000007e8 <execute>:
 7e8:	e92d01ff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8}
 7ec:	e5d00000 	ldrb	r0, [r0]
 7f0:	e59f1040 	ldr	r1, [pc, #64]	; 838 <execute+0x50>
 7f4:	e3a03004 	mov	r3, #4
 7f8:	e0040390 	mul	r4, r0, r3
 7fc:	e7912004 	ldr	r2, [r1, r4]
 800:	e12fff12 	bx	r2
 804:	e12fff1e 	bx	lr
	...

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00001f41 	andeq	r1, r0, r1, asr #30
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000015 	andeq	r0, r0, r5, lsl r0
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	4d445437 	cfstrdmi	mvd5, [r4, #-220]	; 0xffffff24
  18:	02060049 	andeq	r0, r6, #73	; 0x49
  1c:	01090108 	tsteq	r9, r8, lsl #2
