// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020 Rockchip Electronics Co. Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.text
	.file	"rkf_waveform.c"
	.file	1 "/home/lyx/rk-android14/kernel-6.1" "drivers/gpu/drm/rockchip/ebc-dev/epdlut/epd_lut.h"
	.file	2 "/home/lyx/rk-android14/kernel-6.1" "drivers/gpu/drm/rockchip/ebc-dev/epdlut/rkf_waveform.c"
	.file	3 "/home/lyx/rk-android14/kernel-6.1" "./include/linux/stddef.h"
	.file	4 "/home/lyx/rk-android14/kernel-6.1" "./include/linux/slab.h"
	.file	5 "/home/lyx/rk-android14/kernel-6.1" "./include/uapi/asm-generic/int-ll64.h"
	.file	6 "/home/lyx/rk-android14/kernel-6.1" "./include/asm-generic/int-ll64.h"
	.file	7 "/home/lyx/rk-android14/kernel-6.1" "./include/linux/types.h"
	.globl	rkf_wf_input
	.p2align	2
	.type	rkf_wf_input,@function
rkf_wf_input:
.Lfunc_begin0:
	.loc	2 128 0
	.cfi_sections .debug_frame
	.cfi_startproc
	str	x30, [x18], #8
	.cfi_escape 0x16, 0x12, 0x02, 0x82, 0x78
	stp	x29, x30, [sp, #-64]!
	stp	x24, x23, [sp, #16]
	mov	x29, sp
	stp	x22, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
.Ltmp0:
	.loc	2 132 6 prologue_end
	adrp	x22, global_waveform
	ldr	x8, [x22, :lo12:global_waveform]
.Ltmp1:
	.loc	2 132 6 is_stmt 0
	cbz	x8, .LBB0_3
.Ltmp2:
	.loc	2 0 6
	mov	w0, #-16
.Ltmp3:
.LBB0_2:
	.loc	2 152 1 is_stmt 1
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldp	x29, x30, [sp], #64
	ldr	x30, [x18, #-8]!
	ret
.Ltmp4:
.LBB0_3:
	.loc	2 93 6
	adrp	x1, .L.str.5
	mov	x19, x0
.Ltmp5:
	.loc	2 135 28
	add	x0, x0, #4
.Ltmp6:
	.loc	2 93 6
	add	x1, x1, :lo12:.L.str.5
	mov	w2, #12
	bl	strncmp
.Ltmp7:
	.loc	2 93 6 is_stmt 0
	cbnz	w0, .LBB0_12
.Ltmp8:
	.loc	2 106 16 is_stmt 1
	ldr	w23, [x19]
.Ltmp9:
	.loc	2 106 6 is_stmt 0
	cmp	w23, #64, lsl #12
	b.gt	.LBB0_14
.Ltmp10:
	.loc	2 0 6
	sxtw	x8, w23
.Ltmp11:
	.loc	2 83 2 is_stmt 1
	adrp	x21, crc32_table
	add	x21, x21, :lo12:crc32_table
	mov	w1, wzr
	mov	x0, x21
	mov	w2, #1024
.Ltmp12:
	.loc	2 109 12
	ldr	w20, [x19, x8]
.Ltmp13:
	.loc	2 0 12 is_stmt 0
	mov	w24, #3511
	movk	w24, #1217, lsl #16
.Ltmp14:
	.loc	2 83 2 is_stmt 1
	bl	memset
.Ltmp15:
	.loc	2 0 2 is_stmt 0
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
.Ltmp16:
.LBB0_6:
	.loc	2 68 8 is_stmt 1
	lsl	w2, w12, #24
	tst	w12, #0x40
	and	w2, w13, w2, asr #31
.Ltmp17:
	eor	w3, w2, w14
	csel	w2, w2, w3, eq
	tst	w12, #0x20
	eor	w3, w2, w15
	csel	w2, w2, w3, eq
	tst	w12, #0x10
	eor	w3, w2, w24
	csel	w2, w2, w3, eq
.Ltmp18:
	.loc	2 68 16 is_stmt 0
	eor	w3, w2, w8
.Ltmp19:
	.loc	2 68 8
	lsl	w2, w2, #1
.Ltmp20:
	eor	w4, w2, w24
	cmp	w3, #0
	csel	w2, w2, w4, ge
.Ltmp21:
	.loc	2 64 16 is_stmt 1
	add	w8, w8, w1
.Ltmp22:
	.loc	2 68 16
	eor	w3, w2, w9
.Ltmp23:
	.loc	2 68 8 is_stmt 0
	lsl	w2, w2, #1
.Ltmp24:
	eor	w4, w2, w24
	cmp	w3, #0
	csel	w2, w2, w4, ge
.Ltmp25:
	.loc	2 64 16 is_stmt 1
	add	w9, w9, w0
.Ltmp26:
	.loc	2 68 16
	eor	w3, w2, w10
.Ltmp27:
	.loc	2 68 8 is_stmt 0
	lsl	w2, w2, #1
.Ltmp28:
	eor	w4, w2, w24
	cmp	w3, #0
	csel	w2, w2, w4, ge
.Ltmp29:
	.loc	2 64 16 is_stmt 1
	add	w10, w10, w17
.Ltmp30:
	.loc	2 68 16
	eor	w3, w2, w11
.Ltmp31:
	.loc	2 68 8 is_stmt 0
	lsl	w2, w2, #1
.Ltmp32:
	eor	w4, w2, w24
	cmp	w3, #0
	csel	w2, w2, w4, ge
.Ltmp33:
	.loc	2 64 16 is_stmt 1
	add	w11, w11, w16
.Ltmp34:
	.loc	2 74 16
	str	w2, [x21, x12, lsl #2]
.Ltmp35:
	.loc	2 64 24
	add	x12, x12, #1
.Ltmp36:
	.loc	2 64 2 is_stmt 0
	cmp	x12, #256
	b.ne	.LBB0_6
.Ltmp37:
	.loc	2 0 2
	mov	w2, wzr
.Ltmp38:
	.loc	2 85 2 is_stmt 1
	cbz	w23, .LBB0_10
.Ltmp39:
	.loc	2 0 2 is_stmt 0
	mov	x8, x19
.Ltmp40:
.LBB0_9:
	.loc	2 86 60 is_stmt 1
	ldrb	w9, [x8], #1
.Ltmp41:
	.loc	2 85 16
	subs	w23, w23, #1
	.loc	2 86 58
	eor	w9, w9, w2, lsr #24
	.loc	2 86 30 is_stmt 0
	ldr	w9, [x21, w9, uxtw #2]
	.loc	2 86 28
	eor	w2, w9, w2, lsl #8
.Ltmp42:
	.loc	2 85 2 is_stmt 1
	b.ne	.LBB0_9
.Ltmp43:
.LBB0_10:
	.loc	2 112 6
	cmp	w20, w2
	b.ne	.LBB0_13
.Ltmp44:
	.loc	2 147 2
	adrp	x0, .L.str.2
	add	x1, x19, #20
	add	x0, x0, :lo12:.L.str.2
	bl	_printk
.Ltmp45:
	.loc	2 0 2 is_stmt 0
	mov	w0, wzr
.Ltmp46:
	.loc	2 149 18 is_stmt 1
	str	x19, [x22, :lo12:global_waveform]
	b	.LBB0_2
.Ltmp47:
.LBB0_12:
	.loc	2 96 3
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	_printk
.Ltmp48:
	.loc	2 137 3
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_15
.Ltmp49:
.LBB0_13:
	.loc	2 113 3
	adrp	x0, .L.str.7
	mov	w1, w20
	add	x0, x0, :lo12:.L.str.7
	bl	_printk
.Ltmp50:
.LBB0_14:
	.loc	2 143 3
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
.Ltmp51:
.LBB0_15:
	.loc	2 0 0 is_stmt 0
	bl	_printk
.Ltmp52:
	mov	w0, #-1
	b	.LBB0_2
.Ltmp53:
.Lfunc_end0:
	.size	rkf_wf_input, .Lfunc_end0-rkf_wf_input
	.cfi_endproc

	.globl	rkf_wf_get_version
	.p2align	2
	.type	rkf_wf_get_version,@function
rkf_wf_get_version:
.Lfunc_begin1:
	.loc	2 161 0 is_stmt 1
	.cfi_startproc
	.loc	2 162 7 prologue_end
	adrp	x8, global_waveform
	ldr	x8, [x8, :lo12:global_waveform]
.Ltmp54:
	.loc	2 162 6 is_stmt 0
	add	x9, x8, #84
	cmp	x8, #0
	csel	x0, xzr, x9, eq
	.loc	2 166 1 is_stmt 1
	ret
.Ltmp55:
.Lfunc_end1:
	.size	rkf_wf_get_version, .Lfunc_end1-rkf_wf_get_version
	.cfi_endproc

	.globl	rkf_wf_get_lut
	.p2align	2
	.type	rkf_wf_get_lut,@function
rkf_wf_get_lut:
.Lfunc_begin2:
	.loc	2 629 0
	.cfi_startproc
	str	x30, [x18], #8
	.cfi_escape 0x16, 0x12, 0x02, 0x82, 0x78
	stp	x29, x30, [sp, #-80]!
	str	x25, [sp, #16]
	mov	x29, sp
	stp	x24, x23, [sp, #32]
	stp	x22, x21, [sp, #48]
	stp	x20, x19, [sp, #64]
	.cfi_def_cfa w29, 80
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -64
	.cfi_offset w30, -72
	.cfi_offset w29, -80
.Ltmp56:
	.loc	2 635 7 prologue_end
	adrp	x8, global_waveform
	ldr	x8, [x8, :lo12:global_waveform]
.Ltmp57:
	.loc	2 635 6 is_stmt 0
	cbz	x8, .LBB2_6
.Ltmp58:
	.loc	2 0 6
	mov	x20, x0
.Ltmp59:
	.loc	2 638 6 is_stmt 1
	cbz	x0, .LBB2_7
.Ltmp60:
	.loc	2 641 6
	cmp	w3, #32
	b.eq	.LBB2_38
.Ltmp61:
	.loc	2 0 6 is_stmt 0
	mov	w19, w2
.Ltmp62:
	.loc	2 646 6 is_stmt 1
	cmp	w1, #8
	b.eq	.LBB2_8
.Ltmp63:
	cmp	w1, #12
	b.ne	.LBB2_9
.Ltmp64:
	.loc	2 0 6 is_stmt 0
	mov	w21, #6
.Ltmp65:
	b	.LBB2_10
.Ltmp66:
.LBB2_6:
	mov	w0, #-19
.Ltmp67:
	b	.LBB2_40
.Ltmp68:
.LBB2_7:
	mov	w0, #-22
	b	.LBB2_40
.Ltmp69:
.LBB2_8:
	mov	w21, #3
	b	.LBB2_10
.Ltmp70:
.LBB2_9:
	.loc	2 650 11 is_stmt 1
	cmp	w1, #11
	mov	w8, #5
	csel	w21, w8, w1, eq
.Ltmp71:
.LBB2_10:
	.loc	2 655 28
	adrp	x23, rkf_wf_get_lut.sftemp
	.loc	2 655 19 is_stmt 0
	mov	w8, #26215
	movk	w8, #26214, lsl #16
	adrp	x25, rkf_wf_get_lut.stype
	.loc	2 655 28
	ldrsw	x10, [x23, :lo12:rkf_wf_get_lut.sftemp]
	.loc	2 655 19
	smull	x9, w19, w8
	lsr	x11, x9, #63
	asr	x9, x9, #33
	.loc	2 655 35
	mul	x8, x10, x8
	.loc	2 655 19
	add	w24, w9, w11
	.loc	2 655 35
	lsr	x9, x8, #63
	asr	x8, x8, #33
	add	w8, w8, w9
	.loc	2 655 41
	cmp	w24, w8
	b.ne	.LBB2_12
.Ltmp72:
	.loc	2 0 41
	ldr	w9, [x25, :lo12:rkf_wf_get_lut.stype]
	.loc	2 655 41
	cmp	w9, w21
	b.eq	.LBB2_33
.Ltmp73:
.LBB2_12:
	.loc	2 658 6 is_stmt 1
	cmp	w21, #10
	b.eq	.LBB2_32
.Ltmp74:
	.loc	2 660 15
	ldr	x0, [x20, #8]
.Ltmp75:
	.loc	2 660 7 is_stmt 0
	cbz	x0, .LBB2_15
.Ltmp76:
	.loc	2 661 4 is_stmt 1
	bl	kfree
.Ltmp77:
	.loc	2 662 17
	str	xzr, [x20, #8]
.Ltmp78:
.LBB2_15:
	.loc	2 665 15
	mov	x0, x20
	mov	w1, w21
	mov	w2, w19
	bl	parse_wf_data
.Ltmp79:
	.loc	2 666 7
	tbnz	w0, #31, .LBB2_39
.Ltmp80:
	.loc	2 0 0 is_stmt 0
	mov	w22, w0
.Ltmp81:
	.loc	2 670 33 is_stmt 1
	ldr	x1, [x20, #16]
	.loc	2 670 3 is_stmt 0
	mov	x0, x20
	mov	w2, w22
	bl	rkf_lut_init_wf_table
.Ltmp82:
	.loc	2 672 7 is_stmt 1
	cmp	w21, #1
	b.eq	.LBB2_27
.Ltmp83:
	cmp	w21, #7
	b.ne	.LBB2_31
.Ltmp84:
	.loc	2 673 21
	ldr	x8, [x20, #16]
.Ltmp85:
	.loc	2 537 2
	cbz	w22, .LBB2_26
.Ltmp86:
	.loc	2 537 16 is_stmt 0
	mov	w10, w22
	mov	x9, xzr
.Ltmp87:
	.loc	2 537 2
	lsl	x10, x10, #10
.Ltmp88:
.LBB2_20:
	.loc	2 538 20 is_stmt 1
	add	x11, x8, w9, sxtw
.Ltmp89:
	.loc	2 537 16
	add	x9, x9, #1024
.Ltmp90:
	.loc	2 537 2 is_stmt 0
	cmp	x10, x9
.Ltmp91:
	.loc	2 539 38 is_stmt 1
	ldrb	w12, [x11, #960]
	.loc	2 542 38
	ldrb	w13, [x11, #30]
	.loc	2 539 36
	strb	w12, [x11, #992]
	.loc	2 540 36
	strb	w12, [x11, #928]
	.loc	2 541 36
	strb	w12, [x11, #864]
	.loc	2 542 36
	strb	w13, [x11, #62]
.Ltmp92:
	.loc	2 537 2
	b.ne	.LBB2_20
.Ltmp93:
	.loc	2 0 2 is_stmt 0
	sub	w10, w22, #1
.Ltmp94:
	.loc	2 545 2 is_stmt 1
	cmp	w10, #2
	b.lt	.LBB2_26
.Ltmp95:
	sub	x12, x10, #1
	mov	w9, #1
	cmp	x12, #2
	b.hs	.LBB2_41
.Ltmp96:
	.loc	2 0 2 is_stmt 0
	mov	w11, #1
.Ltmp97:
.LBB2_24:
	.loc	2 545 2
	sub	x10, x10, x11
	lsl	w11, w11, #10
	mov	w12, #2
.Ltmp98:
.LBB2_25:
	.loc	2 546 20 is_stmt 1
	add	x13, x8, w11, sxtw
.Ltmp99:
	.loc	2 545 16
	subs	x10, x10, #1
	add	w11, w11, #1024
.Ltmp100:
	.loc	2 547 36
	strb	w12, [x13, #1022]
	.loc	2 548 36
	strb	w9, [x13, #32]
.Ltmp101:
	.loc	2 545 2
	b.ne	.LBB2_25
.Ltmp102:
.LBB2_26:
	.loc	2 0 2 is_stmt 0
	mov	w9, #1
	mov	w10, #2
	.loc	2 557 35 is_stmt 1
	strb	w9, [x8, #1918]
	.loc	2 558 35
	strb	w10, [x8, #1982]
.Ltmp103:
	.loc	2 561 35
	strb	w10, [x8, #2942]
	.loc	2 562 35
	strb	w10, [x8, #3006]
.Ltmp104:
	.loc	2 565 35
	strb	w10, [x8, #3966]
	b	.LBB2_31
.Ltmp105:
.LBB2_27:
	.loc	2 675 24
	ldr	x9, [x20, #16]
	mov	w8, #4128
.Ltmp106:
	.loc	2 0 0 is_stmt 0
	add	x8, x9, x8
.Ltmp107:
	.loc	2 575 2 is_stmt 1
	cbz	w22, .LBB2_30
.Ltmp108:
	.loc	2 575 16 is_stmt 0
	mov	w11, w22
	mov	x10, xzr
.Ltmp109:
	.loc	2 575 2
	lsl	x11, x11, #10
.Ltmp110:
.LBB2_29:
	.loc	2 576 20 is_stmt 1
	add	x12, x9, w10, sxtw
.Ltmp111:
	.loc	2 575 16
	add	x10, x10, #1024
.Ltmp112:
	.loc	2 575 2 is_stmt 0
	cmp	x11, x10
.Ltmp113:
	.loc	2 577 38 is_stmt 1
	ldrb	w13, [x12, #960]
	.loc	2 580 38
	ldrb	w14, [x12, #30]
	.loc	2 577 36
	strb	w13, [x12, #992]
	.loc	2 578 36
	strb	w13, [x12, #928]
	.loc	2 579 36
	strb	w13, [x12, #864]
	.loc	2 580 36
	strb	w14, [x12, #62]
.Ltmp114:
	.loc	2 575 2
	b.ne	.LBB2_29
.Ltmp115:
.LBB2_30:
	.loc	2 0 2 is_stmt 0
	mov	w10, #2
	mov	w11, #1
	.loc	2 595 35 is_stmt 1
	strb	w10, [x9, #4094]
	.loc	2 596 35
	strb	w11, [x9, #3104]
.Ltmp116:
	.loc	2 599 35
	strb	w11, [x8, #862]
	.loc	2 600 35
	strb	w10, [x8, #990]
	.loc	2 601 35
	strb	w11, [x8]
	.loc	2 602 35
	strb	w10, [x8, #926]
.Ltmp117:
	.loc	2 605 35
	strb	w10, [x8, #1886]
	.loc	2 606 35
	strb	w10, [x8, #2014]
	.loc	2 607 35
	strb	w11, [x8, #1024]
	.loc	2 608 35
	strb	w10, [x8, #1950]
.Ltmp118:
	.loc	2 611 35
	strb	w10, [x8, #2910]
	.loc	2 612 35
	strb	w10, [x8, #3038]
	.loc	2 613 35
	strb	w11, [x8, #2048]
.Ltmp119:
.LBB2_31:
	.loc	2 677 21
	ldrb	w8, [x20, #1]
	mov	w9, #26215
	movk	w9, #26214, lsl #16
	.loc	2 678 21
	orr	w8, w22, w8, lsl #8
	str	w8, [x20]
.Ltmp120:
	.loc	2 682 27
	ldrsw	x8, [x23, :lo12:rkf_wf_get_lut.sftemp]
.Ltmp121:
	.loc	2 679 9
	str	w21, [x25, :lo12:rkf_wf_get_lut.stype]
.Ltmp122:
	.loc	2 682 34
	mul	x8, x8, x9
	lsr	x9, x8, #63
	asr	x8, x8, #33
	add	w8, w8, w9
.Ltmp123:
.LBB2_32:
	.loc	2 682 6 is_stmt 0
	cmp	w24, w8
	b.ne	.LBB2_34
.Ltmp124:
.LBB2_33:
	.loc	2 0 6
	mov	w0, wzr
	b	.LBB2_40
.Ltmp125:
.LBB2_34:
	.loc	2 684 15 is_stmt 1
	ldr	x0, [x20, #8]
.Ltmp126:
	.loc	2 684 7 is_stmt 0
	cbz	x0, .LBB2_36
.Ltmp127:
	.loc	2 685 4 is_stmt 1
	bl	kfree
.Ltmp128:
	.loc	2 686 17
	str	xzr, [x20, #8]
.Ltmp129:
.LBB2_36:
	.loc	2 688 17
	bl	epd_overlay_lut
.Ltmp130:
	mov	w1, w0
.Ltmp131:
	.loc	2 689 15
	mov	x0, x20
	mov	w2, w19
	bl	parse_wf_data
.Ltmp132:
	.loc	2 690 7
	tbnz	w0, #31, .LBB2_39
.Ltmp133:
	.loc	2 0 0 is_stmt 0
	mov	w21, w0
.Ltmp134:
	.loc	2 694 33 is_stmt 1
	ldr	x1, [x20, #24]
	.loc	2 694 3 is_stmt 0
	mov	x0, x20
	mov	w2, w21
	bl	rkf_lut_init_wf_table
.Ltmp135:
	.loc	2 696 21 is_stmt 1
	ldrb	w8, [x20]
	mov	w0, wzr
	.loc	2 697 21
	bfi	w8, w21, #8, #24
	str	w8, [x20]
	.loc	2 698 10
	str	w19, [x23, :lo12:rkf_wf_get_lut.sftemp]
	b	.LBB2_40
.Ltmp136:
.LBB2_38:
	.loc	2 642 3
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	_printk
.Ltmp137:
	.loc	2 0 3 is_stmt 0
	mov	w0, #-22
	b	.LBB2_40
.Ltmp138:
.LBB2_39:
	adrp	x0, .L.str.4
.Ltmp139:
	add	x0, x0, :lo12:.L.str.4
	bl	_printk
.Ltmp140:
	mov	w0, #-5
.Ltmp141:
.LBB2_40:
	.loc	2 702 1 is_stmt 1
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldr	x25, [sp, #16]
	ldp	x29, x30, [sp], #80
	ldr	x30, [x18, #-8]!
	ret
.LBB2_41:
.Ltmp142:
	.loc	2 545 2
	sub	x14, x10, #2
	mov	w17, #64511
	and	x11, x14, #0xffffffff
.Ltmp143:
	.loc	2 0 2 is_stmt 0
	movk	w17, #32767, lsl #16
	.loc	2 545 2
	lsl	x16, x11, #10
	mov	w11, #1
	tst	x16, #0xffffffff00000000
	cset	w15, ne
	cmp	xzr, x14, lsr #54
	cset	w13, ne
	cmp	w16, w17
	b.hi	.LBB2_24
.Ltmp144:
	.loc	2 0 2
	tbnz	w15, #0, .LBB2_24
.Ltmp145:
	lsr	x15, x14, #32
	cbnz	x15, .LBB2_24
.Ltmp146:
	add	x15, x8, #2046
	lsl	x14, x14, #10
	add	x16, x15, x14
	cmp	x16, x15
	b.lo	.LBB2_24
.Ltmp147:
	tbnz	w13, #0, .LBB2_24
.Ltmp148:
	add	x15, x8, #1056
	add	x14, x15, x14
	cmp	x14, x15
	b.lo	.LBB2_24
.Ltmp149:
	tbnz	w13, #0, .LBB2_24
.Ltmp150:
	.loc	2 545 2
	and	x13, x12, #0xfffffffffffffffe
	orr	x11, x12, #0x1
	mov	w14, #2048
	mov	w15, #2
	mov	w16, #1
	mov	x17, x13
.Ltmp151:
.LBB2_49:
	.loc	2 546 25 is_stmt 1
	sub	w0, w14, #1024
	.loc	2 546 20 is_stmt 0
	add	x1, x8, w14, sxtw
	add	w14, w14, #2048
	subs	x17, x17, #2
	add	x0, x8, w0, sxtw
	.loc	2 547 36 is_stmt 1
	strb	w15, [x1, #1022]
	.loc	2 548 36
	strb	w16, [x1, #32]
	.loc	2 547 36
	strb	w15, [x0, #1022]
	.loc	2 548 36
	strb	w16, [x0, #32]
	b.ne	.LBB2_49
.Ltmp152:
	.loc	2 545 2
	cmp	x12, x13
	b.ne	.LBB2_24
	b	.LBB2_26
.Ltmp153:
.Lfunc_end2:
	.size	rkf_wf_get_lut, .Lfunc_end2-rkf_wf_get_lut
	.cfi_endproc

	.p2align	2
	.type	parse_wf_data,@function
parse_wf_data:
.Lfunc_begin3:
	.loc	2 466 0
	.cfi_startproc
	str	x30, [x18], #8
	.cfi_escape 0x16, 0x12, 0x02, 0x82, 0x78
	stp	x29, x30, [sp, #-64]!
	stp	x24, x23, [sp, #16]
	mov	x29, sp
	stp	x22, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
.Ltmp154:
	.loc	2 470 2 prologue_end
	cmp	w1, #7
	b.hi	.LBB3_14
.Ltmp155:
	.loc	2 0 2 is_stmt 0
	adrp	x9, .LJTI3_0
	mov	w8, w1
	add	x9, x9, :lo12:.LJTI3_0
	mov	x19, x0
.Ltmp156:
	adr	x10, .LBB3_2
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
.Ltmp157:
.LBB3_2:
	.loc	2 188 34 is_stmt 1
	adrp	x8, global_waveform
.Ltmp158:
	.loc	2 173 9
	bic	w10, w2, w2, asr #31
.Ltmp159:
	.loc	2 174 9
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
.Ltmp160:
	csel	w10, w10, w11, lo
.Ltmp161:
	.loc	2 188 34
	ldr	x8, [x8, :lo12:global_waveform]
.Ltmp162:
	.loc	2 176 2
	add	x11, x8, #148
.Ltmp163:
.LBB3_3:
	.loc	2 177 14
	ldrb	w12, [x11, x9]
.Ltmp164:
	.loc	2 177 7 is_stmt 0
	cmp	w12, w10, uxtb
	b.hi	.LBB3_6
.Ltmp165:
	.loc	2 176 23 is_stmt 1
	add	x9, x9, #1
.Ltmp166:
	.loc	2 176 2 is_stmt 0
	cmp	x9, #50
	b.ne	.LBB3_3
.Ltmp167:
	.loc	2 0 2
	mov	x9, xzr
.Ltmp168:
.LBB3_6:
	.loc	2 229 14 is_stmt 1
	add	x9, x8, x9, lsl #2
.Ltmp169:
	.loc	4 561 9
	mov	w1, #3520
.Ltmp170:
	.loc	2 229 14
	ldr	w9, [x9, #596]
.Ltmp171:
	.loc	2 230 19
	add	x24, x8, x9
.Ltmp172:
	.loc	2 237 9
	ldrb	w20, [x24]
.Ltmp173:
	.loc	2 333 11
	add	x23, x20, #15
	.loc	2 333 39 is_stmt 0
	lsr	x8, x23, #2
.Ltmp174:
	and	x22, x8, #0x7c
.Ltmp175:
	.loc	4 561 9 is_stmt 1
	mov	x0, x22
	bl	__kmalloc
.Ltmp176:
	.loc	2 246 6
	cbz	x0, .LBB3_14
.Ltmp177:
	.loc	2 249 36
	add	x1, x24, #4
	.loc	2 249 2 is_stmt 0
	mov	x2, x22
	.loc	2 0 0
	mov	x21, x0
.Ltmp178:
	.loc	2 249 2
	bl	memcpy
.Ltmp179:
	.loc	2 265 27 is_stmt 1
	lsl	w8, w23, #6
.Ltmp180:
	.loc	4 561 9
	mov	w1, #3520
.Ltmp181:
	.loc	2 265 27
	and	w0, w8, #0x7c00
.Ltmp182:
	.loc	4 561 9
	bl	__kmalloc
.Ltmp183:
	.loc	2 266 6
	cbz	x0, .LBB3_52
.Ltmp184:
	.loc	2 269 2
	cbz	w20, .LBB3_13
.Ltmp185:
	.loc	2 0 0 is_stmt 0
	lsr	w11, w23, #4
.Ltmp186:
	mov	w10, #16384
.Ltmp187:
	.loc	2 269 2
	cmp	w11, #1
	mov	w12, #1365
	mov	w8, wzr
	mov	w9, wzr
	movk	w10, #21, lsl #16
	csinc	w11, w11, wzr, gt
.Ltmp188:
	.loc	2 0 2
	movk	w12, #5440, lsl #16
	mov	x13, x21
.Ltmp189:
.LBB3_10:
	mov	w15, wzr
	mov	w14, wzr
.Ltmp190:
	.loc	2 270 15 is_stmt 1
	ldr	w16, [x13]
.Ltmp191:
.LBB3_11:
	.loc	2 272 26
	asr	w17, w16, w15
	.loc	2 272 31 is_stmt 0
	add	w3, w8, w14
	.loc	2 272 36
	and	w1, w17, #0x3
.Ltmp192:
	.loc	2 276 26 is_stmt 1
	lsl	w17, w17, #30
.Ltmp193:
	.loc	2 279 13
	add	w4, w3, #3
.Ltmp194:
	.loc	2 271 17
	add	w14, w14, #16
.Ltmp195:
	.loc	2 0 17 is_stmt 0
	mul	w2, w1, w10
	.loc	2 271 17
	add	w15, w15, #2
.Ltmp196:
	.loc	2 276 19 is_stmt 1
	bfi	w17, w1, #12, #2
.Ltmp197:
	.loc	2 271 3
	cmp	w14, #256
.Ltmp198:
	.loc	2 276 19
	orr	w17, w17, w2
.Ltmp199:
	.loc	2 279 13
	add	w2, w3, #1
.Ltmp200:
	.loc	2 276 19
	madd	w17, w1, w12, w17
.Ltmp201:
	.loc	2 279 13
	add	w1, w3, #2
	.loc	2 279 20 is_stmt 0
	str	w17, [x0, w2, sxtw #2]
.Ltmp202:
	.loc	2 279 13
	add	w2, w3, #4
	.loc	2 279 20
	str	w17, [x0, w1, sxtw #2]
.Ltmp203:
	.loc	2 279 13
	add	w1, w3, #5
	.loc	2 279 20
	str	w17, [x0, w4, sxtw #2]
.Ltmp204:
	.loc	2 279 13
	add	w4, w3, #6
	.loc	2 279 20
	str	w17, [x0, w2, sxtw #2]
.Ltmp205:
	.loc	2 279 13
	add	w2, w3, #7
	.loc	2 279 20
	str	w17, [x0, w1, sxtw #2]
.Ltmp206:
	.loc	2 279 13
	add	w1, w3, #8
	.loc	2 279 20
	str	w17, [x0, w4, sxtw #2]
.Ltmp207:
	.loc	2 279 13
	add	w4, w3, #9
	.loc	2 279 20
	str	w17, [x0, w2, sxtw #2]
.Ltmp208:
	.loc	2 279 13
	add	w2, w3, #10
	.loc	2 279 20
	str	w17, [x0, w1, sxtw #2]
.Ltmp209:
	.loc	2 279 13
	add	w1, w3, #11
	.loc	2 279 20
	str	w17, [x0, w4, sxtw #2]
.Ltmp210:
	str	w17, [x0, w2, sxtw #2]
.Ltmp211:
	.loc	2 279 13
	add	w2, w3, #12
	.loc	2 279 20
	str	w17, [x0, w1, sxtw #2]
.Ltmp212:
	.loc	2 279 13
	add	w1, w3, #13
	.loc	2 279 20
	str	w17, [x0, w3, sxtw #2]
.Ltmp213:
	str	w17, [x0, w2, sxtw #2]
.Ltmp214:
	.loc	2 279 13
	add	w2, w3, #14
	.loc	2 279 20
	str	w17, [x0, w1, sxtw #2]
.Ltmp215:
	.loc	2 279 13
	add	w1, w3, #15
	.loc	2 279 20
	str	w17, [x0, w2, sxtw #2]
.Ltmp216:
	str	w17, [x0, w1, sxtw #2]
.Ltmp217:
	.loc	2 271 3 is_stmt 1
	b.ne	.LBB3_11
.Ltmp218:
	.loc	2 270 21
	add	x13, x13, #4
.Ltmp219:
	.loc	2 269 24
	add	w9, w9, #1
.Ltmp220:
	.loc	2 269 2 is_stmt 0
	add	w8, w8, w14
	cmp	w9, w11
	b.ne	.LBB3_10
.Ltmp221:
.LBB3_13:
	.loc	2 341 15 is_stmt 1
	str	x0, [x19, #8]
	.loc	2 0 0 is_stmt 0
	mov	x0, x21
	bl	kfree
.Ltmp222:
	b	.LBB3_51
.Ltmp223:
.LBB3_14:
	mov	w20, #-1
	b	.LBB3_51
.Ltmp224:
.LBB3_15:
	.loc	2 188 34 is_stmt 1
	adrp	x8, global_waveform
.Ltmp225:
	.loc	2 173 9
	bic	w10, w2, w2, asr #31
.Ltmp226:
	.loc	2 174 9
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
.Ltmp227:
	csel	w10, w10, w11, lo
.Ltmp228:
	.loc	2 188 34
	ldr	x8, [x8, :lo12:global_waveform]
.Ltmp229:
	.loc	2 176 2
	add	x11, x8, #468
.Ltmp230:
.LBB3_16:
	.loc	2 177 14
	ldrb	w12, [x11, x9]
.Ltmp231:
	.loc	2 177 7 is_stmt 0
	cmp	w12, w10, uxtb
	b.hi	.LBB3_19
.Ltmp232:
	.loc	2 176 23 is_stmt 1
	add	x9, x9, #1
.Ltmp233:
	.loc	2 176 2 is_stmt 0
	cmp	x9, #50
	b.ne	.LBB3_16
.Ltmp234:
	.loc	2 0 2
	mov	x9, xzr
.Ltmp235:
.LBB3_19:
	.loc	2 229 14 is_stmt 1
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1876]
.Ltmp236:
	.loc	2 0 14 is_stmt 0
	b	.LBB3_48
.Ltmp237:
.LBB3_20:
	.loc	2 188 34 is_stmt 1
	adrp	x8, global_waveform
.Ltmp238:
	.loc	2 173 9
	bic	w10, w2, w2, asr #31
.Ltmp239:
	.loc	2 174 9
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
.Ltmp240:
	csel	w10, w10, w11, lo
.Ltmp241:
	.loc	2 188 34
	ldr	x8, [x8, :lo12:global_waveform]
.Ltmp242:
	.loc	2 176 2
	add	x11, x8, #212
.Ltmp243:
.LBB3_21:
	.loc	2 177 14
	ldrb	w12, [x11, x9]
.Ltmp244:
	.loc	2 177 7 is_stmt 0
	cmp	w12, w10, uxtb
	b.hi	.LBB3_27
.Ltmp245:
	.loc	2 176 23 is_stmt 1
	add	x9, x9, #1
.Ltmp246:
	.loc	2 176 2 is_stmt 0
	cmp	x9, #50
	b.ne	.LBB3_21
	b	.LBB3_26
.Ltmp247:
.LBB3_23:
	.loc	2 188 34 is_stmt 1
	adrp	x8, global_waveform
.Ltmp248:
	.loc	2 173 9
	bic	w10, w2, w2, asr #31
.Ltmp249:
	.loc	2 174 9
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
.Ltmp250:
	csel	w10, w10, w11, lo
.Ltmp251:
	.loc	2 188 34
	ldr	x8, [x8, :lo12:global_waveform]
.Ltmp252:
	.loc	2 176 2
	add	x11, x8, #212
.Ltmp253:
.LBB3_24:
	.loc	2 177 14
	ldrb	w12, [x11, x9]
.Ltmp254:
	.loc	2 177 7 is_stmt 0
	cmp	w12, w10, uxtb
	b.hi	.LBB3_27
.Ltmp255:
	.loc	2 176 23 is_stmt 1
	add	x9, x9, #1
.Ltmp256:
	.loc	2 176 2 is_stmt 0
	cmp	x9, #50
	b.ne	.LBB3_24
.Ltmp257:
.LBB3_26:
	.loc	2 0 2
	mov	x9, xzr
.Ltmp258:
.LBB3_27:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #852]
	b	.LBB3_48
.Ltmp259:
.LBB3_28:
	.loc	2 188 34 is_stmt 1
	adrp	x8, global_waveform
.Ltmp260:
	.loc	2 173 9
	bic	w10, w2, w2, asr #31
.Ltmp261:
	.loc	2 174 9
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
.Ltmp262:
	csel	w10, w10, w11, lo
.Ltmp263:
	.loc	2 188 34
	ldr	x8, [x8, :lo12:global_waveform]
.Ltmp264:
	.loc	2 176 2
	add	x11, x8, #276
.Ltmp265:
.LBB3_29:
	.loc	2 177 14
	ldrb	w12, [x11, x9]
.Ltmp266:
	.loc	2 177 7 is_stmt 0
	cmp	w12, w10, uxtb
	b.hi	.LBB3_32
.Ltmp267:
	.loc	2 176 23 is_stmt 1
	add	x9, x9, #1
.Ltmp268:
	.loc	2 176 2 is_stmt 0
	cmp	x9, #50
	b.ne	.LBB3_29
.Ltmp269:
	.loc	2 0 2
	mov	x9, xzr
.Ltmp270:
.LBB3_32:
	.loc	2 229 14 is_stmt 1
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1108]
.Ltmp271:
	.loc	2 0 14 is_stmt 0
	b	.LBB3_48
.Ltmp272:
.LBB3_33:
	.loc	2 188 34 is_stmt 1
	adrp	x8, global_waveform
.Ltmp273:
	.loc	2 173 9
	bic	w10, w2, w2, asr #31
.Ltmp274:
	.loc	2 174 9
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
.Ltmp275:
	csel	w10, w10, w11, lo
.Ltmp276:
	.loc	2 188 34
	ldr	x8, [x8, :lo12:global_waveform]
.Ltmp277:
	.loc	2 176 2
	add	x11, x8, #340
.Ltmp278:
.LBB3_34:
	.loc	2 177 14
	ldrb	w12, [x11, x9]
.Ltmp279:
	.loc	2 177 7 is_stmt 0
	cmp	w12, w10, uxtb
	b.hi	.LBB3_37
.Ltmp280:
	.loc	2 176 23 is_stmt 1
	add	x9, x9, #1
.Ltmp281:
	.loc	2 176 2 is_stmt 0
	cmp	x9, #50
	b.ne	.LBB3_34
.Ltmp282:
	.loc	2 0 2
	mov	x9, xzr
.Ltmp283:
.LBB3_37:
	.loc	2 229 14 is_stmt 1
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1364]
.Ltmp284:
	.loc	2 0 14 is_stmt 0
	b	.LBB3_48
.Ltmp285:
.LBB3_38:
	.loc	2 188 34 is_stmt 1
	adrp	x8, global_waveform
.Ltmp286:
	.loc	2 173 9
	bic	w10, w2, w2, asr #31
.Ltmp287:
	.loc	2 174 9
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
.Ltmp288:
	csel	w10, w10, w11, lo
.Ltmp289:
	.loc	2 188 34
	ldr	x8, [x8, :lo12:global_waveform]
.Ltmp290:
	.loc	2 176 2
	add	x11, x8, #404
.Ltmp291:
.LBB3_39:
	.loc	2 177 14
	ldrb	w12, [x11, x9]
.Ltmp292:
	.loc	2 177 7 is_stmt 0
	cmp	w12, w10, uxtb
	b.hi	.LBB3_42
.Ltmp293:
	.loc	2 176 23 is_stmt 1
	add	x9, x9, #1
.Ltmp294:
	.loc	2 176 2 is_stmt 0
	cmp	x9, #50
	b.ne	.LBB3_39
.Ltmp295:
	.loc	2 0 2
	mov	x9, xzr
.Ltmp296:
.LBB3_42:
	.loc	2 229 14 is_stmt 1
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1620]
.Ltmp297:
	.loc	2 0 14 is_stmt 0
	b	.LBB3_48
.Ltmp298:
.LBB3_43:
	.loc	2 188 34 is_stmt 1
	adrp	x8, global_waveform
.Ltmp299:
	.loc	2 173 9
	bic	w10, w2, w2, asr #31
.Ltmp300:
	.loc	2 174 9
	cmp	w10, #50
	mov	w11, #50
	mov	x9, xzr
.Ltmp301:
	csel	w10, w10, w11, lo
.Ltmp302:
	.loc	2 188 34
	ldr	x8, [x8, :lo12:global_waveform]
.Ltmp303:
	.loc	2 176 2
	add	x11, x8, #532
.Ltmp304:
.LBB3_44:
	.loc	2 177 14
	ldrb	w12, [x11, x9]
.Ltmp305:
	.loc	2 177 7 is_stmt 0
	cmp	w12, w10, uxtb
	b.hi	.LBB3_47
.Ltmp306:
	.loc	2 176 23 is_stmt 1
	add	x9, x9, #1
.Ltmp307:
	.loc	2 176 2 is_stmt 0
	cmp	x9, #50
	b.ne	.LBB3_44
.Ltmp308:
	.loc	2 0 2
	mov	x9, xzr
.Ltmp309:
.LBB3_47:
	.loc	2 229 14 is_stmt 1
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #2132]
.Ltmp310:
.LBB3_48:
	.loc	2 0 0 is_stmt 0
	add	x23, x8, x9
.Ltmp311:
	mov	w1, #3520
.Ltmp312:
	ldrb	w22, [x23]
	lsl	x20, x22, #6
.Ltmp313:
	mov	x0, x20
	bl	__kmalloc
.Ltmp314:
	cbz	x0, .LBB3_50
.Ltmp315:
	add	x1, x23, #4
	mov	x2, x20
	mov	x21, x0
.Ltmp316:
	bl	memcpy
.Ltmp317:
	mov	w20, w22
.Ltmp318:
	str	x21, [x19, #8]
.Ltmp319:
	b	.LBB3_51
.Ltmp320:
.LBB3_50:
	mov	w20, #-1
.Ltmp321:
	str	xzr, [x19, #8]
.Ltmp322:
.LBB3_51:
	.loc	2 530 1 is_stmt 1
	mov	w0, w20
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldp	x29, x30, [sp], #64
	ldr	x30, [x18, #-8]!
	ret
.LBB3_52:
.Ltmp323:
	.loc	2 0 0 is_stmt 0
	mov	x0, x21
	.loc	2 341 15 is_stmt 1
	str	xzr, [x19, #8]
	.loc	2 0 0 is_stmt 0
	bl	kfree
.Ltmp324:
	mov	w20, #-1
.Ltmp325:
	b	.LBB3_51
.Ltmp326:
.Lfunc_end3:
	.size	parse_wf_data, .Lfunc_end3-parse_wf_data
	.cfi_endproc
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
	.file	8 "/home/lyx/rk-android14/kernel-6.1" "./include/uapi/asm-generic/posix_types.h"

	.text
	.p2align	2
	.type	rkf_lut_init_wf_table,@function
rkf_lut_init_wf_table:
.Lfunc_begin4:
	.loc	2 448 0 is_stmt 1
	.cfi_startproc
	.loc	2 452 2 prologue_end
	cmp	w2, #1
	b.lt	.LBB4_5
.Ltmp327:
	.loc	2 0 2 is_stmt 0
	mov	w8, wzr
	mov	w9, wzr
	mov	x10, xzr
.Ltmp328:
	.loc	2 452 14
	mov	w11, w2
.Ltmp329:
	.loc	2 452 2
	add	x12, x1, #7
.Ltmp330:
.LBB4_2:
	.loc	2 453 34 is_stmt 1
	ldr	x15, [x0, #8]
.Ltmp331:
	and	x14, x8, #0x7ffffff
	mov	x13, xzr
	add	x14, x12, x14, lsl #5
.Ltmp332:
	.loc	2 454 3
	add	x15, x15, w9, sxtw #2
.Ltmp333:
.LBB4_3:
	.loc	2 0 3 is_stmt 0
	add	x16, x15, x13
.Ltmp334:
	.loc	2 454 31
	add	x13, x13, #4
.Ltmp335:
	.loc	2 454 3
	cmp	x13, #64
.Ltmp336:
	.loc	2 456 16 is_stmt 1
	ldrb	w17, [x16]
	.loc	2 456 15 is_stmt 0
	and	w17, w17, #0x3
.Ltmp337:
	.loc	2 457 54 is_stmt 1
	sturb	w17, [x14, #-7]
.Ltmp338:
	.loc	2 456 16
	ldrb	w17, [x16]
	.loc	2 456 15 is_stmt 0
	ubfx	w17, w17, #2, #2
.Ltmp339:
	.loc	2 457 54 is_stmt 1
	sturb	w17, [x14, #-6]
.Ltmp340:
	.loc	2 456 16
	ldrb	w17, [x16]
	.loc	2 456 15 is_stmt 0
	ubfx	w17, w17, #4, #2
.Ltmp341:
	.loc	2 457 54 is_stmt 1
	sturb	w17, [x14, #-5]
.Ltmp342:
	.loc	2 456 16
	ldrb	w17, [x16]
	.loc	2 456 15 is_stmt 0
	lsr	w17, w17, #6
.Ltmp343:
	.loc	2 457 54 is_stmt 1
	sturb	w17, [x14, #-4]
.Ltmp344:
	.loc	2 456 16
	ldrb	w17, [x16, #1]
	.loc	2 456 15 is_stmt 0
	and	w17, w17, #0x3
.Ltmp345:
	.loc	2 457 54 is_stmt 1
	sturb	w17, [x14, #-3]
.Ltmp346:
	.loc	2 456 16
	ldr	w17, [x16]
	.loc	2 456 15 is_stmt 0
	ubfx	w17, w17, #10, #2
.Ltmp347:
	.loc	2 457 54 is_stmt 1
	sturb	w17, [x14, #-2]
.Ltmp348:
	.loc	2 456 16
	ldr	w17, [x16]
	.loc	2 456 15 is_stmt 0
	ubfx	w17, w17, #12, #2
.Ltmp349:
	.loc	2 457 54 is_stmt 1
	sturb	w17, [x14, #-1]
.Ltmp350:
	.loc	2 456 16
	ldr	w17, [x16]
	.loc	2 456 15 is_stmt 0
	ubfx	w17, w17, #14, #2
.Ltmp351:
	.loc	2 457 54 is_stmt 1
	strb	w17, [x14]
.Ltmp352:
	.loc	2 456 16
	ldrb	w17, [x16, #2]
	.loc	2 456 15 is_stmt 0
	and	w17, w17, #0x3
.Ltmp353:
	.loc	2 457 54 is_stmt 1
	strb	w17, [x14, #1]
.Ltmp354:
	.loc	2 456 16
	ldr	w17, [x16]
	.loc	2 456 15 is_stmt 0
	ubfx	w17, w17, #18, #2
.Ltmp355:
	.loc	2 457 54 is_stmt 1
	strb	w17, [x14, #2]
.Ltmp356:
	.loc	2 456 16
	ldr	w17, [x16]
	.loc	2 456 15 is_stmt 0
	ubfx	w17, w17, #20, #2
.Ltmp357:
	.loc	2 457 54 is_stmt 1
	strb	w17, [x14, #3]
.Ltmp358:
	.loc	2 456 16
	ldr	w17, [x16]
	.loc	2 456 15 is_stmt 0
	ubfx	w17, w17, #22, #2
.Ltmp359:
	.loc	2 457 54 is_stmt 1
	strb	w17, [x14, #4]
.Ltmp360:
	.loc	2 456 16
	ldrb	w17, [x16, #3]
	.loc	2 456 15 is_stmt 0
	and	w17, w17, #0x3
.Ltmp361:
	.loc	2 457 54 is_stmt 1
	strb	w17, [x14, #5]
.Ltmp362:
	.loc	2 456 16
	ldr	w17, [x16]
	.loc	2 456 15 is_stmt 0
	ubfx	w17, w17, #26, #2
.Ltmp363:
	.loc	2 457 54 is_stmt 1
	strb	w17, [x14, #6]
.Ltmp364:
	.loc	2 456 16
	ldr	w17, [x16]
	.loc	2 456 15 is_stmt 0
	ubfx	w17, w17, #28, #2
.Ltmp365:
	.loc	2 457 54 is_stmt 1
	strb	w17, [x14, #7]
.Ltmp366:
	.loc	2 456 16
	ldr	w16, [x16]
	.loc	2 456 39 is_stmt 0
	lsr	w16, w16, #30
.Ltmp367:
	.loc	2 457 54 is_stmt 1
	strb	w16, [x14, #8]
.Ltmp368:
	.loc	2 454 31
	add	x14, x14, #32
.Ltmp369:
	.loc	2 454 3 is_stmt 0
	b.ne	.LBB4_3
.Ltmp370:
	.loc	2 452 28 is_stmt 1
	add	x10, x10, #1
.Ltmp371:
	.loc	2 452 2 is_stmt 0
	add	w9, w9, #16
	add	w8, w8, #32
	cmp	x10, x11
	b.ne	.LBB4_2
.Ltmp372:
.LBB4_5:
	.loc	2 462 2 is_stmt 1
	ret
.Ltmp373:
.Lfunc_end4:
	.size	rkf_lut_init_wf_table, .Lfunc_end4-rkf_lut_init_wf_table
	.cfi_endproc

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
	.word	13
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp3-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp4-.Lfunc_begin0
	.xword	.Ltmp5-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp5-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc1:
	.xword	.Ltmp0-.Lfunc_begin0
	.xword	.Ltmp1-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp1-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc2:
	.xword	.Ltmp1-.Lfunc_begin0
	.xword	.Ltmp3-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp4-.Lfunc_begin0
	.xword	.Ltmp8-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp8-.Lfunc_begin0
	.xword	.Ltmp44-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	127
	.byte	159
	.xword	.Ltmp44-.Lfunc_begin0
	.xword	.Ltmp48-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp48-.Lfunc_begin0
	.xword	.Ltmp50-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	127
	.byte	159
	.xword	.Ltmp50-.Lfunc_begin0
	.xword	.Ltmp51-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc3:
	.xword	.Ltmp6-.Lfunc_begin0
	.xword	.Ltmp7-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	0
	.xword	0
.Ldebug_loc4:
	.xword	.Ltmp8-.Lfunc_begin0
	.xword	.Ltmp44-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp49-.Lfunc_begin0
	.xword	.Ltmp50-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc5:
	.xword	.Ltmp8-.Lfunc_begin0
	.xword	.Ltmp43-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp43-.Lfunc_begin0
	.xword	.Ltmp44-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp49-.Lfunc_begin0
	.xword	.Ltmp50-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc6:
	.xword	.Ltmp8-.Lfunc_begin0
	.xword	.Ltmp13-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp13-.Lfunc_begin0
	.xword	.Ltmp44-.Lfunc_begin0
	.hword	1
	.byte	100
	.xword	.Ltmp49-.Lfunc_begin0
	.xword	.Ltmp50-.Lfunc_begin0
	.hword	1
	.byte	100
	.xword	0
	.xword	0
.Ldebug_loc7:
	.xword	.Ltmp14-.Lfunc_begin0
	.xword	.Ltmp40-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp40-.Lfunc_begin0
	.xword	.Ltmp43-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc8:
	.xword	.Ltmp14-.Lfunc_begin0
	.xword	.Ltmp40-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc9:
	.xword	.Ltmp14-.Lfunc_begin0
	.xword	.Ltmp40-.Lfunc_begin0
	.hword	1
	.byte	103
	.xword	0
	.xword	0
.Ldebug_loc10:
	.xword	.Ltmp14-.Lfunc_begin0
	.xword	.Ltmp40-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp40-.Lfunc_begin0
	.xword	.Ltmp43-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc11:
	.xword	.Ltmp16-.Lfunc_begin0
	.xword	.Ltmp17-.Lfunc_begin0
	.hword	5
	.byte	124
	.byte	0
	.byte	72
	.byte	36
	.byte	159
	.xword	.Ltmp17-.Lfunc_begin0
	.xword	.Ltmp18-.Lfunc_begin0
	.hword	5
	.byte	124
	.byte	0
	.byte	75
	.byte	36
	.byte	159
	.xword	.Ltmp18-.Lfunc_begin0
	.xword	.Ltmp21-.Lfunc_begin0
	.hword	5
	.byte	124
	.byte	0
	.byte	76
	.byte	36
	.byte	159
	.xword	.Ltmp21-.Lfunc_begin0
	.xword	.Ltmp25-.Lfunc_begin0
	.hword	5
	.byte	124
	.byte	0
	.byte	77
	.byte	36
	.byte	159
	.xword	.Ltmp25-.Lfunc_begin0
	.xword	.Ltmp29-.Lfunc_begin0
	.hword	5
	.byte	124
	.byte	0
	.byte	78
	.byte	36
	.byte	159
	.xword	.Ltmp29-.Lfunc_begin0
	.xword	.Ltmp33-.Lfunc_begin0
	.hword	5
	.byte	124
	.byte	0
	.byte	79
	.byte	36
	.byte	159
	.xword	.Ltmp33-.Lfunc_begin0
	.xword	.Ltmp36-.Lfunc_begin0
	.hword	7
	.byte	124
	.byte	0
	.byte	79
	.byte	36
	.byte	49
	.byte	36
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc12:
	.xword	.Ltmp16-.Lfunc_begin0
	.xword	.Ltmp17-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp18-.Lfunc_begin0
	.xword	.Ltmp20-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp21-.Lfunc_begin0
	.xword	.Ltmp24-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp25-.Lfunc_begin0
	.xword	.Ltmp28-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp29-.Lfunc_begin0
	.xword	.Ltmp32-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp33-.Lfunc_begin0
	.xword	.Ltmp37-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc13:
	.xword	.Ltmp16-.Lfunc_begin0
	.xword	.Ltmp17-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp17-.Lfunc_begin0
	.xword	.Ltmp18-.Lfunc_begin0
	.hword	2
	.byte	51
	.byte	159
	.xword	.Ltmp18-.Lfunc_begin0
	.xword	.Ltmp21-.Lfunc_begin0
	.hword	2
	.byte	52
	.byte	159
	.xword	.Ltmp21-.Lfunc_begin0
	.xword	.Ltmp25-.Lfunc_begin0
	.hword	2
	.byte	53
	.byte	159
	.xword	.Ltmp25-.Lfunc_begin0
	.xword	.Ltmp29-.Lfunc_begin0
	.hword	2
	.byte	54
	.byte	159
	.xword	.Ltmp29-.Lfunc_begin0
	.xword	.Ltmp33-.Lfunc_begin0
	.hword	2
	.byte	55
	.byte	159
	.xword	.Ltmp33-.Lfunc_begin0
	.xword	.Ltmp37-.Lfunc_begin0
	.hword	2
	.byte	56
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc14:
	.xword	.Lfunc_begin2-.Lfunc_begin0
	.xword	.Ltmp59-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp59-.Lfunc_begin0
	.xword	.Ltmp66-.Lfunc_begin0
	.hword	1
	.byte	100
	.xword	.Ltmp66-.Lfunc_begin0
	.xword	.Ltmp67-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp68-.Lfunc_begin0
	.xword	.Ltmp141-.Lfunc_begin0
	.hword	1
	.byte	100
	.xword	.Ltmp142-.Lfunc_begin0
	.xword	.Lfunc_end2-.Lfunc_begin0
	.hword	1
	.byte	100
	.xword	0
	.xword	0
.Ldebug_loc15:
	.xword	.Lfunc_begin2-.Lfunc_begin0
	.xword	.Ltmp65-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp65-.Lfunc_begin0
	.xword	.Ltmp66-.Lfunc_begin0
	.hword	2
	.byte	54
	.byte	159
	.xword	.Ltmp66-.Lfunc_begin0
	.xword	.Ltmp71-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp71-.Lfunc_begin0
	.xword	.Ltmp134-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	.Ltmp136-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp138-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp138-.Lfunc_begin0
	.xword	.Ltmp141-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	.Ltmp142-.Lfunc_begin0
	.xword	.Lfunc_end2-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	0
	.xword	0
.Ldebug_loc16:
	.xword	.Lfunc_begin2-.Lfunc_begin0
	.xword	.Ltmp62-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp62-.Lfunc_begin0
	.xword	.Ltmp66-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp66-.Lfunc_begin0
	.xword	.Ltmp69-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp69-.Lfunc_begin0
	.xword	.Ltmp136-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp136-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp138-.Lfunc_begin0
	.xword	.Ltmp141-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp142-.Lfunc_begin0
	.xword	.Lfunc_end2-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc17:
	.xword	.Lfunc_begin2-.Lfunc_begin0
	.xword	.Ltmp77-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp77-.Lfunc_begin0
	.xword	.Ltmp78-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp136-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp138-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc18:
	.xword	.Lfunc_begin2-.Lfunc_begin0
	.xword	.Ltmp77-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp77-.Lfunc_begin0
	.xword	.Ltmp78-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp136-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp138-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc19:
	.xword	.Ltmp57-.Lfunc_begin0
	.xword	.Ltmp79-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp79-.Lfunc_begin0
	.xword	.Ltmp81-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp81-.Lfunc_begin0
	.xword	.Ltmp123-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	.Ltmp132-.Lfunc_begin0
	.xword	.Ltmp134-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp134-.Lfunc_begin0
	.xword	.Ltmp136-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	.Ltmp136-.Lfunc_begin0
	.xword	.Ltmp138-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp138-.Lfunc_begin0
	.xword	.Ltmp139-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp142-.Lfunc_begin0
	.xword	.Lfunc_end2-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	0
	.xword	0
.Ldebug_loc20:
	.xword	.Ltmp57-.Lfunc_begin0
	.xword	.Ltmp131-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp131-.Lfunc_begin0
	.xword	.Ltmp132-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp136-.Lfunc_begin0
	.xword	.Ltmp138-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp142-.Lfunc_begin0
	.xword	.Lfunc_end2-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc21:
	.xword	.Ltmp85-.Lfunc_begin0
	.xword	.Ltmp88-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp89-.Lfunc_begin0
	.xword	.Ltmp97-.Lfunc_begin0
	.hword	1
	.byte	91
	.xword	.Ltmp99-.Lfunc_begin0
	.xword	.Ltmp102-.Lfunc_begin0
	.hword	1
	.byte	93
	.xword	.Ltmp102-.Lfunc_begin0
	.xword	.Ltmp103-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	128
	.byte	8
	.byte	159
	.xword	.Ltmp103-.Lfunc_begin0
	.xword	.Ltmp104-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	128
	.byte	16
	.byte	159
	.xword	.Ltmp104-.Lfunc_begin0
	.xword	.Ltmp105-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	128
	.byte	24
	.byte	159
	.xword	.Ltmp142-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	1
	.byte	91
	.xword	0
	.xword	0
.Ldebug_loc22:
	.xword	.Ltmp85-.Lfunc_begin0
	.xword	.Ltmp88-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp88-.Lfunc_begin0
	.xword	.Ltmp90-.Lfunc_begin0
	.hword	7
	.byte	121
	.byte	0
	.byte	17
	.byte	128
	.byte	8
	.byte	27
	.byte	159
	.xword	.Ltmp92-.Lfunc_begin0
	.xword	.Ltmp94-.Lfunc_begin0
	.hword	10
	.byte	121
	.byte	0
	.byte	17
	.byte	128
	.byte	8
	.byte	27
	.byte	17
	.byte	1
	.byte	34
	.byte	159
	.xword	.Ltmp94-.Lfunc_begin0
	.xword	.Ltmp98-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	1
	.byte	159
	.xword	.Ltmp142-.Lfunc_begin0
	.xword	.Lfunc_end2-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	1
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc23:
	.xword	.Ltmp85-.Lfunc_begin0
	.xword	.Ltmp105-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	.Ltmp142-.Lfunc_begin0
	.xword	.Lfunc_end2-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	0
	.xword	0
.Ldebug_loc24:
	.xword	.Ltmp85-.Lfunc_begin0
	.xword	.Ltmp105-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	.Ltmp142-.Lfunc_begin0
	.xword	.Lfunc_end2-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc25:
	.xword	.Ltmp107-.Lfunc_begin0
	.xword	.Ltmp110-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp110-.Lfunc_begin0
	.xword	.Ltmp112-.Lfunc_begin0
	.hword	7
	.byte	122
	.byte	0
	.byte	17
	.byte	128
	.byte	8
	.byte	27
	.byte	159
	.xword	.Ltmp114-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	10
	.byte	122
	.byte	0
	.byte	17
	.byte	128
	.byte	8
	.byte	27
	.byte	17
	.byte	1
	.byte	34
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc26:
	.xword	.Ltmp107-.Lfunc_begin0
	.xword	.Ltmp110-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp111-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	1
	.byte	92
	.xword	.Ltmp115-.Lfunc_begin0
	.xword	.Ltmp116-.Lfunc_begin0
	.hword	4
	.byte	121
	.byte	128
	.byte	24
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc27:
	.xword	.Ltmp107-.Lfunc_begin0
	.xword	.Ltmp119-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	0
	.xword	0
.Ldebug_loc28:
	.xword	.Ltmp107-.Lfunc_begin0
	.xword	.Ltmp119-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	0
	.xword	0
.Ldebug_loc29:
	.xword	.Lfunc_begin3-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp156-.Lfunc_begin0
	.xword	.Ltmp223-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp224-.Lfunc_begin0
	.xword	.Ltmp322-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp323-.Lfunc_begin0
	.xword	.Lfunc_end3-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc30:
	.xword	.Lfunc_begin3-.Lfunc_begin0
	.xword	.Ltmp170-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp170-.Lfunc_begin0
	.xword	.Ltmp223-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp224-.Lfunc_begin0
	.xword	.Ltmp312-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp312-.Lfunc_begin0
	.xword	.Ltmp322-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp323-.Lfunc_begin0
	.xword	.Lfunc_end3-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc31:
	.xword	.Lfunc_begin3-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp176-.Lfunc_begin0
	.xword	.Ltmp223-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp224-.Lfunc_begin0
	.xword	.Ltmp314-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp314-.Lfunc_begin0
	.xword	.Ltmp322-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp323-.Lfunc_begin0
	.xword	.Lfunc_end3-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc32:
	.xword	.Ltmp154-.Lfunc_begin0
	.xword	.Ltmp222-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	127
	.byte	159
	.xword	.Ltmp222-.Lfunc_begin0
	.xword	.Ltmp223-.Lfunc_begin0
	.hword	1
	.byte	100
	.xword	.Ltmp223-.Lfunc_begin0
	.xword	.Ltmp319-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	127
	.byte	159
	.xword	.Ltmp320-.Lfunc_begin0
	.xword	.Ltmp321-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	127
	.byte	159
	.xword	.Ltmp323-.Lfunc_begin0
	.xword	.Ltmp325-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	127
	.byte	159
	.xword	.Ltmp325-.Lfunc_begin0
	.xword	.Lfunc_end3-.Lfunc_begin0
	.hword	1
	.byte	100
	.xword	0
	.xword	0
.Ldebug_loc33:
	.xword	.Ltmp159-.Lfunc_begin0
	.xword	.Ltmp161-.Lfunc_begin0
	.hword	1
	.byte	90
	.xword	.Ltmp162-.Lfunc_begin0
	.xword	.Ltmp167-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc34:
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp162-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp162-.Lfunc_begin0
	.xword	.Ltmp174-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc35:
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp177-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc36:
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc37:
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp175-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp223-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	.Ltmp323-.Lfunc_begin0
	.xword	.Lfunc_end3-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	0
	.xword	0
.Ldebug_loc38:
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp173-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp223-.Lfunc_begin0
	.hword	1
	.byte	100
	.xword	.Ltmp323-.Lfunc_begin0
	.xword	.Ltmp325-.Lfunc_begin0
	.hword	1
	.byte	100
	.xword	0
	.xword	0
.Ldebug_loc39:
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp172-.Lfunc_begin0
	.xword	.Ltmp223-.Lfunc_begin0
	.hword	1
	.byte	104
	.xword	.Ltmp323-.Lfunc_begin0
	.xword	.Lfunc_end3-.Lfunc_begin0
	.hword	1
	.byte	104
	.xword	0
	.xword	0
.Ldebug_loc40:
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp179-.Lfunc_begin0
	.hword	12
	.byte	48
	.byte	159
	.byte	147
	.byte	4
	.byte	48
	.byte	159
	.byte	147
	.byte	4
	.byte	48
	.byte	159
	.byte	147
	.byte	8
	.xword	.Ltmp179-.Lfunc_begin0
	.xword	.Ltmp223-.Lfunc_begin0
	.hword	10
	.byte	100
	.byte	147
	.byte	4
	.byte	48
	.byte	159
	.byte	147
	.byte	4
	.byte	101
	.byte	147
	.byte	8
	.xword	.Ltmp323-.Lfunc_begin0
	.xword	.Ltmp325-.Lfunc_begin0
	.hword	10
	.byte	100
	.byte	147
	.byte	4
	.byte	48
	.byte	159
	.byte	147
	.byte	4
	.byte	101
	.byte	147
	.byte	8
	.xword	.Ltmp325-.Lfunc_begin0
	.xword	.Lfunc_end3-.Lfunc_begin0
	.hword	9
	.byte	147
	.byte	4
	.byte	48
	.byte	159
	.byte	147
	.byte	4
	.byte	101
	.byte	147
	.byte	8
	.xword	0
	.xword	0
.Ldebug_loc41:
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc42:
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp223-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp323-.Lfunc_begin0
	.xword	.Lfunc_end3-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc43:
	.xword	.Ltmp162-.Lfunc_begin0
	.xword	.Ltmp163-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp163-.Lfunc_begin0
	.xword	.Ltmp167-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	0
	.xword	0
.Ldebug_loc44:
	.xword	.Ltmp162-.Lfunc_begin0
	.xword	.Ltmp167-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc45:
	.xword	.Ltmp162-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp172-.Lfunc_begin0
	.xword	.Ltmp177-.Lfunc_begin0
	.hword	1
	.byte	104
	.xword	0
	.xword	0
.Ldebug_loc46:
	.xword	.Ltmp162-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc47:
	.xword	.Ltmp162-.Lfunc_begin0
	.xword	.Ltmp171-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc48:
	.xword	.Ltmp162-.Lfunc_begin0
	.xword	.Ltmp167-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	148
	.byte	1
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc49:
	.xword	.Ltmp162-.Lfunc_begin0
	.xword	.Ltmp177-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc50:
	.xword	.Ltmp162-.Lfunc_begin0
	.xword	.Ltmp177-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc51:
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp177-.Lfunc_begin0
	.hword	4
	.byte	16
	.byte	192
	.byte	27
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc52:
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp177-.Lfunc_begin0
	.hword	4
	.byte	16
	.byte	192
	.byte	25
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc53:
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp176-.Lfunc_begin0
	.xword	.Ltmp178-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp178-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	0
	.xword	0
.Ldebug_loc54:
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	1
	.byte	104
	.xword	0
	.xword	0
.Ldebug_loc55:
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp177-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	0
	.xword	0
.Ldebug_loc56:
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp177-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	0
	.xword	0
.Ldebug_loc57:
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	0
	.xword	0
.Ldebug_loc58:
	.xword	.Ltmp180-.Lfunc_begin0
	.xword	.Ltmp182-.Lfunc_begin0
	.hword	15
	.byte	120
	.byte	0
	.byte	16
	.byte	128
	.byte	248
	.byte	1
	.byte	26
	.byte	16
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	15
	.byte	26
	.byte	159
	.xword	.Ltmp182-.Lfunc_begin0
	.xword	.Ltmp183-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	0
	.xword	0
.Ldebug_loc59:
	.xword	.Ltmp180-.Lfunc_begin0
	.xword	.Ltmp182-.Lfunc_begin0
	.hword	15
	.byte	120
	.byte	0
	.byte	16
	.byte	128
	.byte	248
	.byte	1
	.byte	26
	.byte	16
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	15
	.byte	26
	.byte	159
	.xword	.Ltmp182-.Lfunc_begin0
	.xword	.Ltmp183-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	0
	.xword	0
.Ldebug_loc60:
	.xword	.Ltmp186-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	1
	.byte	91
	.xword	0
	.xword	0
.Ldebug_loc61:
	.xword	.Ltmp179-.Lfunc_begin0
	.xword	.Ltmp189-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp191-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	.Ltmp191-.Lfunc_begin0
	.xword	.Ltmp195-.Lfunc_begin0
	.hword	12
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	120
	.byte	0
	.byte	34
	.byte	159
	.xword	.Ltmp202-.Lfunc_begin0
	.xword	.Ltmp203-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	2
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp203-.Lfunc_begin0
	.xword	.Ltmp204-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	3
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp204-.Lfunc_begin0
	.xword	.Ltmp205-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	4
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp206-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	5
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp206-.Lfunc_begin0
	.xword	.Ltmp207-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	6
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp207-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	7
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp208-.Lfunc_begin0
	.xword	.Ltmp209-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	8
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp210-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	9
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp210-.Lfunc_begin0
	.xword	.Ltmp211-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	10
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp211-.Lfunc_begin0
	.xword	.Ltmp212-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	11
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp212-.Lfunc_begin0
	.xword	.Ltmp213-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	12
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp214-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	1
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp214-.Lfunc_begin0
	.xword	.Ltmp215-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	13
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp215-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	14
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp216-.Lfunc_begin0
	.xword	.Ltmp217-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	15
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp220-.Lfunc_begin0
	.hword	15
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	16
	.byte	30
	.byte	17
	.byte	16
	.byte	120
	.byte	0
	.byte	34
	.byte	34
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc62:
	.xword	.Ltmp179-.Lfunc_begin0
	.xword	.Ltmp189-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp191-.Lfunc_begin0
	.xword	.Ltmp221-.Lfunc_begin0
	.hword	1
	.byte	96
	.xword	0
	.xword	0
.Ldebug_loc63:
	.xword	.Ltmp179-.Lfunc_begin0
	.xword	.Ltmp189-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc64:
	.xword	.Ltmp179-.Lfunc_begin0
	.xword	.Ltmp189-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp192-.Lfunc_begin0
	.xword	.Ltmp201-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	15
	.byte	159
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp221-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	16
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc65:
	.xword	.Ltmp179-.Lfunc_begin0
	.xword	.Ltmp189-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp191-.Lfunc_begin0
	.xword	.Ltmp195-.Lfunc_begin0
	.hword	6
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	159
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp221-.Lfunc_begin0
	.hword	9
	.byte	126
	.byte	0
	.byte	17
	.byte	16
	.byte	27
	.byte	17
	.byte	1
	.byte	34
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc66:
	.xword	.Ltmp179-.Lfunc_begin0
	.xword	.Ltmp189-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp221-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	0
	.xword	0
.Ldebug_loc67:
	.xword	.Ltmp179-.Lfunc_begin0
	.xword	.Ltmp183-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp183-.Lfunc_begin0
	.xword	.Ltmp221-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	0
	.xword	0
.Ldebug_loc68:
	.xword	.Ltmp179-.Lfunc_begin0
	.xword	.Ltmp189-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	0
	.xword	0
.Ldebug_loc69:
	.xword	.Ltmp182-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	4
	.byte	16
	.byte	192
	.byte	27
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc70:
	.xword	.Ltmp182-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	4
	.byte	16
	.byte	192
	.byte	25
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc71:
	.xword	.Ltmp191-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp192-.Lfunc_begin0
	.xword	.Ltmp193-.Lfunc_begin0
	.hword	5
	.byte	129
	.byte	0
	.byte	51
	.byte	26
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc72:
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp218-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	0
	.xword	0
.Ldebug_loc73:
	.xword	.Ltmp226-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	1
	.byte	90
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp234-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc74:
	.xword	.Ltmp227-.Lfunc_begin0
	.xword	.Ltmp229-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp237-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc75:
	.xword	.Ltmp227-.Lfunc_begin0
	.xword	.Ltmp237-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	1
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc76:
	.xword	.Ltmp227-.Lfunc_begin0
	.xword	.Ltmp237-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc77:
	.xword	.Ltmp227-.Lfunc_begin0
	.xword	.Ltmp237-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc78:
	.xword	.Ltmp227-.Lfunc_begin0
	.xword	.Ltmp237-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc79:
	.xword	.Ltmp227-.Lfunc_begin0
	.xword	.Ltmp237-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc80:
	.xword	.Ltmp227-.Lfunc_begin0
	.xword	.Ltmp237-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc81:
	.xword	.Ltmp227-.Lfunc_begin0
	.xword	.Ltmp237-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc82:
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp230-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp230-.Lfunc_begin0
	.xword	.Ltmp234-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	0
	.xword	0
.Ldebug_loc83:
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp234-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc84:
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp237-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc85:
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp235-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc86:
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp236-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc87:
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp234-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	3
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc88:
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp237-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	14
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc89:
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp237-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	3
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc90:
	.xword	.Ltmp239-.Lfunc_begin0
	.xword	.Ltmp241-.Lfunc_begin0
	.hword	1
	.byte	90
	.xword	.Ltmp242-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc91:
	.xword	.Ltmp240-.Lfunc_begin0
	.xword	.Ltmp242-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp242-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc92:
	.xword	.Ltmp240-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	2
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc93:
	.xword	.Ltmp240-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc94:
	.xword	.Ltmp240-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc95:
	.xword	.Ltmp240-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc96:
	.xword	.Ltmp240-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc97:
	.xword	.Ltmp240-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	2
	.byte	50
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc98:
	.xword	.Ltmp240-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc99:
	.xword	.Ltmp240-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc100:
	.xword	.Ltmp242-.Lfunc_begin0
	.xword	.Ltmp243-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp243-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	0
	.xword	0
.Ldebug_loc101:
	.xword	.Ltmp242-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc102:
	.xword	.Ltmp242-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc103:
	.xword	.Ltmp242-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc104:
	.xword	.Ltmp242-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc105:
	.xword	.Ltmp242-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	1
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc106:
	.xword	.Ltmp242-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	6
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc107:
	.xword	.Ltmp242-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	1
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc108:
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp251-.Lfunc_begin0
	.hword	1
	.byte	90
	.xword	.Ltmp252-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc109:
	.xword	.Ltmp250-.Lfunc_begin0
	.xword	.Ltmp252-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp252-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc110:
	.xword	.Ltmp250-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	2
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc111:
	.xword	.Ltmp250-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc112:
	.xword	.Ltmp250-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc113:
	.xword	.Ltmp250-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc114:
	.xword	.Ltmp250-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc115:
	.xword	.Ltmp250-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	2
	.byte	50
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc116:
	.xword	.Ltmp250-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc117:
	.xword	.Ltmp250-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc118:
	.xword	.Ltmp252-.Lfunc_begin0
	.xword	.Ltmp253-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	0
	.xword	0
.Ldebug_loc119:
	.xword	.Ltmp252-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc120:
	.xword	.Ltmp252-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc121:
	.xword	.Ltmp252-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc122:
	.xword	.Ltmp252-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc123:
	.xword	.Ltmp252-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	1
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc124:
	.xword	.Ltmp252-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	6
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc125:
	.xword	.Ltmp252-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	1
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc126:
	.xword	.Ltmp261-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.hword	1
	.byte	90
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp269-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc127:
	.xword	.Ltmp262-.Lfunc_begin0
	.xword	.Ltmp264-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp272-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc128:
	.xword	.Ltmp262-.Lfunc_begin0
	.xword	.Ltmp272-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	3
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc129:
	.xword	.Ltmp262-.Lfunc_begin0
	.xword	.Ltmp272-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc130:
	.xword	.Ltmp262-.Lfunc_begin0
	.xword	.Ltmp272-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc131:
	.xword	.Ltmp262-.Lfunc_begin0
	.xword	.Ltmp272-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc132:
	.xword	.Ltmp262-.Lfunc_begin0
	.xword	.Ltmp272-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc133:
	.xword	.Ltmp262-.Lfunc_begin0
	.xword	.Ltmp272-.Lfunc_begin0
	.hword	2
	.byte	51
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc134:
	.xword	.Ltmp262-.Lfunc_begin0
	.xword	.Ltmp272-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc135:
	.xword	.Ltmp262-.Lfunc_begin0
	.xword	.Ltmp272-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc136:
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp265-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp265-.Lfunc_begin0
	.xword	.Ltmp269-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	0
	.xword	0
.Ldebug_loc137:
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp269-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc138:
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp272-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc139:
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp270-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc140:
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp271-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc141:
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp269-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	148
	.byte	2
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc142:
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp272-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	8
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc143:
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp272-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	148
	.byte	2
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc144:
	.xword	.Ltmp274-.Lfunc_begin0
	.xword	.Ltmp276-.Lfunc_begin0
	.hword	1
	.byte	90
	.xword	.Ltmp277-.Lfunc_begin0
	.xword	.Ltmp282-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc145:
	.xword	.Ltmp275-.Lfunc_begin0
	.xword	.Ltmp277-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp277-.Lfunc_begin0
	.xword	.Ltmp285-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc146:
	.xword	.Ltmp275-.Lfunc_begin0
	.xword	.Ltmp285-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	4
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc147:
	.xword	.Ltmp275-.Lfunc_begin0
	.xword	.Ltmp285-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc148:
	.xword	.Ltmp275-.Lfunc_begin0
	.xword	.Ltmp285-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc149:
	.xword	.Ltmp275-.Lfunc_begin0
	.xword	.Ltmp285-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc150:
	.xword	.Ltmp275-.Lfunc_begin0
	.xword	.Ltmp285-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc151:
	.xword	.Ltmp275-.Lfunc_begin0
	.xword	.Ltmp285-.Lfunc_begin0
	.hword	2
	.byte	52
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc152:
	.xword	.Ltmp275-.Lfunc_begin0
	.xword	.Ltmp285-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc153:
	.xword	.Ltmp275-.Lfunc_begin0
	.xword	.Ltmp285-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc154:
	.xword	.Ltmp277-.Lfunc_begin0
	.xword	.Ltmp278-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp278-.Lfunc_begin0
	.xword	.Ltmp282-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	0
	.xword	0
.Ldebug_loc155:
	.xword	.Ltmp277-.Lfunc_begin0
	.xword	.Ltmp282-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc156:
	.xword	.Ltmp277-.Lfunc_begin0
	.xword	.Ltmp285-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc157:
	.xword	.Ltmp277-.Lfunc_begin0
	.xword	.Ltmp283-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc158:
	.xword	.Ltmp277-.Lfunc_begin0
	.xword	.Ltmp284-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc159:
	.xword	.Ltmp277-.Lfunc_begin0
	.xword	.Ltmp282-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	2
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc160:
	.xword	.Ltmp277-.Lfunc_begin0
	.xword	.Ltmp285-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	10
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc161:
	.xword	.Ltmp277-.Lfunc_begin0
	.xword	.Ltmp285-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	2
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc162:
	.xword	.Ltmp287-.Lfunc_begin0
	.xword	.Ltmp289-.Lfunc_begin0
	.hword	1
	.byte	90
	.xword	.Ltmp290-.Lfunc_begin0
	.xword	.Ltmp295-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc163:
	.xword	.Ltmp288-.Lfunc_begin0
	.xword	.Ltmp290-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp290-.Lfunc_begin0
	.xword	.Ltmp298-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc164:
	.xword	.Ltmp288-.Lfunc_begin0
	.xword	.Ltmp298-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	5
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc165:
	.xword	.Ltmp288-.Lfunc_begin0
	.xword	.Ltmp298-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc166:
	.xword	.Ltmp288-.Lfunc_begin0
	.xword	.Ltmp298-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc167:
	.xword	.Ltmp288-.Lfunc_begin0
	.xword	.Ltmp298-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc168:
	.xword	.Ltmp288-.Lfunc_begin0
	.xword	.Ltmp298-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc169:
	.xword	.Ltmp288-.Lfunc_begin0
	.xword	.Ltmp298-.Lfunc_begin0
	.hword	2
	.byte	53
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc170:
	.xword	.Ltmp288-.Lfunc_begin0
	.xword	.Ltmp298-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc171:
	.xword	.Ltmp288-.Lfunc_begin0
	.xword	.Ltmp298-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc172:
	.xword	.Ltmp290-.Lfunc_begin0
	.xword	.Ltmp291-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp291-.Lfunc_begin0
	.xword	.Ltmp295-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	0
	.xword	0
.Ldebug_loc173:
	.xword	.Ltmp290-.Lfunc_begin0
	.xword	.Ltmp295-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc174:
	.xword	.Ltmp290-.Lfunc_begin0
	.xword	.Ltmp298-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc175:
	.xword	.Ltmp290-.Lfunc_begin0
	.xword	.Ltmp296-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc176:
	.xword	.Ltmp290-.Lfunc_begin0
	.xword	.Ltmp297-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc177:
	.xword	.Ltmp290-.Lfunc_begin0
	.xword	.Ltmp295-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	148
	.byte	3
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc178:
	.xword	.Ltmp290-.Lfunc_begin0
	.xword	.Ltmp298-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	12
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc179:
	.xword	.Ltmp290-.Lfunc_begin0
	.xword	.Ltmp298-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	148
	.byte	3
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc180:
	.xword	.Ltmp300-.Lfunc_begin0
	.xword	.Ltmp302-.Lfunc_begin0
	.hword	1
	.byte	90
	.xword	.Ltmp303-.Lfunc_begin0
	.xword	.Ltmp308-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc181:
	.xword	.Ltmp301-.Lfunc_begin0
	.xword	.Ltmp303-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp303-.Lfunc_begin0
	.xword	.Ltmp310-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc182:
	.xword	.Ltmp301-.Lfunc_begin0
	.xword	.Ltmp310-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	6
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc183:
	.xword	.Ltmp301-.Lfunc_begin0
	.xword	.Ltmp310-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc184:
	.xword	.Ltmp301-.Lfunc_begin0
	.xword	.Ltmp310-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc185:
	.xword	.Ltmp301-.Lfunc_begin0
	.xword	.Ltmp310-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc186:
	.xword	.Ltmp301-.Lfunc_begin0
	.xword	.Ltmp310-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc187:
	.xword	.Ltmp301-.Lfunc_begin0
	.xword	.Ltmp310-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	0
	.xword	0
.Ldebug_loc188:
	.xword	.Ltmp301-.Lfunc_begin0
	.xword	.Ltmp310-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc189:
	.xword	.Ltmp303-.Lfunc_begin0
	.xword	.Ltmp304-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp304-.Lfunc_begin0
	.xword	.Ltmp308-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	0
	.xword	0
.Ldebug_loc190:
	.xword	.Ltmp303-.Lfunc_begin0
	.xword	.Ltmp308-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc191:
	.xword	.Ltmp303-.Lfunc_begin0
	.xword	.Ltmp310-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc192:
	.xword	.Ltmp303-.Lfunc_begin0
	.xword	.Ltmp309-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc193:
	.xword	.Ltmp303-.Lfunc_begin0
	.xword	.Ltmp310-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc194:
	.xword	.Ltmp303-.Lfunc_begin0
	.xword	.Ltmp308-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	148
	.byte	4
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc195:
	.xword	.Ltmp303-.Lfunc_begin0
	.xword	.Ltmp310-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	212
	.byte	16
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc196:
	.xword	.Ltmp303-.Lfunc_begin0
	.xword	.Ltmp310-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	148
	.byte	4
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc197:
	.xword	.Lfunc_begin4-.Lfunc_begin0
	.xword	.Ltmp330-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp330-.Lfunc_begin0
	.xword	.Ltmp372-.Lfunc_begin0
	.hword	1
	.byte	90
	.xword	0
	.xword	0
.Ldebug_loc198:
	.xword	.Lfunc_begin4-.Lfunc_begin0
	.xword	.Ltmp330-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp331-.Lfunc_begin0
	.xword	.Ltmp333-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp333-.Lfunc_begin0
	.xword	.Ltmp335-.Lfunc_begin0
	.hword	6
	.byte	125
	.byte	0
	.byte	17
	.byte	4
	.byte	27
	.byte	159
	.xword	.Ltmp368-.Lfunc_begin0
	.xword	.Ltmp372-.Lfunc_begin0
	.hword	9
	.byte	125
	.byte	0
	.byte	17
	.byte	4
	.byte	27
	.byte	17
	.byte	1
	.byte	34
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc199:
	.xword	.Lfunc_begin4-.Lfunc_begin0
	.xword	.Ltmp330-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp334-.Lfunc_begin0
	.xword	.Ltmp338-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp338-.Lfunc_begin0
	.xword	.Ltmp340-.Lfunc_begin0
	.hword	2
	.byte	49
	.byte	159
	.xword	.Ltmp340-.Lfunc_begin0
	.xword	.Ltmp342-.Lfunc_begin0
	.hword	2
	.byte	50
	.byte	159
	.xword	.Ltmp342-.Lfunc_begin0
	.xword	.Ltmp344-.Lfunc_begin0
	.hword	2
	.byte	51
	.byte	159
	.xword	.Ltmp344-.Lfunc_begin0
	.xword	.Ltmp346-.Lfunc_begin0
	.hword	2
	.byte	52
	.byte	159
	.xword	.Ltmp346-.Lfunc_begin0
	.xword	.Ltmp348-.Lfunc_begin0
	.hword	2
	.byte	53
	.byte	159
	.xword	.Ltmp348-.Lfunc_begin0
	.xword	.Ltmp350-.Lfunc_begin0
	.hword	2
	.byte	54
	.byte	159
	.xword	.Ltmp350-.Lfunc_begin0
	.xword	.Ltmp352-.Lfunc_begin0
	.hword	2
	.byte	55
	.byte	159
	.xword	.Ltmp352-.Lfunc_begin0
	.xword	.Ltmp354-.Lfunc_begin0
	.hword	2
	.byte	56
	.byte	159
	.xword	.Ltmp354-.Lfunc_begin0
	.xword	.Ltmp356-.Lfunc_begin0
	.hword	2
	.byte	57
	.byte	159
	.xword	.Ltmp356-.Lfunc_begin0
	.xword	.Ltmp358-.Lfunc_begin0
	.hword	2
	.byte	58
	.byte	159
	.xword	.Ltmp358-.Lfunc_begin0
	.xword	.Ltmp360-.Lfunc_begin0
	.hword	2
	.byte	59
	.byte	159
	.xword	.Ltmp360-.Lfunc_begin0
	.xword	.Ltmp362-.Lfunc_begin0
	.hword	2
	.byte	60
	.byte	159
	.xword	.Ltmp362-.Lfunc_begin0
	.xword	.Ltmp364-.Lfunc_begin0
	.hword	2
	.byte	61
	.byte	159
	.xword	.Ltmp364-.Lfunc_begin0
	.xword	.Ltmp366-.Lfunc_begin0
	.hword	2
	.byte	62
	.byte	159
	.xword	.Ltmp366-.Lfunc_begin0
	.xword	.Ltmp368-.Lfunc_begin0
	.hword	2
	.byte	63
	.byte	159
	.xword	.Ltmp368-.Lfunc_begin0
	.xword	.Ltmp372-.Lfunc_begin0
	.hword	2
	.byte	64
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc200:
	.xword	.Ltmp330-.Lfunc_begin0
	.xword	.Ltmp331-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp331-.Lfunc_begin0
	.xword	.Ltmp333-.Lfunc_begin0
	.hword	21
	.byte	127
	.byte	0
	.byte	122
	.byte	0
	.byte	52
	.byte	36
	.byte	18
	.byte	16
	.byte	31
	.byte	37
	.byte	48
	.byte	32
	.byte	30
	.byte	16
	.byte	32
	.byte	36
	.byte	33
	.byte	52
	.byte	30
	.byte	34
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc201:
	.xword	.Ltmp334-.Lfunc_begin0
	.xword	.Ltmp337-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp337-.Lfunc_begin0
	.xword	.Ltmp338-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	.Ltmp338-.Lfunc_begin0
	.xword	.Ltmp339-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp339-.Lfunc_begin0
	.xword	.Ltmp340-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	.Ltmp340-.Lfunc_begin0
	.xword	.Ltmp341-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp341-.Lfunc_begin0
	.xword	.Ltmp342-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	.Ltmp342-.Lfunc_begin0
	.xword	.Ltmp343-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp344-.Lfunc_begin0
	.xword	.Ltmp345-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp345-.Lfunc_begin0
	.xword	.Ltmp346-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	.Ltmp346-.Lfunc_begin0
	.xword	.Ltmp347-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp347-.Lfunc_begin0
	.xword	.Ltmp348-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	.Ltmp348-.Lfunc_begin0
	.xword	.Ltmp349-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp349-.Lfunc_begin0
	.xword	.Ltmp350-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	.Ltmp350-.Lfunc_begin0
	.xword	.Ltmp351-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp351-.Lfunc_begin0
	.xword	.Ltmp352-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	.Ltmp352-.Lfunc_begin0
	.xword	.Ltmp353-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp353-.Lfunc_begin0
	.xword	.Ltmp354-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	.Ltmp354-.Lfunc_begin0
	.xword	.Ltmp355-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp355-.Lfunc_begin0
	.xword	.Ltmp356-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	.Ltmp356-.Lfunc_begin0
	.xword	.Ltmp357-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp357-.Lfunc_begin0
	.xword	.Ltmp358-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	.Ltmp358-.Lfunc_begin0
	.xword	.Ltmp359-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp359-.Lfunc_begin0
	.xword	.Ltmp360-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	.Ltmp360-.Lfunc_begin0
	.xword	.Ltmp361-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp361-.Lfunc_begin0
	.xword	.Ltmp362-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	.Ltmp362-.Lfunc_begin0
	.xword	.Ltmp363-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp363-.Lfunc_begin0
	.xword	.Ltmp364-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	.Ltmp364-.Lfunc_begin0
	.xword	.Ltmp365-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp365-.Lfunc_begin0
	.xword	.Ltmp366-.Lfunc_begin0
	.hword	1
	.byte	97
	.xword	.Ltmp366-.Lfunc_begin0
	.xword	.Ltmp367-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
	.section	.debug_abbrev,"",@progbits
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	16
	.byte	23
	.byte	27
	.byte	14
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	2
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.ascii	"\227B"
	.byte	25
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	39
	.byte	25
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	3
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	2
	.byte	24
	.byte	0
	.byte	0
	.byte	4
	.byte	5
	.byte	0
	.byte	2
	.byte	23
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	5
	.byte	52
	.byte	0
	.byte	2
	.byte	23
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	6
	.byte	29
	.byte	1
	.byte	49
	.byte	19
	.byte	85
	.byte	23
	.byte	88
	.byte	11
	.byte	89
	.byte	5
	.byte	87
	.byte	11
	.byte	0
	.byte	0
	.byte	7
	.byte	5
	.byte	0
	.byte	2
	.byte	23
	.byte	49
	.byte	19
	.byte	0
	.byte	0
	.byte	8
	.byte	52
	.byte	0
	.byte	2
	.byte	23
	.byte	49
	.byte	19
	.byte	0
	.byte	0
	.byte	9
	.byte	29
	.byte	1
	.byte	49
	.byte	19
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	88
	.byte	11
	.byte	89
	.byte	5
	.byte	87
	.byte	11
	.byte	0
	.byte	0
	.byte	10
	.ascii	"\211\202\001"
	.byte	0
	.byte	49
	.byte	19
	.byte	17
	.byte	1
	.byte	0
	.byte	0
	.byte	11
	.ascii	"\211\202\001"
	.byte	1
	.byte	49
	.byte	19
	.byte	17
	.byte	1
	.byte	0
	.byte	0
	.byte	12
	.ascii	"\212\202\001"
	.byte	0
	.byte	2
	.byte	24
	.ascii	"\221B"
	.byte	24
	.byte	0
	.byte	0
	.byte	13
	.byte	4
	.byte	1
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	14
	.byte	40
	.byte	0
	.byte	3
	.byte	14
	.byte	28
	.byte	15
	.byte	0
	.byte	0
	.byte	15
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	16
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	2
	.byte	24
	.byte	0
	.byte	0
	.byte	17
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	18
	.byte	19
	.byte	1
	.byte	3
	.byte	14
	.byte	11
	.byte	5
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	19
	.byte	13
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	56
	.byte	11
	.byte	0
	.byte	0
	.byte	20
	.byte	13
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	56
	.byte	5
	.byte	0
	.byte	0
	.byte	21
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	22
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	55
	.byte	11
	.byte	0
	.byte	0
	.byte	23
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	24
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	55
	.byte	5
	.byte	0
	.byte	0
	.byte	25
	.byte	4
	.byte	1
	.byte	73
	.byte	19
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	26
	.byte	4
	.byte	1
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	0
	.byte	0
	.byte	27
	.byte	38
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	28
	.byte	22
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	29
	.byte	15
	.byte	0
	.byte	0
	.byte	0
	.byte	30
	.byte	46
	.byte	1
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	25
	.byte	73
	.byte	19
	.byte	32
	.byte	11
	.byte	0
	.byte	0
	.byte	31
	.byte	5
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	32
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	33
	.byte	46
	.byte	1
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	25
	.byte	32
	.byte	11
	.byte	0
	.byte	0
	.byte	34
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.ascii	"\227B"
	.byte	25
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	25
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	35
	.byte	5
	.byte	0
	.byte	2
	.byte	23
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	36
	.byte	52
	.byte	0
	.byte	2
	.byte	23
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	37
	.byte	29
	.byte	1
	.byte	49
	.byte	19
	.byte	85
	.byte	23
	.byte	88
	.byte	11
	.byte	89
	.byte	11
	.byte	87
	.byte	11
	.byte	0
	.byte	0
	.byte	38
	.byte	29
	.byte	1
	.byte	49
	.byte	19
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	88
	.byte	11
	.byte	89
	.byte	11
	.byte	87
	.byte	11
	.byte	0
	.byte	0
	.byte	39
	.byte	5
	.byte	0
	.byte	28
	.byte	15
	.byte	49
	.byte	19
	.byte	0
	.byte	0
	.byte	40
	.byte	52
	.byte	0
	.byte	2
	.byte	24
	.byte	49
	.byte	19
	.byte	0
	.byte	0
	.byte	41
	.byte	46
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.ascii	"\227B"
	.byte	25
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	25
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	42
	.byte	46
	.byte	1
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	39
	.byte	25
	.byte	73
	.byte	19
	.byte	32
	.byte	11
	.byte	0
	.byte	0
	.byte	43
	.byte	5
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	44
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	45
	.byte	46
	.byte	1
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	25
	.byte	60
	.byte	25
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	46
	.byte	5
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	47
	.byte	38
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.ascii	"\227B"
	.byte	25
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	39
	.byte	25
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	49
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	50
	.byte	52
	.byte	0
	.byte	28
	.byte	13
	.byte	49
	.byte	19
	.byte	0
	.byte	0
	.byte	51
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	49
	.byte	19
	.byte	0
	.byte	0
	.byte	52
	.byte	11
	.byte	1
	.byte	85
	.byte	23
	.byte	0
	.byte	0
	.byte	53
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	54
	.byte	46
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	25
	.byte	73
	.byte	19
	.byte	60
	.byte	25
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	55
	.byte	19
	.byte	1
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	56
	.byte	11
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0
.Ldebug_info_start0:
	.hword	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.hword	12
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2
	.xword	.Lfunc_begin0
	.word	.Lfunc_end4-.Lfunc_begin0
	.byte	2
	.xword	.Lfunc_begin2
	.word	.Lfunc_end2-.Lfunc_begin2
	.byte	1
	.byte	109

	.word	.Linfo_string141
	.byte	2
	.hword	628

	.word	592

	.byte	3
	.word	.Linfo_string3
	.word	482
	.byte	2
	.hword	630
	.byte	9
	.byte	3
	.xword	rkf_wf_get_lut.stype
	.byte	3
	.word	.Linfo_string21
	.word	592
	.byte	2
	.hword	631
	.byte	9
	.byte	3
	.xword	rkf_wf_get_lut.sftemp
	.byte	4
	.word	.Ldebug_loc14
	.word	.Linfo_string104
	.byte	2
	.hword	628
	.word	4582
	.byte	4
	.word	.Ldebug_loc15
	.word	.Linfo_string137
	.byte	2
	.hword	628
	.word	482
	.byte	4
	.word	.Ldebug_loc16
	.word	.Linfo_string147
	.byte	2
	.hword	628
	.word	592
	.byte	4
	.word	.Ldebug_loc17
	.word	.Linfo_string148
	.byte	2
	.hword	628
	.word	592
	.byte	4
	.word	.Ldebug_loc18
	.word	.Linfo_string149
	.byte	2
	.hword	628
	.word	592
	.byte	5
	.word	.Ldebug_loc19
	.word	.Linfo_string89
	.byte	2
	.hword	633
	.word	592
	.byte	5
	.word	.Ldebug_loc20
	.word	.Linfo_string150
	.byte	2
	.hword	632
	.word	592
	.byte	6
	.word	1684
	.word	.Ldebug_ranges3
	.byte	2
	.hword	673
	.byte	4
	.byte	7
	.word	.Ldebug_loc24
	.word	1697
	.byte	7
	.word	.Ldebug_loc23
	.word	1709
	.byte	8
	.word	.Ldebug_loc21
	.word	1721
	.byte	8
	.word	.Ldebug_loc22
	.word	1733
	.byte	0
	.byte	9
	.word	1746
	.xword	.Ltmp106
	.word	.Ltmp119-.Ltmp106
	.byte	2
	.hword	675
	.byte	4
	.byte	7
	.word	.Ldebug_loc28
	.word	1759
	.byte	7
	.word	.Ldebug_loc27
	.word	1771
	.byte	8
	.word	.Ldebug_loc25
	.word	1783
	.byte	8
	.word	.Ldebug_loc26
	.word	1795
	.byte	0
	.byte	10
	.word	1808
	.xword	.Ltmp77
	.byte	11
	.word	1827
	.xword	.Ltmp79
	.byte	12
	.byte	1
	.byte	82
	.byte	2
	.byte	131
	.byte	0
	.byte	12
	.byte	1
	.byte	81
	.byte	2
	.byte	133
	.byte	0
	.byte	12
	.byte	1
	.byte	80
	.byte	2
	.byte	132
	.byte	0
	.byte	0
	.byte	11
	.word	4207
	.xword	.Ltmp82
	.byte	12
	.byte	1
	.byte	82
	.byte	2
	.byte	134
	.byte	0
	.byte	12
	.byte	1
	.byte	80
	.byte	2
	.byte	132
	.byte	0
	.byte	0
	.byte	10
	.word	1808
	.xword	.Ltmp128
	.byte	10
	.word	4384
	.xword	.Ltmp130
	.byte	11
	.word	1827
	.xword	.Ltmp132
	.byte	12
	.byte	1
	.byte	82
	.byte	2
	.byte	131
	.byte	0
	.byte	12
	.byte	1
	.byte	80
	.byte	2
	.byte	132
	.byte	0
	.byte	0
	.byte	11
	.word	4207
	.xword	.Ltmp135
	.byte	12
	.byte	1
	.byte	82
	.byte	2
	.byte	133
	.byte	0
	.byte	12
	.byte	1
	.byte	80
	.byte	2
	.byte	132
	.byte	0
	.byte	0
	.byte	0
	.byte	13
	.word	585
	.word	.Linfo_string20
	.byte	4
	.byte	1
	.byte	15
	.byte	14
	.word	.Linfo_string5
	.byte	0
	.byte	14
	.word	.Linfo_string6
	.byte	1
	.byte	14
	.word	.Linfo_string7
	.byte	2
	.byte	14
	.word	.Linfo_string8
	.byte	3
	.byte	14
	.word	.Linfo_string9
	.byte	4
	.byte	14
	.word	.Linfo_string10
	.byte	5
	.byte	14
	.word	.Linfo_string11
	.byte	6
	.byte	14
	.word	.Linfo_string12
	.byte	7
	.byte	14
	.word	.Linfo_string13
	.byte	8
	.byte	14
	.word	.Linfo_string14
	.byte	9
	.byte	14
	.word	.Linfo_string15
	.byte	10
	.byte	14
	.word	.Linfo_string16
	.byte	11
	.byte	14
	.word	.Linfo_string17
	.byte	12
	.byte	14
	.word	.Linfo_string18
	.byte	13
	.byte	14
	.word	.Linfo_string19
	.byte	14
	.byte	0
	.byte	15
	.word	.Linfo_string4
	.byte	7
	.byte	4
	.byte	15
	.word	.Linfo_string22
	.byte	5
	.byte	4
	.byte	16
	.word	.Linfo_string23
	.word	620
	.byte	2
	.byte	55
	.byte	9
	.byte	3
	.xword	global_waveform
	.byte	17
	.word	625
	.byte	18
	.word	.Linfo_string47
	.hword	2388
	.byte	2
	.byte	30
	.byte	19
	.word	.Linfo_string24
	.word	592
	.byte	2
	.byte	31
	.byte	0
	.byte	19
	.word	.Linfo_string25
	.word	899
	.byte	2
	.byte	32
	.byte	4
	.byte	19
	.word	.Linfo_string28
	.word	899
	.byte	2
	.byte	33
	.byte	20
	.byte	19
	.word	.Linfo_string29
	.word	899
	.byte	2
	.byte	34
	.byte	36
	.byte	19
	.word	.Linfo_string30
	.word	899
	.byte	2
	.byte	35
	.byte	52
	.byte	19
	.word	.Linfo_string31
	.word	899
	.byte	2
	.byte	36
	.byte	68
	.byte	19
	.word	.Linfo_string32
	.word	925
	.byte	2
	.byte	37
	.byte	84
	.byte	19
	.word	.Linfo_string33
	.word	925
	.byte	2
	.byte	38
	.byte	148
	.byte	19
	.word	.Linfo_string34
	.word	925
	.byte	2
	.byte	39
	.byte	212
	.byte	20
	.word	.Linfo_string35
	.word	925
	.byte	2
	.byte	40
	.hword	276
	.byte	20
	.word	.Linfo_string36
	.word	925
	.byte	2
	.byte	41
	.hword	340
	.byte	20
	.word	.Linfo_string37
	.word	925
	.byte	2
	.byte	42
	.hword	404
	.byte	20
	.word	.Linfo_string38
	.word	925
	.byte	2
	.byte	43
	.hword	468
	.byte	20
	.word	.Linfo_string39
	.word	925
	.byte	2
	.byte	44
	.hword	532
	.byte	20
	.word	.Linfo_string40
	.word	937
	.byte	2
	.byte	45
	.hword	596
	.byte	20
	.word	.Linfo_string41
	.word	937
	.byte	2
	.byte	46
	.hword	852
	.byte	20
	.word	.Linfo_string42
	.word	937
	.byte	2
	.byte	47
	.hword	1108
	.byte	20
	.word	.Linfo_string43
	.word	937
	.byte	2
	.byte	48
	.hword	1364
	.byte	20
	.word	.Linfo_string44
	.word	937
	.byte	2
	.byte	49
	.hword	1620
	.byte	20
	.word	.Linfo_string45
	.word	937
	.byte	2
	.byte	50
	.hword	1876
	.byte	20
	.word	.Linfo_string46
	.word	937
	.byte	2
	.byte	51
	.hword	2132
	.byte	0
	.byte	21
	.word	911
	.byte	22
	.word	918
	.byte	16
	.byte	0
	.byte	15
	.word	.Linfo_string26
	.byte	8
	.byte	1
	.byte	23
	.word	.Linfo_string27
	.byte	8
	.byte	7
	.byte	21
	.word	911
	.byte	22
	.word	918
	.byte	64
	.byte	0
	.byte	21
	.word	585
	.byte	22
	.word	918
	.byte	64
	.byte	0
	.byte	16
	.word	.Linfo_string48
	.word	970
	.byte	2
	.byte	56
	.byte	9
	.byte	3
	.xword	crc32_table
	.byte	21
	.word	585
	.byte	24
	.word	918
	.hword	256
	.byte	0
	.byte	13
	.word	585
	.word	.Linfo_string56
	.byte	4
	.byte	2
	.byte	20
	.byte	14
	.word	.Linfo_string49
	.byte	0
	.byte	14
	.word	.Linfo_string50
	.byte	1
	.byte	14
	.word	.Linfo_string51
	.byte	2
	.byte	14
	.word	.Linfo_string52
	.byte	3
	.byte	14
	.word	.Linfo_string53
	.byte	4
	.byte	14
	.word	.Linfo_string54
	.byte	5
	.byte	14
	.word	.Linfo_string55
	.byte	6
	.byte	0
	.byte	25
	.word	585
	.byte	4
	.byte	3
	.byte	10
	.byte	14
	.word	.Linfo_string57
	.byte	0
	.byte	14
	.word	.Linfo_string58
	.byte	1
	.byte	0
	.byte	26
	.word	585
	.word	.Linfo_string64
	.byte	4
	.byte	4
	.hword	335
	.byte	14
	.word	.Linfo_string59
	.byte	0
	.byte	14
	.word	.Linfo_string60
	.byte	0
	.byte	14
	.word	.Linfo_string61
	.byte	1
	.byte	14
	.word	.Linfo_string62
	.byte	2
	.byte	14
	.word	.Linfo_string63
	.byte	3
	.byte	0
	.byte	17
	.word	1108
	.byte	27
	.word	911
	.byte	17
	.word	1118
	.byte	28
	.word	1129
	.word	.Linfo_string66
	.byte	6
	.byte	21
	.byte	28
	.word	585
	.word	.Linfo_string65
	.byte	5
	.byte	27
	.byte	17
	.word	911
	.byte	17
	.word	1150
	.byte	15
	.word	.Linfo_string67
	.byte	8
	.byte	1
	.byte	17
	.word	1162
	.byte	27
	.word	1150
	.byte	28
	.word	585
	.word	.Linfo_string68
	.byte	7
	.byte	148
	.byte	17
	.word	585
	.byte	29
	.byte	30
	.word	.Linfo_string69
	.byte	2
	.byte	91

	.word	592
	.byte	1
	.byte	31
	.word	.Linfo_string70
	.byte	2
	.byte	91
	.word	1208
	.byte	0
	.byte	17
	.word	1213
	.byte	28
	.word	1224
	.word	.Linfo_string72
	.byte	6
	.byte	17
	.byte	28
	.word	1150
	.word	.Linfo_string71
	.byte	5
	.byte	21
	.byte	30
	.word	.Linfo_string73
	.byte	2
	.byte	101

	.word	592
	.byte	1
	.byte	31
	.word	.Linfo_string74
	.byte	2
	.byte	101
	.word	620
	.byte	32
	.word	.Linfo_string75
	.byte	2
	.byte	103
	.word	1118
	.byte	32
	.word	.Linfo_string76
	.byte	2
	.byte	104
	.word	1118
	.byte	0
	.byte	30
	.word	.Linfo_string77
	.byte	2
	.byte	78

	.word	585
	.byte	1
	.byte	31
	.word	.Linfo_string78
	.byte	2
	.byte	78
	.word	1145
	.byte	31
	.word	.Linfo_string79
	.byte	2
	.byte	78
	.word	585
	.byte	32
	.word	.Linfo_string80
	.byte	2
	.byte	81
	.word	585
	.byte	32
	.word	.Linfo_string81
	.byte	2
	.byte	80
	.word	585
	.byte	0
	.byte	33
	.word	.Linfo_string82
	.byte	2
	.byte	58

	.byte	1
	.byte	31
	.word	.Linfo_string83
	.byte	2
	.byte	58
	.word	585
	.byte	31
	.word	.Linfo_string84
	.byte	2
	.byte	58
	.word	1178
	.byte	32
	.word	.Linfo_string81
	.byte	2
	.byte	60
	.word	585
	.byte	32
	.word	.Linfo_string85
	.byte	2
	.byte	61
	.word	585
	.byte	32
	.word	.Linfo_string80
	.byte	2
	.byte	62
	.word	585
	.byte	32
	.word	.Linfo_string86
	.byte	2
	.byte	60
	.word	585
	.byte	0
	.byte	34
	.xword	.Lfunc_begin0
	.word	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	109

	.word	.Linfo_string139
	.byte	2
	.byte	127

	.word	592

	.byte	35
	.word	.Ldebug_loc0
	.word	.Linfo_string144
	.byte	2
	.byte	127
	.word	1183
	.byte	36
	.word	.Ldebug_loc1
	.word	.Linfo_string145
	.byte	2
	.byte	130
	.word	620
	.byte	36
	.word	.Ldebug_loc2
	.word	.Linfo_string146
	.byte	2
	.byte	129
	.word	592
	.byte	37
	.word	1184
	.word	.Ldebug_ranges0
	.byte	2
	.byte	135
	.byte	8
	.byte	7
	.word	.Ldebug_loc3
	.word	1196
	.byte	0
	.byte	37
	.word	1235
	.word	.Ldebug_ranges1
	.byte	2
	.byte	141
	.byte	8
	.byte	7
	.word	.Ldebug_loc4
	.word	1247
	.byte	8
	.word	.Ldebug_loc5
	.word	1258
	.byte	8
	.word	.Ldebug_loc6
	.word	1269
	.byte	37
	.word	1281
	.word	.Ldebug_ranges2
	.byte	2
	.byte	110
	.byte	13
	.byte	7
	.word	.Ldebug_loc10
	.word	1293
	.byte	7
	.word	.Ldebug_loc9
	.word	1304
	.byte	8
	.word	.Ldebug_loc7
	.word	1315
	.byte	8
	.word	.Ldebug_loc8
	.word	1326
	.byte	38
	.word	1338
	.xword	.Ltmp16
	.word	.Ltmp37-.Ltmp16
	.byte	2
	.byte	84
	.byte	2
	.byte	39
	.ascii	"\267\233\204&"
	.word	1346
	.byte	40
	.byte	1
	.byte	92
	.word	1368
	.byte	8
	.word	.Ldebug_loc11
	.word	1379
	.byte	8
	.word	.Ldebug_loc12
	.word	1390
	.byte	8
	.word	.Ldebug_loc13
	.word	1401
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	41
	.xword	.Lfunc_begin1
	.word	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	111

	.word	.Linfo_string140
	.byte	2
	.byte	160

	.word	1103

	.byte	42
	.word	.Linfo_string87
	.byte	2
	.hword	532

	.word	592
	.byte	1
	.byte	43
	.word	.Linfo_string88
	.byte	2
	.hword	532
	.word	1208
	.byte	43
	.word	.Linfo_string89
	.byte	2
	.hword	532
	.word	592
	.byte	44
	.word	.Linfo_string90
	.byte	2
	.hword	535
	.word	1208
	.byte	44
	.word	.Linfo_string91
	.byte	2
	.hword	534
	.word	592
	.byte	0
	.byte	42
	.word	.Linfo_string92
	.byte	2
	.hword	570

	.word	592
	.byte	1
	.byte	43
	.word	.Linfo_string88
	.byte	2
	.hword	570
	.word	1208
	.byte	43
	.word	.Linfo_string89
	.byte	2
	.hword	570
	.word	592
	.byte	44
	.word	.Linfo_string91
	.byte	2
	.hword	572
	.word	592
	.byte	44
	.word	.Linfo_string90
	.byte	2
	.hword	573
	.word	1208
	.byte	0
	.byte	45
	.word	.Linfo_string93
	.byte	4
	.byte	197



	.byte	46
	.word	1821
	.byte	0
	.byte	17
	.word	1826
	.byte	47
	.byte	48
	.xword	.Lfunc_begin3
	.word	.Lfunc_end3-.Lfunc_begin3
	.byte	1
	.byte	109

	.word	.Linfo_string142
	.byte	2
	.hword	465

	.word	592
	.byte	4
	.word	.Ldebug_loc29
	.word	.Linfo_string104
	.byte	2
	.hword	465
	.word	4582
	.byte	4
	.word	.Ldebug_loc30
	.word	.Linfo_string137
	.byte	2
	.hword	465
	.word	482
	.byte	4
	.word	.Ldebug_loc31
	.word	.Linfo_string147
	.byte	2
	.hword	465
	.word	592
	.byte	5
	.word	.Ldebug_loc32
	.word	.Linfo_string89
	.byte	2
	.hword	467
	.word	592
	.byte	6
	.word	4496
	.word	.Ldebug_ranges4
	.byte	2
	.hword	472
	.byte	15
	.byte	7
	.word	.Ldebug_loc42
	.word	4509
	.byte	7
	.word	.Ldebug_loc41
	.word	4521
	.byte	8
	.word	.Ldebug_loc37
	.word	4533
	.byte	8
	.word	.Ldebug_loc38
	.word	4545
	.byte	8
	.word	.Ldebug_loc39
	.word	4557
	.byte	8
	.word	.Ldebug_loc40
	.word	4569
	.byte	6
	.word	4395
	.word	.Ldebug_ranges5
	.byte	2
	.hword	329
	.byte	9
	.byte	7
	.word	.Ldebug_loc36
	.word	4407
	.byte	7
	.word	.Ldebug_loc35
	.word	4418
	.byte	8
	.word	.Ldebug_loc34
	.word	4429
	.byte	8
	.word	.Ldebug_loc45
	.word	4440
	.byte	8
	.word	.Ldebug_loc46
	.word	4451
	.byte	8
	.word	.Ldebug_loc47
	.word	4462
	.byte	8
	.word	.Ldebug_loc49
	.word	4473
	.byte	8
	.word	.Ldebug_loc50
	.word	4484
	.byte	37
	.word	4644
	.word	.Ldebug_ranges6
	.byte	2
	.byte	228
	.byte	7
	.byte	7
	.word	.Ldebug_loc48
	.word	4656
	.byte	7
	.word	.Ldebug_loc33
	.word	4667
	.byte	8
	.word	.Ldebug_loc43
	.word	4678
	.byte	8
	.word	.Ldebug_loc44
	.word	4689
	.byte	49
	.xword	.Ltmp159
	.word	.Ltmp161-.Ltmp159
	.byte	50
	.byte	50
	.word	4725
	.byte	50
	.byte	0
	.word	4736
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.word	4879
	.word	.Ldebug_ranges7
	.byte	2
	.hword	334
	.byte	15
	.byte	7
	.word	.Ldebug_loc54
	.word	4891
	.byte	7
	.word	.Ldebug_loc57
	.word	4902
	.byte	8
	.word	.Ldebug_loc53
	.word	4913
	.byte	37
	.word	4841
	.word	.Ldebug_ranges8
	.byte	2
	.byte	245
	.byte	8
	.byte	7
	.word	.Ldebug_loc56
	.word	4854
	.byte	7
	.word	.Ldebug_loc52
	.word	4866
	.byte	6
	.word	4749
	.word	.Ldebug_ranges9
	.byte	4
	.hword	692
	.byte	9
	.byte	7
	.word	.Ldebug_loc55
	.word	4762
	.byte	7
	.word	.Ldebug_loc51
	.word	4774
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.word	4925
	.xword	.Ltmp172
	.word	.Ltmp173-.Ltmp172
	.byte	2
	.hword	330
	.byte	14
	.byte	51
	.byte	1
	.byte	104
	.word	4937
	.byte	0
	.byte	6
	.word	4949
	.word	.Ldebug_ranges10
	.byte	2
	.hword	341
	.byte	17
	.byte	8
	.word	.Ldebug_loc60
	.word	4972
	.byte	8
	.word	.Ldebug_loc61
	.word	4984
	.byte	8
	.word	.Ldebug_loc62
	.word	4996
	.byte	8
	.word	.Ldebug_loc63
	.word	5008
	.byte	8
	.word	.Ldebug_loc64
	.word	5020
	.byte	8
	.word	.Ldebug_loc65
	.word	5032
	.byte	8
	.word	.Ldebug_loc66
	.word	5044
	.byte	8
	.word	.Ldebug_loc67
	.word	5056
	.byte	8
	.word	.Ldebug_loc68
	.word	5068
	.byte	6
	.word	4841
	.word	.Ldebug_ranges11
	.byte	2
	.hword	265
	.byte	10
	.byte	7
	.word	.Ldebug_loc59
	.word	4854
	.byte	7
	.word	.Ldebug_loc70
	.word	4866
	.byte	6
	.word	4749
	.word	.Ldebug_ranges12
	.byte	4
	.hword	692
	.byte	9
	.byte	7
	.word	.Ldebug_loc58
	.word	4762
	.byte	7
	.word	.Ldebug_loc69
	.word	4774
	.byte	0
	.byte	0
	.byte	52
	.word	.Ldebug_ranges13
	.byte	8
	.word	.Ldebug_loc71
	.word	5081
	.byte	8
	.word	.Ldebug_loc72
	.word	5093
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.word	5107
	.xword	.Ltmp224
	.word	.Ltmp237-.Ltmp224
	.byte	2
	.hword	508
	.byte	15
	.byte	7
	.word	.Ldebug_loc81
	.word	5120
	.byte	7
	.word	.Ldebug_loc80
	.word	5132
	.byte	8
	.word	.Ldebug_loc77
	.word	5144
	.byte	8
	.word	.Ldebug_loc78
	.word	5156
	.byte	8
	.word	.Ldebug_loc79
	.word	5168
	.byte	9
	.word	4395
	.xword	.Ltmp224
	.word	.Ltmp237-.Ltmp224
	.byte	2
	.hword	377
	.byte	9
	.byte	7
	.word	.Ldebug_loc76
	.word	4407
	.byte	7
	.word	.Ldebug_loc75
	.word	4418
	.byte	8
	.word	.Ldebug_loc74
	.word	4429
	.byte	8
	.word	.Ldebug_loc84
	.word	4440
	.byte	8
	.word	.Ldebug_loc85
	.word	4451
	.byte	8
	.word	.Ldebug_loc86
	.word	4462
	.byte	8
	.word	.Ldebug_loc88
	.word	4473
	.byte	8
	.word	.Ldebug_loc89
	.word	4484
	.byte	37
	.word	4644
	.word	.Ldebug_ranges14
	.byte	2
	.byte	228
	.byte	7
	.byte	7
	.word	.Ldebug_loc87
	.word	4656
	.byte	7
	.word	.Ldebug_loc73
	.word	4667
	.byte	8
	.word	.Ldebug_loc82
	.word	4678
	.byte	8
	.word	.Ldebug_loc83
	.word	4689
	.byte	49
	.xword	.Ltmp226
	.word	.Ltmp228-.Ltmp226
	.byte	50
	.byte	50
	.word	4725
	.byte	40
	.byte	1
	.byte	90
	.word	4736
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.word	5181
	.xword	.Ltmp237
	.word	.Ltmp247-.Ltmp237
	.byte	2
	.hword	502
	.byte	15
	.byte	7
	.word	.Ldebug_loc99
	.word	5194
	.byte	7
	.word	.Ldebug_loc98
	.word	5206
	.byte	7
	.word	.Ldebug_loc97
	.word	5218
	.byte	8
	.word	.Ldebug_loc94
	.word	5230
	.byte	8
	.word	.Ldebug_loc95
	.word	5242
	.byte	8
	.word	.Ldebug_loc96
	.word	5254
	.byte	9
	.word	4395
	.xword	.Ltmp237
	.word	.Ltmp247-.Ltmp237
	.byte	2
	.hword	358
	.byte	9
	.byte	7
	.word	.Ldebug_loc93
	.word	4407
	.byte	7
	.word	.Ldebug_loc92
	.word	4418
	.byte	8
	.word	.Ldebug_loc91
	.word	4429
	.byte	8
	.word	.Ldebug_loc102
	.word	4440
	.byte	8
	.word	.Ldebug_loc103
	.word	4451
	.byte	8
	.word	.Ldebug_loc104
	.word	4462
	.byte	8
	.word	.Ldebug_loc106
	.word	4473
	.byte	8
	.word	.Ldebug_loc107
	.word	4484
	.byte	37
	.word	4644
	.word	.Ldebug_ranges15
	.byte	2
	.byte	228
	.byte	7
	.byte	7
	.word	.Ldebug_loc105
	.word	4656
	.byte	7
	.word	.Ldebug_loc90
	.word	4667
	.byte	8
	.word	.Ldebug_loc100
	.word	4678
	.byte	8
	.word	.Ldebug_loc101
	.word	4689
	.byte	49
	.xword	.Ltmp239
	.word	.Ltmp241-.Ltmp239
	.byte	50
	.byte	50
	.word	4725
	.byte	40
	.byte	1
	.byte	90
	.word	4736
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.word	5181
	.xword	.Ltmp247
	.word	.Ltmp257-.Ltmp247
	.byte	2
	.hword	478
	.byte	15
	.byte	7
	.word	.Ldebug_loc117
	.word	5194
	.byte	7
	.word	.Ldebug_loc116
	.word	5206
	.byte	7
	.word	.Ldebug_loc115
	.word	5218
	.byte	8
	.word	.Ldebug_loc112
	.word	5230
	.byte	8
	.word	.Ldebug_loc113
	.word	5242
	.byte	8
	.word	.Ldebug_loc114
	.word	5254
	.byte	9
	.word	4395
	.xword	.Ltmp247
	.word	.Ltmp257-.Ltmp247
	.byte	2
	.hword	358
	.byte	9
	.byte	7
	.word	.Ldebug_loc111
	.word	4407
	.byte	7
	.word	.Ldebug_loc110
	.word	4418
	.byte	8
	.word	.Ldebug_loc109
	.word	4429
	.byte	8
	.word	.Ldebug_loc120
	.word	4440
	.byte	8
	.word	.Ldebug_loc121
	.word	4451
	.byte	8
	.word	.Ldebug_loc122
	.word	4462
	.byte	8
	.word	.Ldebug_loc124
	.word	4473
	.byte	8
	.word	.Ldebug_loc125
	.word	4484
	.byte	37
	.word	4644
	.word	.Ldebug_ranges16
	.byte	2
	.byte	228
	.byte	7
	.byte	7
	.word	.Ldebug_loc123
	.word	4656
	.byte	7
	.word	.Ldebug_loc108
	.word	4667
	.byte	8
	.word	.Ldebug_loc118
	.word	4678
	.byte	8
	.word	.Ldebug_loc119
	.word	4689
	.byte	49
	.xword	.Ltmp249
	.word	.Ltmp251-.Ltmp249
	.byte	50
	.byte	50
	.word	4725
	.byte	40
	.byte	1
	.byte	90
	.word	4736
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.word	5181
	.xword	.Ltmp259
	.word	.Ltmp272-.Ltmp259
	.byte	2
	.hword	484
	.byte	15
	.byte	7
	.word	.Ldebug_loc135
	.word	5194
	.byte	7
	.word	.Ldebug_loc134
	.word	5206
	.byte	7
	.word	.Ldebug_loc133
	.word	5218
	.byte	8
	.word	.Ldebug_loc130
	.word	5230
	.byte	8
	.word	.Ldebug_loc131
	.word	5242
	.byte	8
	.word	.Ldebug_loc132
	.word	5254
	.byte	9
	.word	4395
	.xword	.Ltmp259
	.word	.Ltmp272-.Ltmp259
	.byte	2
	.hword	358
	.byte	9
	.byte	7
	.word	.Ldebug_loc129
	.word	4407
	.byte	7
	.word	.Ldebug_loc128
	.word	4418
	.byte	8
	.word	.Ldebug_loc127
	.word	4429
	.byte	8
	.word	.Ldebug_loc138
	.word	4440
	.byte	8
	.word	.Ldebug_loc139
	.word	4451
	.byte	8
	.word	.Ldebug_loc140
	.word	4462
	.byte	8
	.word	.Ldebug_loc142
	.word	4473
	.byte	8
	.word	.Ldebug_loc143
	.word	4484
	.byte	37
	.word	4644
	.word	.Ldebug_ranges17
	.byte	2
	.byte	228
	.byte	7
	.byte	7
	.word	.Ldebug_loc141
	.word	4656
	.byte	7
	.word	.Ldebug_loc126
	.word	4667
	.byte	8
	.word	.Ldebug_loc136
	.word	4678
	.byte	8
	.word	.Ldebug_loc137
	.word	4689
	.byte	49
	.xword	.Ltmp261
	.word	.Ltmp263-.Ltmp261
	.byte	50
	.byte	50
	.word	4725
	.byte	40
	.byte	1
	.byte	90
	.word	4736
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.word	5181
	.xword	.Ltmp272
	.word	.Ltmp285-.Ltmp272
	.byte	2
	.hword	490
	.byte	15
	.byte	7
	.word	.Ldebug_loc153
	.word	5194
	.byte	7
	.word	.Ldebug_loc152
	.word	5206
	.byte	7
	.word	.Ldebug_loc151
	.word	5218
	.byte	8
	.word	.Ldebug_loc148
	.word	5230
	.byte	8
	.word	.Ldebug_loc149
	.word	5242
	.byte	8
	.word	.Ldebug_loc150
	.word	5254
	.byte	9
	.word	4395
	.xword	.Ltmp272
	.word	.Ltmp285-.Ltmp272
	.byte	2
	.hword	358
	.byte	9
	.byte	7
	.word	.Ldebug_loc147
	.word	4407
	.byte	7
	.word	.Ldebug_loc146
	.word	4418
	.byte	8
	.word	.Ldebug_loc145
	.word	4429
	.byte	8
	.word	.Ldebug_loc156
	.word	4440
	.byte	8
	.word	.Ldebug_loc157
	.word	4451
	.byte	8
	.word	.Ldebug_loc158
	.word	4462
	.byte	8
	.word	.Ldebug_loc160
	.word	4473
	.byte	8
	.word	.Ldebug_loc161
	.word	4484
	.byte	37
	.word	4644
	.word	.Ldebug_ranges18
	.byte	2
	.byte	228
	.byte	7
	.byte	7
	.word	.Ldebug_loc159
	.word	4656
	.byte	7
	.word	.Ldebug_loc144
	.word	4667
	.byte	8
	.word	.Ldebug_loc154
	.word	4678
	.byte	8
	.word	.Ldebug_loc155
	.word	4689
	.byte	49
	.xword	.Ltmp274
	.word	.Ltmp276-.Ltmp274
	.byte	50
	.byte	50
	.word	4725
	.byte	40
	.byte	1
	.byte	90
	.word	4736
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.word	5181
	.xword	.Ltmp285
	.word	.Ltmp298-.Ltmp285
	.byte	2
	.hword	496
	.byte	15
	.byte	7
	.word	.Ldebug_loc171
	.word	5194
	.byte	7
	.word	.Ldebug_loc170
	.word	5206
	.byte	7
	.word	.Ldebug_loc169
	.word	5218
	.byte	8
	.word	.Ldebug_loc166
	.word	5230
	.byte	8
	.word	.Ldebug_loc167
	.word	5242
	.byte	8
	.word	.Ldebug_loc168
	.word	5254
	.byte	9
	.word	4395
	.xword	.Ltmp285
	.word	.Ltmp298-.Ltmp285
	.byte	2
	.hword	358
	.byte	9
	.byte	7
	.word	.Ldebug_loc165
	.word	4407
	.byte	7
	.word	.Ldebug_loc164
	.word	4418
	.byte	8
	.word	.Ldebug_loc163
	.word	4429
	.byte	8
	.word	.Ldebug_loc174
	.word	4440
	.byte	8
	.word	.Ldebug_loc175
	.word	4451
	.byte	8
	.word	.Ldebug_loc176
	.word	4462
	.byte	8
	.word	.Ldebug_loc178
	.word	4473
	.byte	8
	.word	.Ldebug_loc179
	.word	4484
	.byte	37
	.word	4644
	.word	.Ldebug_ranges19
	.byte	2
	.byte	228
	.byte	7
	.byte	7
	.word	.Ldebug_loc177
	.word	4656
	.byte	7
	.word	.Ldebug_loc162
	.word	4667
	.byte	8
	.word	.Ldebug_loc172
	.word	4678
	.byte	8
	.word	.Ldebug_loc173
	.word	4689
	.byte	49
	.xword	.Ltmp287
	.word	.Ltmp289-.Ltmp287
	.byte	50
	.byte	50
	.word	4725
	.byte	40
	.byte	1
	.byte	90
	.word	4736
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.word	5267
	.xword	.Ltmp298
	.word	.Ltmp310-.Ltmp298
	.byte	2
	.hword	520
	.byte	15
	.byte	7
	.word	.Ldebug_loc188
	.word	5280
	.byte	7
	.word	.Ldebug_loc187
	.word	5292
	.byte	8
	.word	.Ldebug_loc184
	.word	5304
	.byte	8
	.word	.Ldebug_loc185
	.word	5316
	.byte	8
	.word	.Ldebug_loc186
	.word	5328
	.byte	9
	.word	4395
	.xword	.Ltmp298
	.word	.Ltmp310-.Ltmp298
	.byte	2
	.hword	435
	.byte	9
	.byte	7
	.word	.Ldebug_loc183
	.word	4407
	.byte	7
	.word	.Ldebug_loc182
	.word	4418
	.byte	8
	.word	.Ldebug_loc181
	.word	4429
	.byte	8
	.word	.Ldebug_loc191
	.word	4440
	.byte	8
	.word	.Ldebug_loc192
	.word	4451
	.byte	8
	.word	.Ldebug_loc193
	.word	4462
	.byte	8
	.word	.Ldebug_loc195
	.word	4473
	.byte	8
	.word	.Ldebug_loc196
	.word	4484
	.byte	37
	.word	4644
	.word	.Ldebug_ranges20
	.byte	2
	.byte	228
	.byte	7
	.byte	7
	.word	.Ldebug_loc194
	.word	4656
	.byte	7
	.word	.Ldebug_loc180
	.word	4667
	.byte	8
	.word	.Ldebug_loc189
	.word	4678
	.byte	8
	.word	.Ldebug_loc190
	.word	4689
	.byte	49
	.xword	.Ltmp300
	.word	.Ltmp302-.Ltmp300
	.byte	50
	.byte	50
	.word	4725
	.byte	40
	.byte	1
	.byte	90
	.word	4736
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	11
	.word	1808
	.xword	.Ltmp222
	.byte	12
	.byte	1
	.byte	80
	.byte	2
	.byte	133
	.byte	0
	.byte	0
	.byte	11
	.word	1808
	.xword	.Ltmp324
	.byte	12
	.byte	1
	.byte	80
	.byte	2
	.byte	133
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.xword	.Lfunc_begin4
	.word	.Lfunc_end4-.Lfunc_begin4
	.byte	1
	.byte	111

	.word	.Linfo_string143
	.byte	2
	.hword	447

	.word	592
	.byte	53
	.byte	1
	.byte	80
	.word	.Linfo_string105
	.byte	2
	.hword	447
	.word	4582
	.byte	53
	.byte	1
	.byte	81
	.word	.Linfo_string88
	.byte	2
	.hword	447
	.word	1208
	.byte	53
	.byte	1
	.byte	82
	.word	.Linfo_string89
	.byte	2
	.hword	447
	.word	592
	.byte	5
	.word	.Ldebug_loc197
	.word	.Linfo_string81
	.byte	2
	.hword	449
	.word	592
	.byte	5
	.word	.Ldebug_loc198
	.word	.Linfo_string151
	.byte	2
	.hword	450
	.word	1118
	.byte	5
	.word	.Ldebug_loc199
	.word	.Linfo_string152
	.byte	2
	.hword	450
	.word	1118
	.byte	49
	.xword	.Ltmp330
	.word	.Ltmp370-.Ltmp330
	.byte	5
	.word	.Ldebug_loc200
	.word	.Linfo_string153
	.byte	2
	.hword	453
	.word	1178
	.byte	49
	.xword	.Ltmp336
	.word	.Ltmp368-.Ltmp336
	.byte	5
	.word	.Ldebug_loc201
	.word	.Linfo_string154
	.byte	2
	.hword	456
	.word	1213
	.byte	0
	.byte	0
	.byte	0
	.byte	54
	.word	.Linfo_string94
	.byte	1
	.byte	49

	.word	592


	.byte	30
	.word	.Linfo_string95
	.byte	2
	.byte	186

	.word	1157
	.byte	1
	.byte	31
	.word	.Linfo_string96
	.byte	2
	.byte	186
	.word	592
	.byte	31
	.word	.Linfo_string97
	.byte	2
	.byte	186
	.word	592
	.byte	32
	.word	.Linfo_string74
	.byte	2
	.byte	188
	.word	620
	.byte	32
	.word	.Linfo_string98
	.byte	2
	.byte	193
	.word	1183
	.byte	32
	.word	.Linfo_string99
	.byte	2
	.byte	192
	.word	585
	.byte	32
	.word	.Linfo_string100
	.byte	2
	.byte	191
	.word	585
	.byte	32
	.word	.Linfo_string101
	.byte	2
	.byte	189
	.word	1178
	.byte	32
	.word	.Linfo_string102
	.byte	2
	.byte	190
	.word	1140
	.byte	0
	.byte	42
	.word	.Linfo_string103
	.byte	2
	.hword	321

	.word	592
	.byte	1
	.byte	43
	.word	.Linfo_string104
	.byte	2
	.hword	321
	.word	4582
	.byte	43
	.word	.Linfo_string96
	.byte	2
	.hword	321
	.word	592
	.byte	44
	.word	.Linfo_string24
	.byte	2
	.hword	326
	.word	585
	.byte	44
	.word	.Linfo_string89
	.byte	2
	.hword	325
	.word	585
	.byte	44
	.word	.Linfo_string98
	.byte	2
	.hword	324
	.word	1157
	.byte	44
	.word	.Linfo_string107
	.byte	2
	.hword	323
	.word	4587
	.byte	0
	.byte	17
	.word	4587
	.byte	55
	.word	.Linfo_string106
	.byte	32
	.byte	1
	.byte	34
	.byte	19
	.word	.Linfo_string89
	.word	585
	.byte	1
	.byte	35
	.byte	0
	.byte	19
	.word	.Linfo_string105
	.word	1178
	.byte	1
	.byte	36
	.byte	8
	.byte	19
	.word	.Linfo_string88
	.word	4632
	.byte	1
	.byte	37
	.byte	16
	.byte	0
	.byte	21
	.word	1208
	.byte	22
	.word	918
	.byte	2
	.byte	0
	.byte	30
	.word	.Linfo_string108
	.byte	2
	.byte	168

	.word	592
	.byte	1
	.byte	31
	.word	.Linfo_string101
	.byte	2
	.byte	168
	.word	1140
	.byte	31
	.word	.Linfo_string96
	.byte	2
	.byte	168
	.word	592
	.byte	32
	.word	.Linfo_string81
	.byte	2
	.byte	171
	.word	592
	.byte	32
	.word	.Linfo_string109
	.byte	2
	.byte	170
	.word	592
	.byte	56
	.byte	32
	.word	.Linfo_string110
	.byte	2
	.byte	173
	.word	592
	.byte	32
	.word	.Linfo_string111
	.byte	2
	.byte	173
	.word	592
	.byte	0
	.byte	56
	.byte	32
	.word	.Linfo_string112
	.byte	2
	.byte	174
	.word	592
	.byte	32
	.word	.Linfo_string113
	.byte	2
	.byte	174
	.word	592
	.byte	0
	.byte	0
	.byte	42
	.word	.Linfo_string114
	.byte	4
	.hword	542

	.word	1183
	.byte	1
	.byte	43
	.word	.Linfo_string115
	.byte	4
	.hword	542
	.word	4801
	.byte	43
	.word	.Linfo_string120
	.byte	4
	.hword	542
	.word	1167
	.byte	56
	.byte	44
	.word	.Linfo_string121
	.byte	4
	.hword	546
	.word	585
	.byte	0
	.byte	0
	.byte	28
	.word	4812
	.word	.Linfo_string119
	.byte	7
	.byte	55
	.byte	28
	.word	4823
	.word	.Linfo_string118
	.byte	8
	.byte	72
	.byte	28
	.word	4834
	.word	.Linfo_string117
	.byte	8
	.byte	16
	.byte	15
	.word	.Linfo_string116
	.byte	7
	.byte	8
	.byte	42
	.word	.Linfo_string122
	.byte	4
	.hword	690

	.word	1183
	.byte	1
	.byte	43
	.word	.Linfo_string115
	.byte	4
	.hword	690
	.word	4801
	.byte	43
	.word	.Linfo_string120
	.byte	4
	.hword	690
	.word	1167
	.byte	0
	.byte	30
	.word	.Linfo_string123
	.byte	2
	.byte	240

	.word	1178
	.byte	1
	.byte	31
	.word	.Linfo_string98
	.byte	2
	.byte	240
	.word	1157
	.byte	31
	.word	.Linfo_string24
	.byte	2
	.byte	241
	.word	585
	.byte	32
	.word	.Linfo_string124
	.byte	2
	.byte	243
	.word	1145
	.byte	0
	.byte	30
	.word	.Linfo_string125
	.byte	2
	.byte	235

	.word	1150
	.byte	1
	.byte	31
	.word	.Linfo_string98
	.byte	2
	.byte	235
	.word	1157
	.byte	0
	.byte	30
	.word	.Linfo_string126
	.byte	2
	.byte	254

	.word	1178
	.byte	1
	.byte	31
	.word	.Linfo_string107
	.byte	2
	.byte	254
	.word	4582
	.byte	44
	.word	.Linfo_string127
	.byte	2
	.hword	260
	.word	592
	.byte	44
	.word	.Linfo_string128
	.byte	2
	.hword	259
	.word	592
	.byte	44
	.word	.Linfo_string129
	.byte	2
	.hword	258
	.word	592
	.byte	44
	.word	.Linfo_string130
	.byte	2
	.hword	257
	.word	592
	.byte	44
	.word	.Linfo_string131
	.byte	2
	.hword	257
	.word	592
	.byte	44
	.word	.Linfo_string86
	.byte	2
	.hword	257
	.word	592
	.byte	44
	.word	.Linfo_string81
	.byte	2
	.hword	257
	.word	592
	.byte	44
	.word	.Linfo_string132
	.byte	2
	.hword	256
	.word	1178
	.byte	44
	.word	.Linfo_string133
	.byte	2
	.hword	256
	.word	1178
	.byte	56
	.byte	44
	.word	.Linfo_string96
	.byte	2
	.hword	272
	.word	592
	.byte	44
	.word	.Linfo_string134
	.byte	2
	.hword	273
	.word	592
	.byte	0
	.byte	0
	.byte	42
	.word	.Linfo_string135
	.byte	2
	.hword	370

	.word	592
	.byte	1
	.byte	43
	.word	.Linfo_string104
	.byte	2
	.hword	370
	.word	4582
	.byte	43
	.word	.Linfo_string96
	.byte	2
	.hword	370
	.word	592
	.byte	44
	.word	.Linfo_string24
	.byte	2
	.hword	374
	.word	585
	.byte	44
	.word	.Linfo_string89
	.byte	2
	.hword	373
	.word	585
	.byte	44
	.word	.Linfo_string98
	.byte	2
	.hword	372
	.word	1157
	.byte	0
	.byte	42
	.word	.Linfo_string136
	.byte	2
	.hword	351

	.word	592
	.byte	1
	.byte	43
	.word	.Linfo_string104
	.byte	2
	.hword	351
	.word	4582
	.byte	43
	.word	.Linfo_string96
	.byte	2
	.hword	351
	.word	592
	.byte	43
	.word	.Linfo_string137
	.byte	2
	.hword	351
	.word	983
	.byte	44
	.word	.Linfo_string24
	.byte	2
	.hword	355
	.word	585
	.byte	44
	.word	.Linfo_string89
	.byte	2
	.hword	354
	.word	585
	.byte	44
	.word	.Linfo_string98
	.byte	2
	.hword	353
	.word	1157
	.byte	0
	.byte	42
	.word	.Linfo_string138
	.byte	2
	.hword	429

	.word	592
	.byte	1
	.byte	43
	.word	.Linfo_string104
	.byte	2
	.hword	429
	.word	4582
	.byte	43
	.word	.Linfo_string96
	.byte	2
	.hword	429
	.word	592
	.byte	44
	.word	.Linfo_string24
	.byte	2
	.hword	433
	.word	585
	.byte	44
	.word	.Linfo_string89
	.byte	2
	.hword	432
	.word	585
	.byte	44
	.word	.Linfo_string98
	.byte	2
	.hword	431
	.word	1157
	.byte	0
	.byte	0
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.xword	.Ltmp4-.Lfunc_begin0
	.xword	.Ltmp5-.Lfunc_begin0
	.xword	.Ltmp6-.Lfunc_begin0
	.xword	.Ltmp8-.Lfunc_begin0
	.xword	.Ltmp47-.Lfunc_begin0
	.xword	.Ltmp48-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges1:
	.xword	.Ltmp8-.Lfunc_begin0
	.xword	.Ltmp44-.Lfunc_begin0
	.xword	.Ltmp49-.Lfunc_begin0
	.xword	.Ltmp50-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges2:
	.xword	.Ltmp11-.Lfunc_begin0
	.xword	.Ltmp12-.Lfunc_begin0
	.xword	.Ltmp14-.Lfunc_begin0
	.xword	.Ltmp43-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges3:
	.xword	.Ltmp85-.Lfunc_begin0
	.xword	.Ltmp105-.Lfunc_begin0
	.xword	.Ltmp142-.Lfunc_begin0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges4:
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp223-.Lfunc_begin0
	.xword	.Ltmp323-.Lfunc_begin0
	.xword	.Ltmp326-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges5:
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp170-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges6:
	.xword	.Ltmp158-.Lfunc_begin0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp162-.Lfunc_begin0
	.xword	.Ltmp167-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges7:
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp170-.Lfunc_begin0
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp179-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges8:
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp170-.Lfunc_begin0
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges9:
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp170-.Lfunc_begin0
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges10:
	.xword	.Ltmp179-.Lfunc_begin0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp187-.Lfunc_begin0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges11:
	.xword	.Ltmp180-.Lfunc_begin0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp182-.Lfunc_begin0
	.xword	.Ltmp183-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges12:
	.xword	.Ltmp180-.Lfunc_begin0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp182-.Lfunc_begin0
	.xword	.Ltmp183-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges13:
	.xword	.Ltmp191-.Lfunc_begin0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp198-.Lfunc_begin0
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges14:
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp234-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges15:
	.xword	.Ltmp238-.Lfunc_begin0
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp242-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges16:
	.xword	.Ltmp248-.Lfunc_begin0
	.xword	.Ltmp251-.Lfunc_begin0
	.xword	.Ltmp252-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges17:
	.xword	.Ltmp260-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp269-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges18:
	.xword	.Ltmp273-.Lfunc_begin0
	.xword	.Ltmp276-.Lfunc_begin0
	.xword	.Ltmp277-.Lfunc_begin0
	.xword	.Ltmp282-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges19:
	.xword	.Ltmp286-.Lfunc_begin0
	.xword	.Ltmp289-.Lfunc_begin0
	.xword	.Ltmp290-.Lfunc_begin0
	.xword	.Ltmp295-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges20:
	.xword	.Ltmp299-.Lfunc_begin0
	.xword	.Ltmp302-.Lfunc_begin0
	.xword	.Ltmp303-.Lfunc_begin0
	.xword	.Ltmp308-.Lfunc_begin0
	.xword	0
	.xword	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Android (8508608, based on r450784e) clang version 14.0.7 (https://android.googlesource.com/toolchain/llvm-project 4c603efb0cca074e9238af8b4106c30add4418f6)"
.Linfo_string1:
	.asciz	"drivers/gpu/drm/rockchip/ebc-dev/epdlut/rkf_waveform.c"
.Linfo_string2:
	.asciz	"/home/lyx/rk-android14/kernel-6.1"
.Linfo_string3:
	.asciz	"stype"
.Linfo_string4:
	.asciz	"unsigned int"
.Linfo_string5:
	.asciz	"WF_TYPE_RESET"
.Linfo_string6:
	.asciz	"WF_TYPE_GRAY2"
.Linfo_string7:
	.asciz	"WF_TYPE_GRAY4"
.Linfo_string8:
	.asciz	"WF_TYPE_GC16"
.Linfo_string9:
	.asciz	"WF_TYPE_GL16"
.Linfo_string10:
	.asciz	"WF_TYPE_GLR16"
.Linfo_string11:
	.asciz	"WF_TYPE_GLD16"
.Linfo_string12:
	.asciz	"WF_TYPE_A2"
.Linfo_string13:
	.asciz	"WF_TYPE_GCC16"
.Linfo_string14:
	.asciz	"PVI_WF_MAX"
.Linfo_string15:
	.asciz	"WF_TYPE_AUTO"
.Linfo_string16:
	.asciz	"WF_TYPE_RK_GLR16"
.Linfo_string17:
	.asciz	"WF_TYPE_RK_GLD16"
.Linfo_string18:
	.asciz	"WF_TYPE_MAX"
.Linfo_string19:
	.asciz	"WF_TYPE_GRAY16"
.Linfo_string20:
	.asciz	"epd_lut_type"
.Linfo_string21:
	.asciz	"sftemp"
.Linfo_string22:
	.asciz	"int"
.Linfo_string23:
	.asciz	"global_waveform"
.Linfo_string24:
	.asciz	"length"
.Linfo_string25:
	.asciz	"format"
.Linfo_string26:
	.asciz	"char"
.Linfo_string27:
	.asciz	"__ARRAY_SIZE_TYPE__"
.Linfo_string28:
	.asciz	"version"
.Linfo_string29:
	.asciz	"timeandday"
.Linfo_string30:
	.asciz	"panel_name"
.Linfo_string31:
	.asciz	"panel_info"
.Linfo_string32:
	.asciz	"full_version"
.Linfo_string33:
	.asciz	"reset_temp_list"
.Linfo_string34:
	.asciz	"gc16_temp_list"
.Linfo_string35:
	.asciz	"gl16_temp_list"
.Linfo_string36:
	.asciz	"glr16_temp_list"
.Linfo_string37:
	.asciz	"gld16_temp_list"
.Linfo_string38:
	.asciz	"du_temp_list"
.Linfo_string39:
	.asciz	"a2_temp_list"
.Linfo_string40:
	.asciz	"reset_list"
.Linfo_string41:
	.asciz	"gc16_list"
.Linfo_string42:
	.asciz	"gl16_list"
.Linfo_string43:
	.asciz	"glr16_list"
.Linfo_string44:
	.asciz	"gld16_list"
.Linfo_string45:
	.asciz	"du_list"
.Linfo_string46:
	.asciz	"a2_list"
.Linfo_string47:
	.asciz	"rkf_waveform"
.Linfo_string48:
	.asciz	"crc32_table"
.Linfo_string49:
	.asciz	"RKF_WF_RESET"
.Linfo_string50:
	.asciz	"RKF_WF_DU"
.Linfo_string51:
	.asciz	"RKF_WF_GC16"
.Linfo_string52:
	.asciz	"RKF_WF_GL16"
.Linfo_string53:
	.asciz	"RKF_WF_GLR16"
.Linfo_string54:
	.asciz	"RKF_WF_GLD16"
.Linfo_string55:
	.asciz	"RKF_WF_A2"
.Linfo_string56:
	.asciz	"rkf_waveform_type"
.Linfo_string57:
	.asciz	"false"
.Linfo_string58:
	.asciz	"true"
.Linfo_string59:
	.asciz	"KMALLOC_NORMAL"
.Linfo_string60:
	.asciz	"KMALLOC_DMA"
.Linfo_string61:
	.asciz	"KMALLOC_CGROUP"
.Linfo_string62:
	.asciz	"KMALLOC_RECLAIM"
.Linfo_string63:
	.asciz	"NR_KMALLOC_TYPES"
.Linfo_string64:
	.asciz	"kmalloc_cache_type"
.Linfo_string65:
	.asciz	"__u32"
.Linfo_string66:
	.asciz	"u32"
.Linfo_string67:
	.asciz	"unsigned char"
.Linfo_string68:
	.asciz	"gfp_t"
.Linfo_string69:
	.asciz	"check_wf_format"
.Linfo_string70:
	.asciz	"buf"
.Linfo_string71:
	.asciz	"__u8"
.Linfo_string72:
	.asciz	"u8"
.Linfo_string73:
	.asciz	"check_wf_crc"
.Linfo_string74:
	.asciz	"waveform"
.Linfo_string75:
	.asciz	"crccheck"
.Linfo_string76:
	.asciz	"readcrc"
.Linfo_string77:
	.asciz	"crc_32"
.Linfo_string78:
	.asciz	"a_data"
.Linfo_string79:
	.asciz	"a_size"
.Linfo_string80:
	.asciz	"n_accum"
.Linfo_string81:
	.asciz	"i"
.Linfo_string82:
	.asciz	"crc_build_table32"
.Linfo_string83:
	.asciz	"a_poly"
.Linfo_string84:
	.asciz	"crc_table"
.Linfo_string85:
	.asciz	"n_data"
.Linfo_string86:
	.asciz	"j"
.Linfo_string87:
	.asciz	"rkf_wf_a2_repair"
.Linfo_string88:
	.asciz	"wf_table"
.Linfo_string89:
	.asciz	"frame_num"
.Linfo_string90:
	.asciz	"table"
.Linfo_string91:
	.asciz	"f"
.Linfo_string92:
	.asciz	"rkf_wf_gray2_repair"
.Linfo_string93:
	.asciz	"kfree"
.Linfo_string94:
	.asciz	"epd_overlay_lut"
.Linfo_string95:
	.asciz	"get_wf_buf"
.Linfo_string96:
	.asciz	"temp"
.Linfo_string97:
	.asciz	"mode"
.Linfo_string98:
	.asciz	"pbuf"
.Linfo_string99:
	.asciz	"pt"
.Linfo_string100:
	.asciz	"wf_offset"
.Linfo_string101:
	.asciz	"list"
.Linfo_string102:
	.asciz	"templist"
.Linfo_string103:
	.asciz	"parse_wf_reset"
.Linfo_string104:
	.asciz	"output"
.Linfo_string105:
	.asciz	"data"
.Linfo_string106:
	.asciz	"epd_lut_data"
.Linfo_string107:
	.asciz	"input"
.Linfo_string108:
	.asciz	"get_wf_level"
.Linfo_string109:
	.asciz	"level"
.Linfo_string110:
	.asciz	"__UNIQUE_ID___x347"
.Linfo_string111:
	.asciz	"__UNIQUE_ID___y348"
.Linfo_string112:
	.asciz	"__UNIQUE_ID___y350"
.Linfo_string113:
	.asciz	"__UNIQUE_ID___x349"
.Linfo_string114:
	.asciz	"kmalloc"
.Linfo_string115:
	.asciz	"size"
.Linfo_string116:
	.asciz	"unsigned long"
.Linfo_string117:
	.asciz	"__kernel_ulong_t"
.Linfo_string118:
	.asciz	"__kernel_size_t"
.Linfo_string119:
	.asciz	"size_t"
.Linfo_string120:
	.asciz	"flags"
.Linfo_string121:
	.asciz	"index"
.Linfo_string122:
	.asciz	"kzalloc"
.Linfo_string123:
	.asciz	"decode_wf_data"
.Linfo_string124:
	.asciz	"out"
.Linfo_string125:
	.asciz	"get_wf_frm_num"
.Linfo_string126:
	.asciz	"decode_wf_reset"
.Linfo_string127:
	.asciz	"len"
.Linfo_string128:
	.asciz	"num"
.Linfo_string129:
	.asciz	"temp_data"
.Linfo_string130:
	.asciz	"h"
.Linfo_string131:
	.asciz	"k"
.Linfo_string132:
	.asciz	"odata"
.Linfo_string133:
	.asciz	"idata"
.Linfo_string134:
	.asciz	"temp1"
.Linfo_string135:
	.asciz	"parse_wf_gray2"
.Linfo_string136:
	.asciz	"parse_wf_gray16"
.Linfo_string137:
	.asciz	"lut_type"
.Linfo_string138:
	.asciz	"parse_wf_a2"
.Linfo_string139:
	.asciz	"rkf_wf_input"
.Linfo_string140:
	.asciz	"rkf_wf_get_version"
.Linfo_string141:
	.asciz	"rkf_wf_get_lut"
.Linfo_string142:
	.asciz	"parse_wf_data"
.Linfo_string143:
	.asciz	"rkf_lut_init_wf_table"
.Linfo_string144:
	.asciz	"waveform_file"
.Linfo_string145:
	.asciz	"wf"
.Linfo_string146:
	.asciz	"ret"
.Linfo_string147:
	.asciz	"temperture"
.Linfo_string148:
	.asciz	"pic"
.Linfo_string149:
	.asciz	"regal_pix"
.Linfo_string150:
	.asciz	"overlay_lut"
.Linfo_string151:
	.asciz	"old_gray"
.Linfo_string152:
	.asciz	"new_gray"
.Linfo_string153:
	.asciz	"lut_data"
.Linfo_string154:
	.asciz	"pix0"
	.ident	"Android (8508608, based on r450784e) clang version 14.0.7 (https://android.googlesource.com/toolchain/llvm-project 4c603efb0cca074e9238af8b4106c30add4418f6)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:
