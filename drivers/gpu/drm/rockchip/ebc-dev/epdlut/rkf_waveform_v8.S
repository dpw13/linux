// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020 Rockchip Electronics Co. Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.text
	.file	"rkf_waveform.c"
	.globl	rkf_wf_input
	.p2align	2
	.type	rkf_wf_input,@function
rkf_wf_input:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!
	stp	x22, x21, [sp, #32]
	adrp	x22, global_waveform
	stp	x24, x23, [sp, #16]
	mov	x29, sp
	stp	x20, x19, [sp, #48]
	ldr	x8, [x22, :lo12:global_waveform]
	cbz	x8, .LBB0_3
	mov	w0, #-16
.LBB0_2:
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldp	x29, x30, [sp], #64
	ldr	x30, [x18, #-8]!
	ret
.LBB0_3:
	adrp	x1, .L.str.5
	mov	x19, x0
	add	x0, x0, #4
	add	x1, x1, :lo12:.L.str.5
	mov	w2, #12
	bl	strncmp
	cbnz	w0, .LBB0_12
	ldr	w23, [x19]
	cmp	w23, #64, lsl #12
	b.gt	.LBB0_14
	sxtw	x8, w23
	adrp	x21, crc32_table
	add	x21, x21, :lo12:crc32_table
	mov	w1, wzr
	mov	x0, x21
	mov	w2, #1024
	ldr	w20, [x19, x8]
	mov	w24, #3511
	movk	w24, #1217, lsl #16
	bl	memset
	mov	w13, #28088
	mov	w14, #14044
	mov	w15, #7022
	mov	w8, wzr
	mov	w9, wzr
	mov	w10, wzr
	mov	w11, wzr
	mov	x12, xzr
	movk	w13, #9736, lsl #16
	movk	w14, #4868, lsl #16
	movk	w15, #2434, lsl #16
	mov	w16, #-2147483648
	mov	w17, #1073741824
	mov	w0, #536870912
	mov	w1, #268435456
.LBB0_6:
	lsl	w2, w12, #24
	tst	w12, #0x40
	and	w2, w13, w2, asr #31
	eor	w3, w2, w14
	csel	w2, w2, w3, eq
	tst	w12, #0x20
	eor	w3, w2, w15
	csel	w2, w2, w3, eq
	tst	w12, #0x10
	eor	w3, w2, w24
	csel	w2, w2, w3, eq
	eor	w3, w2, w8
	lsl	w2, w2, #1
	eor	w4, w2, w24
	cmp	w3, #0
	csel	w2, w2, w4, ge
	add	w8, w8, w1
	eor	w3, w2, w9
	lsl	w2, w2, #1
	eor	w4, w2, w24
	cmp	w3, #0
	csel	w2, w2, w4, ge
	add	w9, w9, w0
	eor	w3, w2, w10
	lsl	w2, w2, #1
	eor	w4, w2, w24
	cmp	w3, #0
	csel	w2, w2, w4, ge
	add	w10, w10, w17
	eor	w3, w2, w11
	lsl	w2, w2, #1
	eor	w4, w2, w24
	cmp	w3, #0
	csel	w2, w2, w4, ge
	add	w11, w11, w16
	str	w2, [x21, x12, lsl #2]
	add	x12, x12, #1
	cmp	x12, #256
	b.ne	.LBB0_6
	mov	w2, wzr
	cbz	w23, .LBB0_10
	mov	x8, x19
.LBB0_9:
	ldrb	w9, [x8], #1
	subs	w23, w23, #1
	eor	w9, w9, w2, lsr #24
	ldr	w9, [x21, w9, uxtw #2]
	eor	w2, w9, w2, lsl #8
	b.ne	.LBB0_9
.LBB0_10:
	cmp	w20, w2
	b.ne	.LBB0_13
	adrp	x0, .L.str.2
	add	x1, x19, #20
	add	x0, x0, :lo12:.L.str.2
	bl	_printk
	mov	w0, wzr
	str	x19, [x22, :lo12:global_waveform]
	b	.LBB0_2
.LBB0_12:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	_printk
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_15
.LBB0_13:
	adrp	x0, .L.str.7
	mov	w1, w20
	add	x0, x0, :lo12:.L.str.7
	bl	_printk
.LBB0_14:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
.LBB0_15:
	bl	_printk
	mov	w0, #-1
	b	.LBB0_2
.Lfunc_end0:
	.size	rkf_wf_input, .Lfunc_end0-rkf_wf_input

	.globl	rkf_wf_get_version
	.p2align	2
	.type	rkf_wf_get_version,@function
rkf_wf_get_version:
	adrp	x8, global_waveform
	ldr	x8, [x8, :lo12:global_waveform]
	add	x9, x8, #84
	cmp	x8, #0
	csel	x0, xzr, x9, eq
	ret
.Lfunc_end1:
	.size	rkf_wf_get_version, .Lfunc_end1-rkf_wf_get_version

	.globl	rkf_wf_get_lut
	.p2align	2
	.type	rkf_wf_get_lut,@function
rkf_wf_get_lut:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-80]!
	adrp	x8, global_waveform
	str	x25, [sp, #16]
	stp	x24, x23, [sp, #32]
	mov	x29, sp
	stp	x22, x21, [sp, #48]
	ldr	x8, [x8, :lo12:global_waveform]
	stp	x20, x19, [sp, #64]
	cbz	x8, .LBB2_6
	mov	x20, x0
	cbz	x0, .LBB2_7
	cmp	w3, #32
	b.eq	.LBB2_37
	mov	w19, w2
	sub	w8, w1, #8
	cmp	w8, #6
	b.hs	.LBB2_5
	mov	w9, #57
	lsr	w9, w9, w8
	tbnz	w9, #0, .LBB2_8
.LBB2_5:
	cmp	w1, #14
	mov	w8, #3
	csel	w21, w8, w1, eq
	b	.LBB2_9
.LBB2_6:
	mov	w0, #-19
	b	.LBB2_39
.LBB2_7:
	mov	w0, #-22
	b	.LBB2_39
.LBB2_8:
	adrp	x9, .Lswitch.table.rkf_wf_get_lut
	add	x9, x9, :lo12:.Lswitch.table.rkf_wf_get_lut
	ldr	w21, [x9, w8, sxtw #2]
.LBB2_9:
	adrp	x23, rkf_wf_get_lut.sftemp
	mov	w8, #26215
	movk	w8, #26214, lsl #16
	adrp	x25, rkf_wf_get_lut.stype
	ldrsw	x10, [x23, :lo12:rkf_wf_get_lut.sftemp]
	smull	x9, w19, w8
	lsr	x11, x9, #63
	asr	x9, x9, #33
	mul	x8, x10, x8
	add	w24, w9, w11
	lsr	x9, x8, #63
	asr	x8, x8, #33
	add	w8, w8, w9
	cmp	w24, w8
	b.ne	.LBB2_11
	ldr	w9, [x25, :lo12:rkf_wf_get_lut.stype]
	cmp	w9, w21
	b.eq	.LBB2_32
.LBB2_11:
	cmp	w21, #10
	b.eq	.LBB2_31
	ldr	x0, [x20, #8]
	cbz	x0, .LBB2_14
	bl	kfree
	str	xzr, [x20, #8]
.LBB2_14:
	mov	x0, x20
	mov	w1, w21
	mov	w2, w19
	bl	parse_wf_data
	tbnz	w0, #31, .LBB2_38
	mov	w22, w0
	ldr	x1, [x20, #16]
	mov	x0, x20
	mov	w2, w22
	bl	rkf_lut_init_wf_table
	cmp	w21, #1
	b.eq	.LBB2_26
	cmp	w21, #7
	b.ne	.LBB2_30
	ldr	x8, [x20, #16]
	cbz	w22, .LBB2_25
	mov	w10, w22
	mov	x9, xzr
	lsl	x10, x10, #10
.LBB2_19:
	add	x11, x8, w9, sxtw
	add	x9, x9, #1024
	cmp	x10, x9
	ldrb	w12, [x11, #960]
	ldrb	w13, [x11, #30]
	strb	w12, [x11, #992]
	strb	w12, [x11, #928]
	strb	w12, [x11, #864]
	strb	w13, [x11, #62]
	b.ne	.LBB2_19
	sub	w10, w22, #1
	cmp	w10, #2
	b.lt	.LBB2_25
	sub	x12, x10, #1
	mov	w9, #1
	cmp	x12, #2
	b.hs	.LBB2_40
	mov	w11, #1
.LBB2_23:
	sub	x10, x10, x11
	lsl	w11, w11, #10
	mov	w12, #2
.LBB2_24:
	add	x13, x8, w11, sxtw
	subs	x10, x10, #1
	add	w11, w11, #1024
	strb	w12, [x13, #1022]
	strb	w9, [x13, #32]
	b.ne	.LBB2_24
.LBB2_25:
	mov	w9, #1
	mov	w10, #2
	strb	w9, [x8, #1918]
	strb	w10, [x8, #1982]
	strb	w10, [x8, #2942]
	strb	w10, [x8, #3006]
	strb	w10, [x8, #3966]
	b	.LBB2_30
.LBB2_26:
	ldr	x9, [x20, #16]
	mov	w8, #4128
	add	x8, x9, x8
	cbz	w22, .LBB2_29
	mov	w11, w22
	mov	x10, xzr
	lsl	x11, x11, #10
.LBB2_28:
	add	x12, x9, w10, sxtw
	add	x10, x10, #1024
	cmp	x11, x10
	ldrb	w13, [x12, #960]
	ldrb	w14, [x12, #30]
	strb	w13, [x12, #992]
	strb	w13, [x12, #928]
	strb	w13, [x12, #864]
	strb	w14, [x12, #62]
	b.ne	.LBB2_28
.LBB2_29:
	mov	w10, #2
	mov	w11, #1
	strb	w10, [x9, #4094]
	strb	w11, [x9, #3104]
	strb	w11, [x8, #862]
	strb	w10, [x8, #990]
	strb	w11, [x8]
	strb	w10, [x8, #926]
	strb	w10, [x8, #1886]
	strb	w10, [x8, #2014]
	strb	w11, [x8, #1024]
	strb	w10, [x8, #1950]
	strb	w10, [x8, #2910]
	strb	w10, [x8, #3038]
	strb	w11, [x8, #2048]
.LBB2_30:
	ldrb	w8, [x20, #1]
	mov	w9, #26215
	movk	w9, #26214, lsl #16
	orr	w8, w22, w8, lsl #8
	str	w8, [x20]
	ldrsw	x8, [x23, :lo12:rkf_wf_get_lut.sftemp]
	str	w21, [x25, :lo12:rkf_wf_get_lut.stype]
	mul	x8, x8, x9
	lsr	x9, x8, #63
	asr	x8, x8, #33
	add	w8, w8, w9
.LBB2_31:
	cmp	w24, w8
	b.ne	.LBB2_33
.LBB2_32:
	mov	w0, wzr
	b	.LBB2_39
.LBB2_33:
	ldr	x0, [x20, #8]
	cbz	x0, .LBB2_35
	bl	kfree
	str	xzr, [x20, #8]
.LBB2_35:
	bl	epd_overlay_lut
	mov	w1, w0
	mov	x0, x20
	mov	w2, w19
	bl	parse_wf_data
	tbnz	w0, #31, .LBB2_38
	mov	w21, w0
	ldr	x1, [x20, #24]
	mov	x0, x20
	mov	w2, w21
	bl	rkf_lut_init_wf_table
	ldrb	w8, [x20]
	mov	w0, wzr
	bfi	w8, w21, #8, #24
	str	w8, [x20]
	str	w19, [x23, :lo12:rkf_wf_get_lut.sftemp]
	b	.LBB2_39
.LBB2_37:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	_printk
	mov	w0, #-22
	b	.LBB2_39
.LBB2_38:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	_printk
	mov	w0, #-5
.LBB2_39:
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldr	x25, [sp, #16]
	ldp	x29, x30, [sp], #80
	ldr	x30, [x18, #-8]!
	ret
.LBB2_40:
	sub	x14, x10, #2
	mov	w17, #64511
	and	x11, x14, #0xffffffff
	movk	w17, #32767, lsl #16
	lsl	x16, x11, #10
	mov	w11, #1
	tst	x16, #0xffffffff00000000
	cset	w15, ne
	cmp	xzr, x14, lsr #54
	cset	w13, ne
	cmp	w16, w17
	b.hi	.LBB2_23
	tbnz	w15, #0, .LBB2_23
	lsr	x15, x14, #32
	cbnz	x15, .LBB2_23
	add	x15, x8, #2046
	lsl	x14, x14, #10
	add	x16, x15, x14
	cmp	x16, x15
	b.lo	.LBB2_23
	tbnz	w13, #0, .LBB2_23
	add	x15, x8, #1056
	add	x14, x15, x14
	cmp	x14, x15
	b.lo	.LBB2_23
	tbnz	w13, #0, .LBB2_23
	and	x13, x12, #0xfffffffffffffffe
	orr	x11, x12, #0x1
	mov	w14, #2048
	mov	w15, #2
	mov	w16, #1
	mov	x17, x13
.LBB2_48:
	sub	w0, w14, #1024
	add	x1, x8, w14, sxtw
	add	w14, w14, #2048
	subs	x17, x17, #2
	add	x0, x8, w0, sxtw
	strb	w15, [x1, #1022]
	strb	w16, [x1, #32]
	strb	w15, [x0, #1022]
	strb	w16, [x0, #32]
	b.ne	.LBB2_48
	cmp	x12, x13
	b.ne	.LBB2_23
	b	.LBB2_25
.Lfunc_end2:
	.size	rkf_wf_get_lut, .Lfunc_end2-rkf_wf_get_lut

	.p2align	2
	.type	parse_wf_data,@function
parse_wf_data:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!
	cmp	w1, #7
	stp	x24, x23, [sp, #16]
	stp	x22, x21, [sp, #32]
	mov	x29, sp
	stp	x20, x19, [sp, #48]
	b.hi	.LBB3_14
	adrp	x9, .LJTI3_0
	mov	w8, w1
	add	x9, x9, :lo12:.LJTI3_0
	mov	x19, x0
	adr	x10, .LBB3_2
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB3_2:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
	csel	w10, w10, w11, lo
	ldr	x8, [x8, :lo12:global_waveform]
	add	x11, x8, #148
.LBB3_3:
	ldrb	w12, [x11, x9]
	cmp	w12, w10, uxtb
	b.hi	.LBB3_6
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB3_3
	mov	x9, xzr
.LBB3_6:
	add	x9, x8, x9, lsl #2
	mov	w1, #3520
	ldr	w9, [x9, #596]
	add	x24, x8, x9
	ldrb	w20, [x24]
	add	x23, x20, #15
	lsr	x8, x23, #2
	and	x22, x8, #0x7c
	mov	x0, x22
	bl	__kmalloc
	cbz	x0, .LBB3_14
	add	x1, x24, #4
	mov	x2, x22
	mov	x21, x0
	bl	memcpy
	lsl	w8, w23, #6
	mov	w1, #3520
	and	w0, w8, #0x7c00
	bl	__kmalloc
	cbz	x0, .LBB3_52
	cbz	w20, .LBB3_13
	lsr	w11, w23, #4
	mov	w10, #16384
	cmp	w11, #1
	mov	w12, #1365
	mov	w8, wzr
	mov	w9, wzr
	movk	w10, #21, lsl #16
	csinc	w11, w11, wzr, gt
	movk	w12, #5440, lsl #16
	mov	x13, x21
.LBB3_10:
	mov	w15, wzr
	mov	w14, wzr
	ldr	w16, [x13]
.LBB3_11:
	asr	w17, w16, w15
	add	w3, w8, w14
	and	w1, w17, #0x3
	lsl	w17, w17, #30
	add	w4, w3, #3
	add	w14, w14, #16
	mul	w2, w1, w10
	add	w15, w15, #2
	bfi	w17, w1, #12, #2
	cmp	w14, #256
	orr	w17, w17, w2
	add	w2, w3, #1
	madd	w17, w1, w12, w17
	add	w1, w3, #2
	str	w17, [x0, w2, sxtw #2]
	add	w2, w3, #4
	str	w17, [x0, w1, sxtw #2]
	add	w1, w3, #5
	str	w17, [x0, w4, sxtw #2]
	add	w4, w3, #6
	str	w17, [x0, w2, sxtw #2]
	add	w2, w3, #7
	str	w17, [x0, w1, sxtw #2]
	add	w1, w3, #8
	str	w17, [x0, w4, sxtw #2]
	add	w4, w3, #9
	str	w17, [x0, w2, sxtw #2]
	add	w2, w3, #10
	str	w17, [x0, w1, sxtw #2]
	add	w1, w3, #11
	str	w17, [x0, w4, sxtw #2]
	str	w17, [x0, w2, sxtw #2]
	add	w2, w3, #12
	str	w17, [x0, w1, sxtw #2]
	add	w1, w3, #13
	str	w17, [x0, w3, sxtw #2]
	str	w17, [x0, w2, sxtw #2]
	add	w2, w3, #14
	str	w17, [x0, w1, sxtw #2]
	add	w1, w3, #15
	str	w17, [x0, w2, sxtw #2]
	str	w17, [x0, w1, sxtw #2]
	b.ne	.LBB3_11
	add	x13, x13, #4
	add	w9, w9, #1
	add	w8, w8, w14
	cmp	w9, w11
	b.ne	.LBB3_10
.LBB3_13:
	str	x0, [x19, #8]
	mov	x0, x21
	bl	kfree
	b	.LBB3_51
.LBB3_14:
	mov	w20, #-1
	b	.LBB3_51
.LBB3_15:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
	csel	w10, w10, w11, lo
	ldr	x8, [x8, :lo12:global_waveform]
	add	x11, x8, #468
.LBB3_16:
	ldrb	w12, [x11, x9]
	cmp	w12, w10, uxtb
	b.hi	.LBB3_19
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB3_16
	mov	x9, xzr
.LBB3_19:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1876]
	b	.LBB3_48
.LBB3_20:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
	csel	w10, w10, w11, lo
	ldr	x8, [x8, :lo12:global_waveform]
	add	x11, x8, #212
.LBB3_21:
	ldrb	w12, [x11, x9]
	cmp	w12, w10, uxtb
	b.hi	.LBB3_27
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB3_21
	b	.LBB3_26
.LBB3_23:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
	csel	w10, w10, w11, lo
	ldr	x8, [x8, :lo12:global_waveform]
	add	x11, x8, #212
.LBB3_24:
	ldrb	w12, [x11, x9]
	cmp	w12, w10, uxtb
	b.hi	.LBB3_27
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB3_24
.LBB3_26:
	mov	x9, xzr
.LBB3_27:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #852]
	b	.LBB3_48
.LBB3_28:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
	csel	w10, w10, w11, lo
	ldr	x8, [x8, :lo12:global_waveform]
	add	x11, x8, #276
.LBB3_29:
	ldrb	w12, [x11, x9]
	cmp	w12, w10, uxtb
	b.hi	.LBB3_32
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB3_29
	mov	x9, xzr
.LBB3_32:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1108]
	b	.LBB3_48
.LBB3_33:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
	csel	w10, w10, w11, lo
	ldr	x8, [x8, :lo12:global_waveform]
	add	x11, x8, #340
.LBB3_34:
	ldrb	w12, [x11, x9]
	cmp	w12, w10, uxtb
	b.hi	.LBB3_37
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB3_34
	mov	x9, xzr
.LBB3_37:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1364]
	b	.LBB3_48
.LBB3_38:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
	csel	w10, w10, w11, lo
	ldr	x8, [x8, :lo12:global_waveform]
	add	x11, x8, #404
.LBB3_39:
	ldrb	w12, [x11, x9]
	cmp	w12, w10, uxtb
	b.hi	.LBB3_42
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB3_39
	mov	x9, xzr
.LBB3_42:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1620]
	b	.LBB3_48
.LBB3_43:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
	csel	w10, w10, w11, lo
	ldr	x8, [x8, :lo12:global_waveform]
	add	x11, x8, #532
.LBB3_44:
	ldrb	w12, [x11, x9]
	cmp	w12, w10, uxtb
	b.hi	.LBB3_47
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB3_44
	mov	x9, xzr
.LBB3_47:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #2132]
.LBB3_48:
	add	x23, x8, x9
	mov	w1, #3520
	ldrb	w22, [x23]
	lsl	x20, x22, #6
	mov	x0, x20
	bl	__kmalloc
	cbz	x0, .LBB3_50
	add	x1, x23, #4
	mov	x2, x20
	mov	x21, x0
	bl	memcpy
	mov	w20, w22
	str	x21, [x19, #8]
	b	.LBB3_51
.LBB3_50:
	mov	w20, #-1
	str	xzr, [x19, #8]
.LBB3_51:
	mov	w0, w20
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldp	x29, x30, [sp], #64
	ldr	x30, [x18, #-8]!
	ret
.LBB3_52:
	mov	x0, x21
	str	xzr, [x19, #8]
	bl	kfree
	mov	w20, #-1
	b	.LBB3_51
.Lfunc_end3:
	.size	parse_wf_data, .Lfunc_end3-parse_wf_data
	.section	.rodata,"a",@progbits
.LJTI3_0:
	.byte	(.LBB3_2-.LBB3_2)>>2
	.byte	(.LBB3_15-.LBB3_2)>>2
	.byte	(.LBB3_20-.LBB3_2)>>2
	.byte	(.LBB3_23-.LBB3_2)>>2
	.byte	(.LBB3_28-.LBB3_2)>>2
	.byte	(.LBB3_33-.LBB3_2)>>2
	.byte	(.LBB3_38-.LBB3_2)>>2
	.byte	(.LBB3_43-.LBB3_2)>>2

	.text
	.p2align	2
	.type	rkf_lut_init_wf_table,@function
rkf_lut_init_wf_table:
	cmp	w2, #1
	b.lt	.LBB4_5
	mov	w8, wzr
	mov	w9, wzr
	mov	x10, xzr
	mov	w11, w2
	add	x12, x1, #7
.LBB4_2:
	ldr	x15, [x0, #8]
	and	x14, x8, #0x7ffffff
	mov	x13, xzr
	add	x14, x12, x14, lsl #5
	add	x15, x15, w9, sxtw #2
.LBB4_3:
	add	x16, x15, x13
	add	x13, x13, #4
	cmp	x13, #64
	ldrb	w17, [x16]
	and	w17, w17, #0x3
	sturb	w17, [x14, #-7]
	ldrb	w17, [x16]
	ubfx	w17, w17, #2, #2
	sturb	w17, [x14, #-6]
	ldrb	w17, [x16]
	ubfx	w17, w17, #4, #2
	sturb	w17, [x14, #-5]
	ldrb	w17, [x16]
	lsr	w17, w17, #6
	sturb	w17, [x14, #-4]
	ldrb	w17, [x16, #1]
	and	w17, w17, #0x3
	sturb	w17, [x14, #-3]
	ldr	w17, [x16]
	ubfx	w17, w17, #10, #2
	sturb	w17, [x14, #-2]
	ldr	w17, [x16]
	ubfx	w17, w17, #12, #2
	sturb	w17, [x14, #-1]
	ldr	w17, [x16]
	ubfx	w17, w17, #14, #2
	strb	w17, [x14]
	ldrb	w17, [x16, #2]
	and	w17, w17, #0x3
	strb	w17, [x14, #1]
	ldr	w17, [x16]
	ubfx	w17, w17, #18, #2
	strb	w17, [x14, #2]
	ldr	w17, [x16]
	ubfx	w17, w17, #20, #2
	strb	w17, [x14, #3]
	ldr	w17, [x16]
	ubfx	w17, w17, #22, #2
	strb	w17, [x14, #4]
	ldrb	w17, [x16, #3]
	and	w17, w17, #0x3
	strb	w17, [x14, #5]
	ldr	w17, [x16]
	ubfx	w17, w17, #26, #2
	strb	w17, [x14, #6]
	ldr	w17, [x16]
	ubfx	w17, w17, #28, #2
	strb	w17, [x14, #7]
	ldr	w16, [x16]
	lsr	w16, w16, #30
	strb	w16, [x14, #8]
	add	x14, x14, #32
	b.ne	.LBB4_3
	add	x10, x10, #1
	add	w9, w9, #16
	add	w8, w8, #32
	cmp	x10, x11
	b.ne	.LBB4_2
.LBB4_5:
	ret
.Lfunc_end4:
	.size	rkf_lut_init_wf_table, .Lfunc_end4-rkf_lut_init_wf_table

	.type	global_waveform,@object
	.local	global_waveform
	.comm	global_waveform,8,8
	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rkf: failed to check RKF file format\n"
	.size	.L.str, 38

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"rkf: failed to check crc RKF waveform\n"
	.size	.L.str.1, 39

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"rkf file version: %s\n"
	.size	.L.str.2, 22

	.type	rkf_wf_get_lut.stype,@object
	.data
	.p2align	2
rkf_wf_get_lut.stype:
	.word	15
	.size	rkf_wf_get_lut.stype, 4

	.type	rkf_wf_get_lut.sftemp,@object
	.p2align	2
rkf_wf_get_lut.sftemp:
	.word	4294967295
	.size	rkf_wf_get_lut.sftemp, 4

	.type	.L.str.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"rkf: not support 5bit waveform\n"
	.size	.L.str.3, 32

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"rkf waveform get frame number failed\n"
	.size	.L.str.4, 38

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"rkf waveform"
	.size	.L.str.5, 13

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"rkf: check format failed\n"
	.size	.L.str.6, 26

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"[EINK]: waveform crc err readcrc = %x crccheck = %x\n"
	.size	.L.str.7, 53

	.type	crc32_table,@object
	.local	crc32_table
	.comm	crc32_table,1024,4
	.type	.Lswitch.table.rkf_wf_get_lut,@object
	.section	.rodata,"a",@progbits
	.p2align	2
.Lswitch.table.rkf_wf_get_lut:
	.word	3
	.word	3
	.word	3
	.word	5
	.word	6
	.word	4
	.size	.Lswitch.table.rkf_wf_get_lut, 24

	.ident	"Android (8508608, based on r450784e) clang version 14.0.7 (https://android.googlesource.com/toolchain/llvm-project 4c603efb0cca074e9238af8b4106c30add4418f6)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
