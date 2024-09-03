// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020 Rockchip Electronics Co. Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.text
	.file	"pvi_waveform.c"
	.file	1 "/home/lyx/rk-android14/kernel-6.1" "./include/uapi/asm-generic/int-ll64.h"
	.file	2 "/home/lyx/rk-android14/kernel-6.1" "./include/asm-generic/int-ll64.h"
	.file	3 "/home/lyx/rk-android14/kernel-6.1" "drivers/gpu/drm/rockchip/ebc-dev/epdlut/pvi_waveform.c"
	.file	4 "/home/lyx/rk-android14/kernel-6.1" "drivers/gpu/drm/rockchip/ebc-dev/epdlut/epd_lut.h"
	.file	5 "/home/lyx/rk-android14/kernel-6.1" "./include/linux/stddef.h"
	.globl	pvi_wf_get_lut
	.p2align	2
	.type	pvi_wf_get_lut,@function
pvi_wf_get_lut:
.Lfunc_begin0:
	.loc	3 366 0
	.cfi_sections .debug_frame
	.cfi_startproc
	str	x30, [x18], #8
	.cfi_escape 0x16, 0x12, 0x02, 0x82, 0x78
	stp	x29, x30, [sp, #-96]!
	str	x27, [sp, #16]
	mov	x29, sp
	stp	x26, x25, [sp, #32]
	stp	x24, x23, [sp, #48]
	stp	x22, x21, [sp, #64]
	stp	x20, x19, [sp, #80]
	.cfi_def_cfa w29, 96
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w27, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
.Ltmp0:
	.loc	3 374 7 prologue_end
	adrp	x25, global_waveform
	ldr	x8, [x25, :lo12:global_waveform]
.Ltmp1:
	.loc	3 374 6 is_stmt 0
	cbz	x8, .LBB0_10
.Ltmp2:
	.loc	3 0 6
	mov	w22, w4
.Ltmp3:
	mov	w19, w2
.Ltmp4:
	mov	w21, w1
.Ltmp5:
	mov	x20, x0
.Ltmp6:
	.loc	3 377 14 is_stmt 1
	cbnz	x0, .LBB0_3
.Ltmp7:
	.loc	3 0 14 is_stmt 0
	mov	w9, #16
	.loc	3 377 18
	ldr	x9, [x9]
.Ltmp8:
	.loc	3 377 6
	cbz	x9, .LBB0_11
.Ltmp9:
.LBB0_3:
	.loc	3 382 28 is_stmt 1
	adrp	x24, pvi_wf_get_lut.sftemp
	.loc	3 382 19 is_stmt 0
	mov	w9, #21846
	movk	w9, #21845, lsl #16
	adrp	x27, pvi_wf_get_lut.stype
	.loc	3 382 28
	ldrsw	x10, [x24, :lo12:pvi_wf_get_lut.sftemp]
	.loc	3 382 19
	smull	x11, w19, w9
	ldr	w13, [x27, :lo12:pvi_wf_get_lut.stype]
	.loc	3 382 35
	mul	x9, x10, x9
	.loc	3 382 19
	lsr	x10, x11, #63
	lsr	x11, x11, #32
	.loc	3 382 35
	lsr	x12, x9, #63
	lsr	x9, x9, #32
	.loc	3 382 19
	add	w26, w11, w10
	.loc	3 382 35
	add	w10, w9, w12
	.loc	3 382 41
	cmp	w26, w10
	ccmp	w13, w21, #0, eq
	b.eq	.LBB0_69
.Ltmp10:
	.loc	3 385 11 is_stmt 1
	adrp	x11, need_pic
	.loc	3 387 6
	subs	w9, w21, #10
	.loc	3 385 11
	str	w3, [x11, :lo12:need_pic]
	.loc	3 387 6
	b.eq	.LBB0_68
.Ltmp11:
	.loc	3 389 18
	ldr	x11, [x20, #16]
	.loc	3 389 16 is_stmt 0
	adrp	x12, waveformdata
.Ltmp12:
	.loc	3 200 34 is_stmt 1
	ldrb	w10, [x8, #38]
.Ltmp13:
	.loc	3 389 16
	str	x11, [x12, :lo12:waveformdata]
.Ltmp14:
	.loc	3 204 2
	cbz	w10, .LBB0_12
.Ltmp15:
	.loc	3 0 2 is_stmt 0
	mov	x11, xzr
	.loc	3 204 2
	add	x12, x8, #48
.Ltmp16:
.LBB0_7:
	.loc	3 205 21 is_stmt 1
	ldrb	w13, [x12, x11]
.Ltmp17:
	.loc	3 205 7 is_stmt 0
	cmp	w13, w19
	b.ge	.LBB0_13
.Ltmp18:
	.loc	3 204 29 is_stmt 1
	add	x11, x11, #1
.Ltmp19:
	.loc	3 204 2 is_stmt 0
	cmp	x10, x11
	b.ne	.LBB0_7
.Ltmp20:
	.loc	3 0 2
	mov	w12, #-1
	mov	w11, w10
.Ltmp21:
	b	.LBB0_14
.Ltmp22:
.LBB0_10:
	mov	w0, #-19
.Ltmp23:
	b	.LBB0_95
.Ltmp24:
.LBB0_11:
	mov	w0, #-22
	b	.LBB0_95
.Ltmp25:
.LBB0_12:
	mov	w11, wzr
	mov	w12, #-1
	b	.LBB0_14
.Ltmp26:
.LBB0_13:
	mov	w12, w11
.Ltmp27:
.LBB0_14:
	sub	w13, w11, #1
	.loc	3 211 6 is_stmt 1
	cmp	w11, w10
	csel	w23, w13, w12, eq
.Ltmp28:
	.loc	3 181 6
	cmp	w21, #13
	b.hs	.LBB0_53
.Ltmp29:
	.loc	3 184 13
	cmp	w9, #3
	b.hs	.LBB0_17
.Ltmp30:
	adrp	x10, .Lswitch.table.pvi_wf_get_lut.7
	add	x10, x10, :lo12:.Lswitch.table.pvi_wf_get_lut.7
	ldr	x9, [x10, w9, sxtw #3]
	b	.LBB0_18
.Ltmp31:
.LBB0_17:
	.loc	3 0 13 is_stmt 0
	mov	w9, w21
.Ltmp32:
.LBB0_18:
	.loc	3 161 20 is_stmt 1
	ldrb	w10, [x8, #16]
	.loc	3 161 2 is_stmt 0
	sub	w8, w10, #9
.Ltmp33:
	cmp	w8, #75
	b.hi	.LBB0_21
.Ltmp34:
	.loc	3 0 2
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
	adr	x11, .LBB0_20
	ldrb	w12, [x10, x8]
	add	x11, x11, x12, lsl #2
	adrp	x8, pvi_mode_table
	add	x8, x8, :lo12:pvi_mode_table
	br	x11
.Ltmp35:
.LBB0_20:
	adrp	x8, pvi_mode_table+30
	add	x8, x8, :lo12:pvi_mode_table+30
.Ltmp36:
	b	.LBB0_29
.Ltmp37:
.LBB0_21:
	.loc	3 161 2
	cmp	w10, #114
	b.ne	.LBB0_23
.Ltmp38:
	.loc	3 0 2
	adrp	x8, pvi_mode_table+70
	add	x8, x8, :lo12:pvi_mode_table+70
	b	.LBB0_29
.Ltmp39:
.LBB0_23:
	adrp	x8, pvi_mode_table+80
	add	x8, x8, :lo12:pvi_mode_table+80
	b	.LBB0_29
.Ltmp40:
.LBB0_24:
	adrp	x8, pvi_mode_table+10
	add	x8, x8, :lo12:pvi_mode_table+10
	b	.LBB0_29
.Ltmp41:
.LBB0_25:
	adrp	x8, pvi_mode_table+20
	add	x8, x8, :lo12:pvi_mode_table+20
	b	.LBB0_29
.Ltmp42:
.LBB0_26:
	adrp	x8, pvi_mode_table+40
	add	x8, x8, :lo12:pvi_mode_table+40
	b	.LBB0_29
.Ltmp43:
.LBB0_27:
	adrp	x8, pvi_mode_table+50
	add	x8, x8, :lo12:pvi_mode_table+50
	b	.LBB0_29
.Ltmp44:
.LBB0_28:
	adrp	x8, pvi_mode_table+60
	add	x8, x8, :lo12:pvi_mode_table+60
.Ltmp45:
.LBB0_29:
	.loc	3 195 9 is_stmt 1
	ldrb	w0, [x8, x9]
.Ltmp46:
.LBB0_30:
	.loc	3 392 15
	mov	w1, w23
	bl	get_wf_frm_num
.Ltmp47:
	.loc	3 393 7
	tbnz	w0, #31, .LBB0_96
.Ltmp48:
	.loc	3 398 7
	cmp	w21, #1
	b.eq	.LBB0_39
.Ltmp49:
	cmp	w21, #7
	b.ne	.LBB0_43
.Ltmp50:
	.loc	3 399 21
	ldr	x8, [x20, #16]
.Ltmp51:
	.loc	3 246 2
	cbz	w0, .LBB0_66
.Ltmp52:
	.loc	3 246 16 is_stmt 0
	mov	w10, w0
	mov	x9, xzr
.Ltmp53:
	.loc	3 246 2
	lsl	x10, x10, #10
.Ltmp54:
.LBB0_35:
	.loc	3 247 20 is_stmt 1
	add	x11, x8, w9, sxtw
.Ltmp55:
	.loc	3 246 16
	add	x9, x9, #1024
.Ltmp56:
	.loc	3 246 2 is_stmt 0
	cmp	x10, x9
.Ltmp57:
	.loc	3 248 38 is_stmt 1
	ldrb	w12, [x11, #960]
	.loc	3 251 38
	ldrb	w13, [x11, #30]
	.loc	3 248 36
	strb	w12, [x11, #992]
	.loc	3 249 36
	strb	w12, [x11, #928]
	.loc	3 250 36
	strb	w12, [x11, #864]
	.loc	3 251 36
	strb	w13, [x11, #62]
.Ltmp58:
	.loc	3 246 2
	b.ne	.LBB0_35
.Ltmp59:
	.loc	3 0 2 is_stmt 0
	sub	w10, w0, #1
.Ltmp60:
	.loc	3 254 2 is_stmt 1
	cmp	w10, #2
	b.lt	.LBB0_66
.Ltmp61:
	sub	x12, x10, #1
	mov	w9, #1
	cmp	x12, #2
	b.hs	.LBB0_54
.Ltmp62:
	.loc	3 0 2 is_stmt 0
	mov	w11, #1
	b	.LBB0_64
.Ltmp63:
.LBB0_39:
	.loc	3 401 24 is_stmt 1
	ldr	x9, [x20, #16]
	mov	w8, #4128
.Ltmp64:
	.loc	3 0 0 is_stmt 0
	add	x8, x9, x8
.Ltmp65:
	.loc	3 284 2 is_stmt 1
	cbz	w0, .LBB0_42
.Ltmp66:
	.loc	3 284 16 is_stmt 0
	mov	w11, w0
	mov	x10, xzr
.Ltmp67:
	.loc	3 284 2
	lsl	x11, x11, #10
.Ltmp68:
.LBB0_41:
	.loc	3 285 20 is_stmt 1
	add	x12, x9, w10, sxtw
.Ltmp69:
	.loc	3 284 16
	add	x10, x10, #1024
.Ltmp70:
	.loc	3 284 2 is_stmt 0
	cmp	x11, x10
.Ltmp71:
	.loc	3 286 38 is_stmt 1
	ldrb	w13, [x12, #960]
	.loc	3 289 38
	ldrb	w14, [x12, #30]
	.loc	3 286 36
	strb	w13, [x12, #992]
	.loc	3 287 36
	strb	w13, [x12, #928]
	.loc	3 288 36
	strb	w13, [x12, #864]
	.loc	3 289 36
	strb	w14, [x12, #62]
.Ltmp72:
	.loc	3 284 2
	b.ne	.LBB0_41
.Ltmp73:
.LBB0_42:
	.loc	3 0 2 is_stmt 0
	mov	w10, #2
	mov	w11, #1
	.loc	3 304 35 is_stmt 1
	strb	w10, [x9, #4094]
	.loc	3 305 35
	strb	w11, [x9, #3104]
.Ltmp74:
	.loc	3 308 35
	strb	w11, [x8, #862]
	.loc	3 309 35
	strb	w10, [x8, #990]
	.loc	3 310 35
	strb	w11, [x8]
	.loc	3 311 35
	strb	w10, [x8, #926]
.Ltmp75:
	.loc	3 314 35
	strb	w10, [x8, #1886]
	.loc	3 315 35
	strb	w10, [x8, #2014]
	.loc	3 316 35
	strb	w11, [x8, #1024]
	.loc	3 317 35
	strb	w10, [x8, #1950]
.Ltmp76:
	.loc	3 320 35
	strb	w10, [x8, #2910]
	.loc	3 321 35
	strb	w10, [x8, #3038]
	.loc	3 322 35
	strb	w11, [x8, #2048]
	b	.LBB0_67
.Ltmp77:
.LBB0_43:
	.loc	3 402 38
	sub	w8, w21, #5
	cmp	w8, #1
	b.hi	.LBB0_49
.Ltmp78:
	.loc	3 332 2
	cbz	w0, .LBB0_67
.Ltmp79:
	.loc	3 0 0 is_stmt 0
	ldr	x8, [x20, #16]
.Ltmp80:
	.loc	3 332 16
	mov	w9, w0
.Ltmp81:
	.loc	3 332 2
	cmp	w0, #1
	b.ne	.LBB0_98
.Ltmp82:
	.loc	3 0 2
	mov	x10, xzr
.Ltmp83:
.LBB0_47:
	.loc	3 332 2
	sub	x9, x9, x10
	lsl	w10, w10, #10
.Ltmp84:
.LBB0_48:
	.loc	3 333 20 is_stmt 1
	add	x11, x8, w10, sxtw
.Ltmp85:
	.loc	3 332 16
	subs	x9, x9, #1
	add	w10, w10, #1024
.Ltmp86:
	.loc	3 335 38
	ldrb	w12, [x11, #30]
	.loc	3 335 36 is_stmt 0
	strb	w12, [x11, #31]
	.loc	3 336 36 is_stmt 1
	strb	w12, [x11, #29]
.Ltmp87:
	.loc	3 332 2
	b.ne	.LBB0_48
	b	.LBB0_67
.Ltmp88:
.LBB0_49:
	.loc	3 404 41
	sub	w8, w21, #11
	cmp	w8, #1
	b.hi	.LBB0_67
.Ltmp89:
	.loc	3 347 2
	cbz	w0, .LBB0_67
.Ltmp90:
	.loc	3 0 0 is_stmt 0
	ldr	x8, [x20, #16]
.Ltmp91:
	.loc	3 347 16
	mov	w9, w0
.Ltmp92:
	.loc	3 347 2
	cmp	w0, #1
	b.ne	.LBB0_110
.Ltmp93:
	.loc	3 0 2
	mov	x10, xzr
	b	.LBB0_134
.Ltmp94:
.LBB0_53:
	.loc	3 182 3 is_stmt 1
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	_printk
.Ltmp95:
	.loc	3 0 3 is_stmt 0
	mov	w0, #255
	b	.LBB0_30
.Ltmp96:
.LBB0_54:
	.loc	3 254 2 is_stmt 1
	sub	x14, x10, #2
	mov	w17, #64511
	and	x11, x14, #0xffffffff
.Ltmp97:
	.loc	3 0 2 is_stmt 0
	movk	w17, #32767, lsl #16
	.loc	3 254 2
	lsl	x16, x11, #10
	mov	w11, #1
	tst	x16, #0xffffffff00000000
	cset	w15, ne
	cmp	xzr, x14, lsr #54
	cset	w13, ne
	cmp	w16, w17
	b.hi	.LBB0_64
.Ltmp98:
	.loc	3 0 2
	tbnz	w15, #0, .LBB0_64
.Ltmp99:
	lsr	x15, x14, #32
	cbnz	x15, .LBB0_64
.Ltmp100:
	add	x15, x8, #2046
	lsl	x14, x14, #10
	add	x16, x15, x14
	cmp	x16, x15
	b.lo	.LBB0_64
.Ltmp101:
	tbnz	w13, #0, .LBB0_64
.Ltmp102:
	add	x15, x8, #1056
	add	x14, x15, x14
	cmp	x14, x15
	b.lo	.LBB0_64
.Ltmp103:
	tbnz	w13, #0, .LBB0_64
.Ltmp104:
	.loc	3 254 2
	and	x13, x12, #0xfffffffffffffffe
	orr	x11, x12, #0x1
	mov	w14, #2048
	mov	w15, #2
	mov	w16, #1
	mov	x17, x13
.Ltmp105:
.LBB0_62:
	.loc	3 255 25 is_stmt 1
	sub	w1, w14, #1024
	.loc	3 255 20 is_stmt 0
	add	x2, x8, w14, sxtw
	add	w14, w14, #2048
	subs	x17, x17, #2
	add	x1, x8, w1, sxtw
	.loc	3 256 36 is_stmt 1
	strb	w15, [x2, #1022]
	.loc	3 257 36
	strb	w16, [x2, #32]
	.loc	3 256 36
	strb	w15, [x1, #1022]
	.loc	3 257 36
	strb	w16, [x1, #32]
	b.ne	.LBB0_62
.Ltmp106:
	.loc	3 254 2
	cmp	x12, x13
	b.eq	.LBB0_66
.Ltmp107:
.LBB0_64:
	sub	x10, x10, x11
	lsl	w11, w11, #10
	mov	w12, #2
.Ltmp108:
.LBB0_65:
	.loc	3 255 20
	add	x13, x8, w11, sxtw
.Ltmp109:
	.loc	3 254 16
	subs	x10, x10, #1
	add	w11, w11, #1024
.Ltmp110:
	.loc	3 256 36
	strb	w12, [x13, #1022]
	.loc	3 257 36
	strb	w9, [x13, #32]
.Ltmp111:
	.loc	3 254 2
	b.ne	.LBB0_65
.Ltmp112:
.LBB0_66:
	.loc	3 0 2 is_stmt 0
	mov	w9, #1
	mov	w10, #2
	.loc	3 266 35 is_stmt 1
	strb	w9, [x8, #1918]
	.loc	3 267 35
	strb	w10, [x8, #1982]
.Ltmp113:
	.loc	3 270 35
	strb	w10, [x8, #2942]
	.loc	3 271 35
	strb	w10, [x8, #3006]
.Ltmp114:
	.loc	3 274 35
	strb	w10, [x8, #3966]
.Ltmp115:
.LBB0_67:
	.loc	3 407 21
	ldrb	w8, [x20, #1]
	mov	w9, #21846
	movk	w9, #21845, lsl #16
	.loc	3 408 21
	orr	w8, w0, w8, lsl #8
	str	w8, [x20]
.Ltmp116:
	.loc	3 412 27
	ldrsw	x8, [x24, :lo12:pvi_wf_get_lut.sftemp]
.Ltmp117:
	.loc	3 409 9
	str	w21, [x27, :lo12:pvi_wf_get_lut.stype]
.Ltmp118:
	.loc	3 412 34
	mul	x8, x8, x9
	lsr	x9, x8, #63
	lsr	x8, x8, #32
	add	w10, w8, w9
.Ltmp119:
.LBB0_68:
	.loc	3 412 6 is_stmt 0
	cmp	w26, w10
	b.ne	.LBB0_70
.Ltmp120:
.LBB0_69:
	.loc	3 0 6
	mov	w0, wzr
	b	.LBB0_95
.Ltmp121:
.LBB0_70:
	.loc	3 414 18 is_stmt 1
	ldr	x8, [x20, #24]
	.loc	3 414 16 is_stmt 0
	adrp	x9, waveformdata
	str	x8, [x9, :lo12:waveformdata]
	.loc	3 415 17 is_stmt 1
	bl	epd_overlay_lut
.Ltmp122:
	.loc	3 200 17
	ldr	x8, [x25, :lo12:global_waveform]
	.loc	3 200 34 is_stmt 0
	ldrb	w9, [x8, #38]
.Ltmp123:
	.loc	3 204 2 is_stmt 1
	cbz	w9, .LBB0_75
.Ltmp124:
	.loc	3 0 2 is_stmt 0
	mov	x10, xzr
	.loc	3 204 2
	add	x11, x8, #48
.Ltmp125:
.LBB0_72:
	.loc	3 205 21 is_stmt 1
	ldrb	w12, [x11, x10]
.Ltmp126:
	.loc	3 205 7 is_stmt 0
	cmp	w12, w19
	b.ge	.LBB0_76
.Ltmp127:
	.loc	3 204 29 is_stmt 1
	add	x10, x10, #1
.Ltmp128:
	.loc	3 204 2 is_stmt 0
	cmp	x9, x10
	b.ne	.LBB0_72
.Ltmp129:
	.loc	3 0 2
	mov	w11, #-1
	mov	w10, w9
.Ltmp130:
	b	.LBB0_77
.Ltmp131:
.LBB0_75:
	mov	w10, wzr
	mov	w11, #-1
	b	.LBB0_77
.Ltmp132:
.LBB0_76:
	mov	w11, w10
.Ltmp133:
.LBB0_77:
	sub	w12, w10, #1
	.loc	3 211 6 is_stmt 1
	cmp	w10, w9
	csel	w21, w12, w11, eq
.Ltmp134:
	.loc	3 181 6
	cmp	w0, #13
	b.hs	.LBB0_97
.Ltmp135:
	.loc	3 184 13
	sub	w9, w0, #10
	cmp	w9, #3
	b.hs	.LBB0_80
.Ltmp136:
	adrp	x10, .Lswitch.table.pvi_wf_get_lut.7
	add	x10, x10, :lo12:.Lswitch.table.pvi_wf_get_lut.7
	ldr	x9, [x10, w9, sxtw #3]
	b	.LBB0_81
.Ltmp137:
.LBB0_80:
	.loc	3 0 13 is_stmt 0
	mov	w9, w0
.Ltmp138:
.LBB0_81:
	.loc	3 161 20 is_stmt 1
	ldrb	w10, [x8, #16]
	.loc	3 161 2 is_stmt 0
	sub	w8, w10, #9
.Ltmp139:
	cmp	w8, #75
	b.hi	.LBB0_84
.Ltmp140:
	.loc	3 0 2
	adrp	x10, .LJTI0_1
	add	x10, x10, :lo12:.LJTI0_1
	adr	x11, .LBB0_83
	ldrb	w12, [x10, x8]
	add	x11, x11, x12, lsl #2
	adrp	x8, pvi_mode_table
	add	x8, x8, :lo12:pvi_mode_table
	br	x11
.Ltmp141:
.LBB0_83:
	adrp	x8, pvi_mode_table+30
	add	x8, x8, :lo12:pvi_mode_table+30
.Ltmp142:
	b	.LBB0_92
.Ltmp143:
.LBB0_84:
	.loc	3 161 2
	cmp	w10, #114
	b.ne	.LBB0_86
.Ltmp144:
	.loc	3 0 2
	adrp	x8, pvi_mode_table+70
	add	x8, x8, :lo12:pvi_mode_table+70
	b	.LBB0_92
.Ltmp145:
.LBB0_86:
	adrp	x8, pvi_mode_table+80
	add	x8, x8, :lo12:pvi_mode_table+80
	b	.LBB0_92
.Ltmp146:
.LBB0_87:
	adrp	x8, pvi_mode_table+10
	add	x8, x8, :lo12:pvi_mode_table+10
	b	.LBB0_92
.Ltmp147:
.LBB0_88:
	adrp	x8, pvi_mode_table+20
	add	x8, x8, :lo12:pvi_mode_table+20
	b	.LBB0_92
.Ltmp148:
.LBB0_89:
	adrp	x8, pvi_mode_table+40
	add	x8, x8, :lo12:pvi_mode_table+40
	b	.LBB0_92
.Ltmp149:
.LBB0_90:
	adrp	x8, pvi_mode_table+50
	add	x8, x8, :lo12:pvi_mode_table+50
	b	.LBB0_92
.Ltmp150:
.LBB0_91:
	adrp	x8, pvi_mode_table+60
	add	x8, x8, :lo12:pvi_mode_table+60
.Ltmp151:
.LBB0_92:
	.loc	3 195 9 is_stmt 1
	ldrb	w0, [x8, x9]
.Ltmp152:
.LBB0_93:
	.loc	3 418 15
	mov	w1, w21
	bl	get_wf_frm_num
.Ltmp153:
	.loc	3 419 7
	tbnz	w0, #31, .LBB0_96
.Ltmp154:
	.loc	3 423 21
	ldrb	w8, [x20]
	.loc	3 424 21
	bfi	w8, w0, #8, #24
	mov	w0, wzr
.Ltmp155:
	str	w8, [x20]
	.loc	3 425 10
	str	w19, [x24, :lo12:pvi_wf_get_lut.sftemp]
.Ltmp156:
.LBB0_95:
	.loc	3 429 1
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldr	x27, [sp, #16]
	ldp	x29, x30, [sp], #96
	ldr	x30, [x18, #-8]!
	ret
.LBB0_96:
.Ltmp157:
	.loc	3 0 0 is_stmt 0
	adrp	x0, .L.str
.Ltmp158:
	add	x0, x0, :lo12:.L.str
	bl	_printk
.Ltmp159:
	mov	w0, #-5
	b	.LBB0_95
.Ltmp160:
.LBB0_97:
	.loc	3 182 3 is_stmt 1
	adrp	x0, .L.str.3
.Ltmp161:
	add	x0, x0, :lo12:.L.str.3
	bl	_printk
.Ltmp162:
	.loc	3 0 3 is_stmt 0
	mov	w0, #255
	b	.LBB0_93
.Ltmp163:
.LBB0_98:
	.loc	3 332 2 is_stmt 1
	sub	x12, x9, #1
	mov	x10, xzr
	and	x11, x12, #0xffffffff
	lsl	x14, x11, #10
	tst	x14, #0xffffffff00000000
	cset	w13, ne
	cmp	xzr, x12, lsr #54
	cset	w11, ne
	tbnz	w14, #31, .LBB0_47
.Ltmp164:
	.loc	3 0 2 is_stmt 0
	tbnz	w13, #0, .LBB0_47
.Ltmp165:
	lsr	x13, x12, #32
	cbnz	x13, .LBB0_47
.Ltmp166:
	add	x13, x8, #30
	lsl	x12, x12, #10
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB0_47
.Ltmp167:
	tbnz	w11, #0, .LBB0_47
.Ltmp168:
	add	x13, x8, #29
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB0_47
.Ltmp169:
	tbnz	w11, #0, .LBB0_47
.Ltmp170:
	add	x13, x8, #31
	add	x12, x13, x12
	cmp	x12, x13
	b.lo	.LBB0_47
.Ltmp171:
	tbnz	w11, #0, .LBB0_47
.Ltmp172:
	.loc	3 332 2
	and	x10, x9, #0xfffffffe
	mov	w11, #1024
	mov	x12, x10
.Ltmp173:
.LBB0_108:
	.loc	3 332 30
	sub	w13, w11, #1024
	add	x14, x8, w11, sxtw
	subs	x12, x12, #2
	add	w11, w11, #2048
	add	x13, x8, w13, sxtw
	ldrb	w15, [x14, #30]
	ldrb	w16, [x13, #30]
	strb	w15, [x14, #31]
	strb	w15, [x14, #29]
	strb	w16, [x13, #31]
	strb	w16, [x13, #29]
	b.ne	.LBB0_108
.Ltmp174:
	.loc	3 332 2
	cmp	x10, x9
	b.ne	.LBB0_47
	b	.LBB0_67
.Ltmp175:
.LBB0_110:
	.loc	3 347 2 is_stmt 1
	sub	x12, x9, #1
	mov	x10, xzr
	and	x11, x12, #0xffffffff
	lsl	x14, x11, #10
	tst	x14, #0xffffffff00000000
	cset	w13, ne
	cmp	xzr, x12, lsr #54
	cset	w11, ne
	tbnz	w14, #31, .LBB0_134
.Ltmp176:
	.loc	3 0 2 is_stmt 0
	tbnz	w13, #0, .LBB0_134
.Ltmp177:
	lsr	x13, x12, #32
	cbnz	x13, .LBB0_134
.Ltmp178:
	add	x13, x8, #30
	lsl	x12, x12, #10
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB0_134
.Ltmp179:
	tbnz	w11, #0, .LBB0_134
.Ltmp180:
	add	x13, x8, #958
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB0_134
.Ltmp181:
	tbnz	w11, #0, .LBB0_134
.Ltmp182:
	add	x13, x8, #959
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB0_134
.Ltmp183:
	tbnz	w11, #0, .LBB0_134
.Ltmp184:
	add	x13, x8, #1022
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB0_134
.Ltmp185:
	tbnz	w11, #0, .LBB0_134
.Ltmp186:
	add	x13, x8, #1021
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB0_134
.Ltmp187:
	tbnz	w11, #0, .LBB0_134
.Ltmp188:
	add	x13, x8, #29
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB0_134
.Ltmp189:
	tbnz	w11, #0, .LBB0_134
.Ltmp190:
	add	x13, x8, #31
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB0_134
.Ltmp191:
	tbnz	w11, #0, .LBB0_134
.Ltmp192:
	add	x13, x8, #989
	add	x12, x13, x12
	cmp	x12, x13
	b.lo	.LBB0_134
.Ltmp193:
	tbnz	w11, #0, .LBB0_134
.Ltmp194:
	.loc	3 347 2
	and	x10, x9, #0xfffffffe
	mov	w11, #1024
	mov	x12, x10
	b	.LBB0_131
.Ltmp195:
.LBB0_130:
	.loc	3 347 30
	subs	x12, x12, #2
	add	w11, w11, #2048
	b.eq	.LBB0_133
.Ltmp196:
.LBB0_131:
	sub	w14, w11, #1024
	add	x13, x8, w11, sxtw
	add	x14, x8, w14, sxtw
	ldrb	w15, [x13, #30]
	strb	wzr, [x13, #989]
	ldrb	w16, [x14, #30]
	strb	wzr, [x14, #989]
	strb	w15, [x13, #31]
	strb	w15, [x13, #29]
	strb	w16, [x14, #31]
	strb	w16, [x14, #29]
	cbz	w22, .LBB0_130
.Ltmp197:
	add	x15, x14, #1021
	add	x16, x13, #1021
.Ltmp198:
	.loc	3 352 7 is_stmt 1
	strh	wzr, [x14, #958]
	strh	wzr, [x13, #958]
	strh	wzr, [x15]
	strh	wzr, [x16]
	b	.LBB0_130
.Ltmp199:
.LBB0_133:
	.loc	3 347 2
	cmp	x10, x9
	b.eq	.LBB0_67
.Ltmp200:
.LBB0_134:
	sub	x9, x9, x10
	lsl	w10, w10, #10
	b	.LBB0_136
.Ltmp201:
.LBB0_135:
	.loc	3 347 16 is_stmt 0
	subs	x9, x9, #1
	add	w10, w10, #1024
.Ltmp202:
	.loc	3 347 2
	b.eq	.LBB0_67
.Ltmp203:
.LBB0_136:
	.loc	3 348 20 is_stmt 1
	add	x11, x8, w10, sxtw
.Ltmp204:
	.loc	3 350 38
	ldrb	w12, [x11, #30]
	.loc	3 349 36
	strb	wzr, [x11, #989]
	.loc	3 350 36
	strb	w12, [x11, #31]
	.loc	3 351 36
	strb	w12, [x11, #29]
	.loc	3 352 7
	cbz	w22, .LBB0_135
.Ltmp205:
	.loc	3 355 4
	add	x12, x11, #1021
	.loc	3 358 37
	strh	wzr, [x11, #958]
	.loc	3 355 37
	strh	wzr, [x12]
	b	.LBB0_135
.Ltmp206:
.Lfunc_end0:
	.size	pvi_wf_get_lut, .Lfunc_end0-pvi_wf_get_lut
	.cfi_endproc
	.section	.rodata,"a",@progbits
.LJTI0_0:
	.byte	(.LBB0_29-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_24-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_25-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_20-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_26-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_20-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_27-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_23-.LBB0_20)>>2
	.byte	(.LBB0_28-.LBB0_20)>>2
.LJTI0_1:
	.byte	(.LBB0_92-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_87-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_88-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_83-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_89-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_83-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_90-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_86-.LBB0_83)>>2
	.byte	(.LBB0_91-.LBB0_83)>>2

	.text
	.p2align	2
	.type	get_wf_frm_num,@function
get_wf_frm_num:
.Lfunc_begin1:
	.loc	3 218 0
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
.Ltmp207:
	.loc	3 219 45 prologue_end
	adrp	x8, global_waveform
	.loc	3 223 37
	lsl	w9, w0, #2
	.loc	3 219 45
	ldr	x14, [x8, :lo12:global_waveform]
.Ltmp208:
	.loc	3 221 32
	ldrb	w8, [x14, #32]
.Ltmp209:
	.loc	3 223 21
	add	x8, x14, x8
.Ltmp210:
	.loc	3 223 30 is_stmt 0
	add	x8, x8, x9
.Ltmp211:
	.loc	3 224 22 is_stmt 1
	ldrb	w9, [x8]
	.loc	3 224 35 is_stmt 0
	ldrb	w10, [x8, #1]
	.loc	3 224 48
	ldrb	w11, [x8, #2]
	.loc	3 224 6
	ldrb	w12, [x8, #3]
	.loc	3 224 33
	add	w9, w10, w9
	.loc	3 224 46
	add	w9, w9, w11
.Ltmp212:
	.loc	3 224 6
	cmp	w12, w9, uxtb
	b.ne	.LBB1_26
.Ltmp213:
	.loc	3 0 6
	ldr	w8, [x8]
.Ltmp214:
	.loc	3 230 43 is_stmt 1
	lsl	w9, w1, #2
	.loc	3 228 28
	and	x8, x8, #0xffffff
.Ltmp215:
	.loc	3 230 21
	add	x8, x14, x8
.Ltmp216:
	.loc	3 230 30 is_stmt 0
	add	x9, x8, w9, sxtw
.Ltmp217:
	.loc	3 231 22 is_stmt 1
	ldrb	w8, [x9]
	.loc	3 231 35 is_stmt 0
	ldrb	w10, [x9, #1]
	.loc	3 231 48
	ldrb	w11, [x9, #2]
	.loc	3 231 6
	ldrb	w12, [x9, #3]
	.loc	3 231 33
	add	w8, w10, w8
	.loc	3 231 46
	add	w8, w8, w11
.Ltmp218:
	.loc	3 231 6
	cmp	w12, w8, uxtb
	b.ne	.LBB1_27
.Ltmp219:
	.loc	3 55 7 is_stmt 1
	adrp	x20, waveformdata
	ldr	x10, [x20, :lo12:waveformdata]
.Ltmp220:
	.loc	3 55 6 is_stmt 0
	cbz	x10, .LBB1_29
.Ltmp221:
	.loc	3 0 6
	adrp	x21, need_pic
.Ltmp222:
	.loc	3 60 6 is_stmt 1
	adrp	x22, maxpic
	ldr	w15, [x9]
	mov	w16, #5
	mov	w0, #32
.Ltmp223:
	.loc	3 0 6 is_stmt 0
	mov	w13, wzr
	ldr	w8, [x21, :lo12:need_pic]
	mov	w11, wzr
	.loc	3 60 6
	ldrb	w9, [x22, :lo12:maxpic]
.Ltmp224:
	.loc	3 0 0
	and	x15, x15, #0xffffff
.Ltmp225:
	add	x14, x14, x15
.Ltmp226:
	mov	w19, wzr
	cmp	w8, #32
	mov	w12, wzr
	cset	w17, eq
	bics	w15, w17, w9
.Ltmp227:
	mov	w17, #16
	cinc	w16, w16, ne
	cmp	w9, #0
	csel	w17, w0, w17, ne
	mov	w0, #1
.Ltmp228:
	b	.LBB1_6
.Ltmp229:
.LBB1_4:
	mov	w0, #1
.Ltmp230:
.LBB1_5:
	add	w11, w11, #1
.Ltmp231:
	.loc	3 64 7 is_stmt 1
	cmp	w19, #254
	b.hi	.LBB1_18
.Ltmp232:
.LBB1_6:
	.loc	3 69 7
	ldrb	w3, [x14, w11, uxtw]
.Ltmp233:
	.loc	3 69 7 is_stmt 0
	cmp	w3, #252
	b.eq	.LBB1_11
.Ltmp234:
	cmp	w3, #255
	b.eq	.LBB1_19
.Ltmp235:
	.loc	3 79 7 is_stmt 1
	tbnz	w0, #0, .LBB1_12
.Ltmp236:
.LBB1_9:
	.loc	3 114 44
	add	w0, w13, #1
.Ltmp237:
	.loc	3 114 75 is_stmt 0
	lsl	w1, w12, w15
.Ltmp238:
	.loc	3 114 47
	lsl	w2, w13, w16
	.loc	3 114 35
	add	w1, w1, w19, lsl #10
	.loc	3 115 47 is_stmt 1
	lsl	w0, w0, w16
.Ltmp239:
	.loc	3 114 65
	add	w2, w1, w2
	.loc	3 115 65
	add	w0, w1, w0
	.loc	3 114 99
	and	w4, w3, #0x3
	.loc	3 115 106
	ubfx	w5, w3, #2, #2
	.loc	3 114 88
	strb	w4, [x10, w2, uxtw]
	.loc	3 115 44
	add	w2, w13, #2
.Ltmp240:
	.loc	3 115 88 is_stmt 0
	strb	w5, [x10, w0, uxtw]
	.loc	3 116 44 is_stmt 1
	add	w0, w13, #3
.Ltmp241:
	.loc	3 116 47 is_stmt 0
	lsl	w2, w2, w16
	.loc	3 117 47 is_stmt 1
	lsl	w0, w0, w16
.Ltmp242:
	.loc	3 116 65
	add	w2, w1, w2
	.loc	3 117 65
	add	w0, w1, w0
	.loc	3 116 106
	ubfx	w4, w3, #4, #2
	.loc	3 117 100
	lsr	w1, w3, #6
	.loc	3 117 44 is_stmt 0
	add	w13, w13, #4
.Ltmp243:
	.loc	3 116 88 is_stmt 1
	strb	w4, [x10, w2, uxtw]
	.loc	3 120 8
	cmp	w13, w17
	.loc	3 117 88
	strb	w1, [x10, w0, uxtw]
.Ltmp244:
	.loc	3 0 88 is_stmt 0
	mov	w0, wzr
	.loc	3 120 8 is_stmt 1
	b.lo	.LBB1_5
.Ltmp245:
	.loc	3 122 9
	add	w1, w12, #1
.Ltmp246:
	.loc	3 0 9 is_stmt 0
	mov	w13, wzr
	.loc	3 122 18
	cmp	w1, w17
.Ltmp247:
	.loc	3 122 9
	csinc	w12, wzr, w12, hs
	cinc	w19, w19, hs
.Ltmp248:
	.loc	3 0 9
	b	.LBB1_5
.Ltmp249:
.LBB1_11:
	.loc	3 76 10 is_stmt 1
	add	w11, w11, #1
.Ltmp250:
	.loc	3 0 0 is_stmt 0
	ldrb	w3, [x14, w11, uxtw]
.Ltmp251:
	.loc	3 79 7 is_stmt 1
	tbnz	w0, #0, .LBB1_9
.Ltmp252:
.LBB1_12:
	.loc	3 81 44
	add	w0, w13, #1
.Ltmp253:
	.loc	3 81 75 is_stmt 0
	lsl	w1, w12, w15
.Ltmp254:
	.loc	3 81 47
	lsl	w2, w13, w16
	.loc	3 81 35
	add	w4, w1, w19, lsl #10
	.loc	3 82 47 is_stmt 1
	lsl	w1, w0, w16
	.loc	3 81 65
	add	w2, w4, w2
	.loc	3 82 65
	add	w5, w4, w1
	.loc	3 81 99
	and	w0, w3, #0x3
.Ltmp255:
	.loc	3 82 106
	ubfx	w1, w3, #2, #2
	.loc	3 81 88
	strb	w0, [x10, w2, uxtw]
	.loc	3 82 44
	add	w2, w13, #2
.Ltmp256:
	.loc	3 82 88 is_stmt 0
	strb	w1, [x10, w5, uxtw]
	.loc	3 83 44 is_stmt 1
	add	w5, w13, #3
.Ltmp257:
	.loc	3 83 47 is_stmt 0
	lsl	w2, w2, w16
	.loc	3 84 47 is_stmt 1
	lsl	w5, w5, w16
.Ltmp258:
	.loc	3 83 65
	add	w6, w4, w2
	.loc	3 83 106 is_stmt 0
	ubfx	w2, w3, #4, #2
	.loc	3 84 65 is_stmt 1
	add	w4, w4, w5
	.loc	3 84 100 is_stmt 0
	lsr	w3, w3, #6
.Ltmp259:
	.loc	3 84 44
	add	w13, w13, #4
.Ltmp260:
	.loc	3 87 8 is_stmt 1
	cmp	w13, w17
	.loc	3 83 88
	strb	w2, [x10, w6, uxtw]
	.loc	3 84 88
	strb	w3, [x10, w4, uxtw]
.Ltmp261:
	.loc	3 87 8
	b.lo	.LBB1_14
.Ltmp262:
	.loc	3 89 9
	add	w4, w12, #1
.Ltmp263:
	.loc	3 0 9 is_stmt 0
	mov	w13, wzr
	.loc	3 89 18
	cmp	w4, w17
.Ltmp264:
	.loc	3 89 9
	csinc	w12, wzr, w12, hs
	cinc	w19, w19, hs
.Ltmp265:
.LBB1_14:
	.loc	3 0 0
	add	w11, w11, #1
.Ltmp266:
	.loc	3 95 8 is_stmt 1
	ldrb	w4, [x14, w11, uxtw]
.Ltmp267:
	.loc	3 96 4
	cbnz	w4, .LBB1_16
	b	.LBB1_4
.Ltmp268:
.LBB1_15:
	.loc	3 96 19 is_stmt 0
	sub	w4, w4, #1
.Ltmp269:
	tst	w4, #0xff
.Ltmp270:
	.loc	3 96 4
	b.eq	.LBB1_4
.Ltmp271:
.LBB1_16:
	.loc	3 97 45 is_stmt 1
	add	w5, w13, #1
.Ltmp272:
	.loc	3 97 76 is_stmt 0
	lsl	w6, w12, w15
	.loc	3 98 45 is_stmt 1
	add	w23, w13, #2
.Ltmp273:
	.loc	3 99 45
	add	w24, w13, #3
.Ltmp274:
	.loc	3 97 48
	lsl	w7, w13, w16
	.loc	3 97 36 is_stmt 0
	add	w6, w6, w19, lsl #10
	.loc	3 98 48 is_stmt 1
	lsl	w5, w5, w16
	.loc	3 99 48
	lsl	w23, w23, w16
	.loc	3 100 48
	lsl	w24, w24, w16
.Ltmp275:
	.loc	3 97 66
	add	w7, w6, w7
	.loc	3 98 66
	add	w5, w6, w5
	.loc	3 99 66
	add	w23, w6, w23
	.loc	3 100 66
	add	w6, w6, w24
	.loc	3 100 45 is_stmt 0
	add	w13, w13, #4
.Ltmp276:
	.loc	3 101 9 is_stmt 1
	cmp	w13, w17
	.loc	3 97 89
	strb	w0, [x10, w7, uxtw]
	.loc	3 98 89
	strb	w1, [x10, w5, uxtw]
	.loc	3 99 89
	strb	w2, [x10, w23, uxtw]
	.loc	3 100 89
	strb	w3, [x10, w6, uxtw]
	.loc	3 101 9
	b.lo	.LBB1_15
.Ltmp277:
	.loc	3 103 10
	add	w5, w12, #1
.Ltmp278:
	.loc	3 0 10 is_stmt 0
	mov	w13, wzr
	.loc	3 103 19
	cmp	w5, w17
.Ltmp279:
	.loc	3 103 10
	csinc	w12, wzr, w12, hs
	cinc	w19, w19, hs
.Ltmp280:
	.loc	3 0 10
	b	.LBB1_15
.Ltmp281:
.LBB1_18:
	.loc	3 65 4 is_stmt 1
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	_printk
.Ltmp282:
	.loc	3 130 6
	ldrb	w9, [x22, :lo12:maxpic]
	ldr	w8, [x21, :lo12:need_pic]
.Ltmp283:
.LBB1_19:
	.loc	3 130 24 is_stmt 0
	cbz	w9, .LBB1_31
.Ltmp284:
	cmp	w8, #16
	b.ne	.LBB1_31
.Ltmp285:
	.loc	3 132 3 is_stmt 1
	cbz	w19, .LBB1_31
.Ltmp286:
	.loc	3 0 3 is_stmt 0
	ldr	x11, [x20, :lo12:waveformdata]
	mov	w8, wzr
	mov	w9, wzr
	.loc	3 132 3
	add	x10, x11, #16
	add	x11, x11, #7
.Ltmp287:
.LBB1_23:
	.loc	3 0 3
	mov	w13, w8
	mov	x14, #-2
.Ltmp288:
	add	x12, x10, x13
	and	x13, x13, #0xffffffe0
	add	x13, x11, x13
.Ltmp289:
.LBB1_24:
	.loc	3 135 17 is_stmt 1
	ldurb	w15, [x12, #-16]
.Ltmp290:
	.loc	3 133 28
	add	x14, x14, #2
.Ltmp291:
	.loc	3 133 4 is_stmt 0
	cmp	x14, #30
.Ltmp292:
	.loc	3 136 61 is_stmt 1
	sturb	w15, [x13, #-7]
.Ltmp293:
	.loc	3 135 17
	ldurb	w15, [x12, #-14]
.Ltmp294:
	.loc	3 136 61
	sturb	w15, [x13, #-6]
.Ltmp295:
	.loc	3 135 17
	ldurb	w15, [x12, #-12]
.Ltmp296:
	.loc	3 136 61
	sturb	w15, [x13, #-5]
.Ltmp297:
	.loc	3 135 17
	ldurb	w15, [x12, #-10]
.Ltmp298:
	.loc	3 136 61
	sturb	w15, [x13, #-4]
.Ltmp299:
	.loc	3 135 17
	ldurb	w15, [x12, #-8]
.Ltmp300:
	.loc	3 136 61
	sturb	w15, [x13, #-3]
.Ltmp301:
	.loc	3 135 17
	ldurb	w15, [x12, #-6]
.Ltmp302:
	.loc	3 136 61
	sturb	w15, [x13, #-2]
.Ltmp303:
	.loc	3 135 17
	ldurb	w15, [x12, #-4]
.Ltmp304:
	.loc	3 136 61
	sturb	w15, [x13, #-1]
.Ltmp305:
	.loc	3 135 17
	ldurb	w15, [x12, #-2]
.Ltmp306:
	.loc	3 136 61
	strb	w15, [x13]
.Ltmp307:
	.loc	3 135 17
	ldrb	w15, [x12]
.Ltmp308:
	.loc	3 136 61
	strb	w15, [x13, #1]
.Ltmp309:
	.loc	3 135 17
	ldrb	w15, [x12, #2]
.Ltmp310:
	.loc	3 136 61
	strb	w15, [x13, #2]
.Ltmp311:
	.loc	3 135 17
	ldrb	w15, [x12, #4]
.Ltmp312:
	.loc	3 136 61
	strb	w15, [x13, #3]
.Ltmp313:
	.loc	3 135 17
	ldrb	w15, [x12, #6]
.Ltmp314:
	.loc	3 136 61
	strb	w15, [x13, #4]
.Ltmp315:
	.loc	3 135 17
	ldrb	w15, [x12, #8]
.Ltmp316:
	.loc	3 136 61
	strb	w15, [x13, #5]
.Ltmp317:
	.loc	3 135 17
	ldrb	w15, [x12, #10]
.Ltmp318:
	.loc	3 136 61
	strb	w15, [x13, #6]
.Ltmp319:
	.loc	3 135 17
	ldrb	w15, [x12, #12]
.Ltmp320:
	.loc	3 136 61
	strb	w15, [x13, #7]
.Ltmp321:
	.loc	3 135 17
	ldrb	w15, [x12, #14]
.Ltmp322:
	.loc	3 133 28
	add	x12, x12, #64
.Ltmp323:
	.loc	3 136 61
	strb	w15, [x13, #8]
.Ltmp324:
	.loc	3 133 28
	add	x13, x13, #32
.Ltmp325:
	.loc	3 133 4 is_stmt 0
	b.lo	.LBB1_24
.Ltmp326:
	.loc	3 132 31 is_stmt 1
	add	w9, w9, #1
.Ltmp327:
	.loc	3 132 3 is_stmt 0
	add	w8, w8, #1024
.Ltmp328:
	cmp	w19, w9, uxtb
	b.hi	.LBB1_23
	b	.LBB1_31
.Ltmp329:
.LBB1_26:
	.loc	3 225 3 is_stmt 1
	adrp	x0, .L.str.4
.Ltmp330:
	adrp	x1, .L__func__.get_wf_frm_num
.Ltmp331:
	add	x0, x0, :lo12:.L.str.4
	add	x1, x1, :lo12:.L__func__.get_wf_frm_num
	mov	w2, #225
	b	.LBB1_28
.Ltmp332:
.LBB1_27:
	.loc	3 232 3
	adrp	x0, .L.str.4
.Ltmp333:
	adrp	x1, .L__func__.get_wf_frm_num
.Ltmp334:
	add	x0, x0, :lo12:.L.str.4
	add	x1, x1, :lo12:.L__func__.get_wf_frm_num
	mov	w2, #232
.Ltmp335:
.LBB1_28:
	.loc	3 0 0 is_stmt 0
	bl	_printk
.Ltmp336:
	b	.LBB1_30
.Ltmp337:
.LBB1_29:
	.loc	3 56 3 is_stmt 1
	adrp	x0, .L.str.5
.Ltmp338:
	add	x0, x0, :lo12:.L.str.5
	bl	_printk
.Ltmp339:
.LBB1_30:
	.loc	3 0 3 is_stmt 0
	mov	w19, #-22
.Ltmp340:
.LBB1_31:
	.loc	3 239 1 is_stmt 1
	mov	w0, w19
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldp	x29, x30, [sp], #64
	ldr	x30, [x18, #-8]!
	ret
.Ltmp341:
.Lfunc_end1:
	.size	get_wf_frm_num, .Lfunc_end1-get_wf_frm_num
	.cfi_endproc
	.file	6 "/home/lyx/rk-android14/kernel-6.1" "./include/linux/types.h"

	.globl	pvi_wf_input
	.p2align	2
	.type	pvi_wf_input,@function
pvi_wf_input:
.Lfunc_begin2:
	.loc	3 438 0
	.cfi_startproc
	str	x30, [x18], #8
	.cfi_escape 0x16, 0x12, 0x02, 0x82, 0x78
	stp	x29, x30, [sp, #-32]!
	stp	x20, x19, [sp, #16]
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
.Ltmp342:
	.loc	3 441 6 prologue_end
	adrp	x20, global_waveform
	ldr	x8, [x20, :lo12:global_waveform]
.Ltmp343:
	.loc	3 441 6 is_stmt 0
	cbz	x8, .LBB2_3
.Ltmp344:
	.loc	3 0 6
	mov	w0, #-16
.Ltmp345:
.LBB2_2:
	.loc	3 471 1 is_stmt 1
	ldp	x20, x19, [sp, #16]
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Ltmp346:
.LBB2_3:
	.loc	3 0 1 is_stmt 0
	mov	x19, x0
.Ltmp347:
	.loc	3 444 2 is_stmt 1
	ldrb	w1, [x0, #16]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	_printk
.Ltmp348:
	.loc	3 447 18
	ldrb	w1, [x19, #16]
	.loc	3 447 2 is_stmt 0
	sub	w8, w1, #9
	cmp	w8, #105
	b.hi	.LBB2_7
.Ltmp349:
	.loc	3 0 2
	adrp	x9, .LJTI2_0
	add	x9, x9, :lo12:.LJTI2_0
	adr	x10, .LBB2_5
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
.Ltmp350:
.LBB2_5:
	.loc	3 455 10 is_stmt 1
	adrp	x8, maxpic
	mov	w9, #1
	strb	w9, [x8, :lo12:maxpic]
.Ltmp351:
.LBB2_6:
	.loc	3 0 10 is_stmt 0
	mov	w0, wzr
	.loc	3 468 18 is_stmt 1
	str	x19, [x20, :lo12:global_waveform]
	b	.LBB2_2
.Ltmp352:
.LBB2_7:
	.loc	3 463 3
	adrp	x0, .L.str.2
	ldrb	w2, [x19, #22]
	add	x0, x0, :lo12:.L.str.2
	bl	_printk
.Ltmp353:
	.loc	3 0 3 is_stmt 0
	mov	w0, #-8
	b	.LBB2_2
.Ltmp354:
.Lfunc_end2:
	.size	pvi_wf_input, .Lfunc_end2-pvi_wf_input
	.cfi_endproc
	.section	.rodata,"a",@progbits
.LJTI2_0:
	.byte	(.LBB2_6-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_6-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_5-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_5-.LBB2_5)>>2
	.byte	(.LBB2_5-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_5-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_6-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_5-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_5-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_6-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_7-.LBB2_5)>>2
	.byte	(.LBB2_5-.LBB2_5)>>2

	.text
	.globl	pvi_wf_get_version
	.p2align	2
	.type	pvi_wf_get_version,@function
pvi_wf_get_version:
.Lfunc_begin3:
	.loc	3 480 0 is_stmt 1
	.cfi_startproc
	.loc	3 481 39 prologue_end
	adrp	x8, global_waveform
	ldr	x8, [x8, :lo12:global_waveform]
.Ltmp355:
	.loc	3 484 6
	cbz	x8, .LBB3_2
.Ltmp356:
	.loc	3 487 2
	adrp	x0, pvi_wf_get_version.spi_id_buffer
	ldur	x9, [x8, #73]
	ldr	x10, [x8, #88]
	add	x0, x0, :lo12:pvi_wf_get_version.spi_id_buffer
	ldur	x11, [x8, #81]
	ldur	x8, [x8, #65]
.Ltmp357:
	stur	x10, [x0, #23]
	stp	x9, x11, [x0, #8]
	str	x8, [x0]
	.loc	3 488 20
	strb	wzr, [x0, #31]
	.loc	3 491 1
	ret
.LBB3_2:
.Ltmp358:
	.loc	3 0 1 is_stmt 0
	mov	x0, xzr
	.loc	3 491 1
	ret
.Ltmp359:
.Lfunc_end3:
	.size	pvi_wf_get_version, .Lfunc_end3-pvi_wf_get_version
	.cfi_endproc

	.type	pvi_mode_table,@object
	.section	.rodata,"a",@progbits
	.globl	pvi_mode_table
pvi_mode_table:
	.asciz	"\000\001\001\002\003\003\003\004\003"
	.asciz	"\000\001\007\003\003\005\006\004\005"
	.asciz	"\000\001\001\002\003\004\004\006\005"
	.asciz	"\000\001\007\002\003\004\005\006\004"
	.asciz	"\000\001\005\002\003\003\003\004\003"
	.asciz	"\000\001\001\002\003\004\004\006\004"
	.asciz	"\000\001\001\002\003\004\004\005\004"
	.asciz	"\000\001\001\002\003\004\013\006\n"
	.asciz	"\000\001\001\002\003\004\005\006\004"
	.size	pvi_mode_table, 90

	.type	pvi_wf_get_lut.stype,@object
	.data
	.p2align	2
pvi_wf_get_lut.stype:
	.word	13
	.size	pvi_wf_get_lut.stype, 4

	.type	pvi_wf_get_lut.sftemp,@object
	.p2align	2
pvi_wf_get_lut.sftemp:
	.word	4294967295
	.size	pvi_wf_get_lut.sftemp, 4

	.type	global_waveform,@object
	.local	global_waveform
	.comm	global_waveform,8,8
	.type	need_pic,@object
	.p2align	2
need_pic:
	.word	16
	.size	need_pic, 4

	.type	waveformdata,@object
	.local	waveformdata
	.comm	waveformdata,8,8
	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pvi waveform get frame number failed\n"
	.size	.L.str, 38

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"pvi : input waveform version 0x%x\n"
	.size	.L.str.1, 35

	.type	maxpic,@object
	.local	maxpic
	.comm	maxpic,1,4
	.type	.L.str.2,@object
.L.str.2:
	.asciz	"pvi : Unknow waveform version 0x%x, 0x%x, may be wrong waveform file\n"
	.size	.L.str.2, 70

	.type	pvi_wf_get_version.spi_id_buffer,@object
	.local	pvi_wf_get_version.spi_id_buffer
	.comm	pvi_wf_get_version.spi_id_buffer,32,1
	.type	.L.str.3,@object
.L.str.3:
	.asciz	"pvi: unspport PVI waveform type"
	.size	.L.str.3, 32

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"pvi: %s %d check error\n"
	.size	.L.str.4, 24

	.type	.L__func__.get_wf_frm_num,@object
.L__func__.get_wf_frm_num:
	.asciz	"get_wf_frm_num"
	.size	.L__func__.get_wf_frm_num, 15

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"waveformdata is NULL\n"
	.size	.L.str.5, 22

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"pvi: decodec waveform error, framenum err\n"
	.size	.L.str.6, 43

	.type	.Lswitch.table.pvi_wf_get_lut.7,@object
	.section	.rodata,"a",@progbits
	.p2align	3
.Lswitch.table.pvi_wf_get_lut.7:
	.xword	3
	.xword	5
	.xword	6
	.size	.Lswitch.table.pvi_wf_get_lut.7, 24

	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp6-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp6-.Lfunc_begin0
	.xword	.Ltmp22-.Lfunc_begin0
	.hword	1
	.byte	100
	.xword	.Ltmp22-.Lfunc_begin0
	.xword	.Ltmp23-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp24-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	1
	.byte	100
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	1
	.byte	100
	.xword	0
	.xword	0
.Ldebug_loc1:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp5-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp5-.Lfunc_begin0
	.xword	.Ltmp22-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	.Ltmp22-.Lfunc_begin0
	.xword	.Ltmp24-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp24-.Lfunc_begin0
	.xword	.Ltmp134-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	.Ltmp134-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp163-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp163-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	0
	.xword	0
.Ldebug_loc2:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp4-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp4-.Lfunc_begin0
	.xword	.Ltmp22-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp22-.Lfunc_begin0
	.xword	.Ltmp24-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp24-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc3:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp46-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp94-.Lfunc_begin0
	.xword	.Ltmp95-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp95-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc4:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp3-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp3-.Lfunc_begin0
	.xword	.Ltmp22-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	.Ltmp22-.Lfunc_begin0
	.xword	.Ltmp24-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp24-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	0
	.xword	0
.Ldebug_loc5:
	.xword	.Ltmp1-.Lfunc_begin0
	.xword	.Ltmp123-.Lfunc_begin0
	.hword	3
	.byte	48
	.byte	32
	.byte	159
	.xword	.Ltmp123-.Lfunc_begin0
	.xword	.Ltmp152-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp161-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp163-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	3
	.byte	48
	.byte	32
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc6:
	.xword	.Ltmp1-.Lfunc_begin0
	.xword	.Ltmp47-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp47-.Lfunc_begin0
	.xword	.Ltmp94-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp94-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp96-.Lfunc_begin0
	.xword	.Ltmp119-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp155-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp158-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp163-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	0
	.xword	0
.Ldebug_loc7:
	.xword	.Ltmp1-.Lfunc_begin0
	.xword	.Ltmp46-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp46-.Lfunc_begin0
	.xword	.Ltmp47-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp94-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp152-.Lfunc_begin0
	.xword	.Ltmp153-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	0
	.xword	0
.Ldebug_loc8:
	.xword	.Ltmp1-.Lfunc_begin0
	.xword	.Ltmp28-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp28-.Lfunc_begin0
	.xword	.Ltmp119-.Lfunc_begin0
	.hword	1
	.byte	103
	.xword	.Ltmp134-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp163-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	.Ltmp163-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	1
	.byte	103
	.xword	0
	.xword	0
.Ldebug_loc9:
	.xword	.Ltmp14-.Lfunc_begin0
	.xword	.Ltmp22-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp25-.Lfunc_begin0
	.xword	.Ltmp29-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc10:
	.xword	.Ltmp13-.Lfunc_begin0
	.xword	.Ltmp16-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp16-.Lfunc_begin0
	.xword	.Ltmp21-.Lfunc_begin0
	.hword	1
	.byte	91
	.xword	.Ltmp25-.Lfunc_begin0
	.xword	.Ltmp26-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp26-.Lfunc_begin0
	.xword	.Ltmp27-.Lfunc_begin0
	.hword	1
	.byte	91
	.xword	0
	.xword	0
.Ldebug_loc11:
	.xword	.Ltmp13-.Lfunc_begin0
	.xword	.Ltmp22-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	127
	.byte	159
	.xword	.Ltmp25-.Lfunc_begin0
	.xword	.Ltmp27-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	127
	.byte	159
	.xword	.Ltmp27-.Lfunc_begin0
	.xword	.Ltmp28-.Lfunc_begin0
	.hword	1
	.byte	92
	.xword	.Ltmp28-.Lfunc_begin0
	.xword	.Ltmp29-.Lfunc_begin0
	.hword	1
	.byte	103
	.xword	0
	.xword	0
.Ldebug_loc12:
	.xword	.Ltmp14-.Lfunc_begin0
	.xword	.Ltmp22-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp25-.Lfunc_begin0
	.xword	.Ltmp29-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc13:
	.xword	.Ltmp28-.Lfunc_begin0
	.xword	.Ltmp31-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp31-.Lfunc_begin0
	.xword	.Ltmp32-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	.Ltmp94-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc14:
	.xword	.Ltmp28-.Lfunc_begin0
	.xword	.Ltmp45-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp45-.Lfunc_begin0
	.xword	.Ltmp46-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	.Ltmp94-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc15:
	.xword	.Ltmp28-.Lfunc_begin0
	.xword	.Ltmp46-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	.Ltmp94-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	0
	.xword	0
.Ldebug_loc16:
	.xword	.Ltmp32-.Lfunc_begin0
	.xword	.Ltmp33-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc17:
	.xword	.Ltmp32-.Lfunc_begin0
	.xword	.Ltmp36-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp36-.Lfunc_begin0
	.xword	.Ltmp37-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	.Ltmp37-.Lfunc_begin0
	.xword	.Ltmp38-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc18:
	.xword	.Ltmp51-.Lfunc_begin0
	.xword	.Ltmp54-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp54-.Lfunc_begin0
	.xword	.Ltmp56-.Lfunc_begin0
	.hword	7
	.byte	121
	.byte	0
	.byte	17
	.byte	128
	.byte	8
	.byte	27
	.byte	159
	.xword	.Ltmp58-.Lfunc_begin0
	.xword	.Ltmp60-.Lfunc_begin0
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
	.xword	.Ltmp60-.Lfunc_begin0
	.xword	.Ltmp62-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	1
	.byte	159
	.xword	.Ltmp96-.Lfunc_begin0
	.xword	.Ltmp108-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	1
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc19:
	.xword	.Ltmp51-.Lfunc_begin0
	.xword	.Ltmp54-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp55-.Lfunc_begin0
	.xword	.Ltmp62-.Lfunc_begin0
	.hword	1
	.byte	91
	.xword	.Ltmp96-.Lfunc_begin0
	.xword	.Ltmp97-.Lfunc_begin0
	.hword	1
	.byte	91
	.xword	.Ltmp109-.Lfunc_begin0
	.xword	.Ltmp112-.Lfunc_begin0
	.hword	1
	.byte	93
	.xword	.Ltmp112-.Lfunc_begin0
	.xword	.Ltmp113-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	128
	.byte	8
	.byte	159
	.xword	.Ltmp113-.Lfunc_begin0
	.xword	.Ltmp114-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	128
	.byte	16
	.byte	159
	.xword	.Ltmp114-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	4
	.byte	120
	.byte	128
	.byte	24
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc20:
	.xword	.Ltmp51-.Lfunc_begin0
	.xword	.Ltmp62-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp96-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	0
	.xword	0
.Ldebug_loc21:
	.xword	.Ltmp51-.Lfunc_begin0
	.xword	.Ltmp62-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	.Ltmp96-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc22:
	.xword	.Ltmp65-.Lfunc_begin0
	.xword	.Ltmp68-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp68-.Lfunc_begin0
	.xword	.Ltmp70-.Lfunc_begin0
	.hword	7
	.byte	122
	.byte	0
	.byte	17
	.byte	128
	.byte	8
	.byte	27
	.byte	159
	.xword	.Ltmp72-.Lfunc_begin0
	.xword	.Ltmp73-.Lfunc_begin0
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
.Ldebug_loc23:
	.xword	.Ltmp65-.Lfunc_begin0
	.xword	.Ltmp68-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp69-.Lfunc_begin0
	.xword	.Ltmp73-.Lfunc_begin0
	.hword	1
	.byte	92
	.xword	.Ltmp73-.Lfunc_begin0
	.xword	.Ltmp74-.Lfunc_begin0
	.hword	4
	.byte	121
	.byte	128
	.byte	24
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc24:
	.xword	.Ltmp65-.Lfunc_begin0
	.xword	.Ltmp77-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	0
	.xword	0
.Ldebug_loc25:
	.xword	.Ltmp65-.Lfunc_begin0
	.xword	.Ltmp77-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	0
	.xword	0
.Ldebug_loc26:
	.xword	.Ltmp80-.Lfunc_begin0
	.xword	.Ltmp88-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	.Ltmp163-.Lfunc_begin0
	.xword	.Ltmp175-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc27:
	.xword	.Ltmp78-.Lfunc_begin0
	.xword	.Ltmp88-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp163-.Lfunc_begin0
	.xword	.Ltmp175-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	0
	.xword	0
.Ldebug_loc28:
	.xword	.Ltmp78-.Lfunc_begin0
	.xword	.Ltmp84-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp85-.Lfunc_begin0
	.xword	.Ltmp88-.Lfunc_begin0
	.hword	1
	.byte	91
	.xword	.Ltmp163-.Lfunc_begin0
	.xword	.Ltmp175-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc29:
	.xword	.Ltmp78-.Lfunc_begin0
	.xword	.Ltmp84-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp163-.Lfunc_begin0
	.xword	.Ltmp175-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc30:
	.xword	.Ltmp91-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc31:
	.xword	.Ltmp89-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	0
	.xword	0
.Ldebug_loc32:
	.xword	.Ltmp89-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	1
	.byte	102
	.xword	0
	.xword	0
.Ldebug_loc33:
	.xword	.Ltmp89-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp201-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp203-.Lfunc_begin0
	.hword	1
	.byte	91
	.xword	.Ltmp204-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	1
	.byte	91
	.xword	0
	.xword	0
.Ldebug_loc34:
	.xword	.Ltmp89-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp201-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc35:
	.xword	.Ltmp123-.Lfunc_begin0
	.xword	.Ltmp135-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc36:
	.xword	.Ltmp123-.Lfunc_begin0
	.xword	.Ltmp135-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	0
	.xword	0
.Ldebug_loc37:
	.xword	.Ltmp123-.Lfunc_begin0
	.xword	.Ltmp125-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp125-.Lfunc_begin0
	.xword	.Ltmp130-.Lfunc_begin0
	.hword	1
	.byte	90
	.xword	.Ltmp131-.Lfunc_begin0
	.xword	.Ltmp132-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp132-.Lfunc_begin0
	.xword	.Ltmp133-.Lfunc_begin0
	.hword	1
	.byte	90
	.xword	0
	.xword	0
.Ldebug_loc38:
	.xword	.Ltmp123-.Lfunc_begin0
	.xword	.Ltmp133-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	127
	.byte	159
	.xword	.Ltmp133-.Lfunc_begin0
	.xword	.Ltmp134-.Lfunc_begin0
	.hword	1
	.byte	91
	.xword	.Ltmp134-.Lfunc_begin0
	.xword	.Ltmp135-.Lfunc_begin0
	.hword	1
	.byte	101
	.xword	0
	.xword	0
.Ldebug_loc39:
	.xword	.Ltmp134-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp138-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp163-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc40:
	.xword	.Ltmp134-.Lfunc_begin0
	.xword	.Ltmp151-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp151-.Lfunc_begin0
	.xword	.Ltmp152-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp163-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc41:
	.xword	.Ltmp134-.Lfunc_begin0
	.xword	.Ltmp152-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp161-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	0
	.xword	0
.Ldebug_loc42:
	.xword	.Ltmp138-.Lfunc_begin0
	.xword	.Ltmp139-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	0
	.xword	0
.Ldebug_loc43:
	.xword	.Ltmp138-.Lfunc_begin0
	.xword	.Ltmp142-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp142-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	.Ltmp143-.Lfunc_begin0
	.xword	.Ltmp144-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc44:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp223-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp223-.Lfunc_begin0
	.xword	.Ltmp329-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp329-.Lfunc_begin0
	.xword	.Ltmp330-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp330-.Lfunc_begin0
	.xword	.Ltmp332-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp332-.Lfunc_begin0
	.xword	.Ltmp333-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp333-.Lfunc_begin0
	.xword	.Ltmp337-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp337-.Lfunc_begin0
	.xword	.Ltmp338-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp338-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc45:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp229-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp238-.Lfunc_begin0
	.xword	.Ltmp245-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp254-.Lfunc_begin0
	.xword	.Ltmp262-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp329-.Lfunc_begin0
	.xword	.Ltmp331-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp331-.Lfunc_begin0
	.xword	.Ltmp332-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp332-.Lfunc_begin0
	.xword	.Ltmp334-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp334-.Lfunc_begin0
	.xword	.Ltmp337-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp337-.Lfunc_begin0
	.xword	.Ltmp339-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp339-.Lfunc_begin0
	.xword	.Ltmp340-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc46:
	.xword	.Ltmp207-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp208-.Lfunc_begin0
	.xword	.Ltmp226-.Lfunc_begin0
	.hword	1
	.byte	94
	.xword	.Ltmp329-.Lfunc_begin0
	.xword	.Ltmp336-.Lfunc_begin0
	.hword	1
	.byte	94
	.xword	.Ltmp337-.Lfunc_begin0
	.xword	.Ltmp339-.Lfunc_begin0
	.hword	1
	.byte	94
	.xword	0
	.xword	0
.Ldebug_loc47:
	.xword	.Ltmp208-.Lfunc_begin0
	.xword	.Ltmp209-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp210-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	.Ltmp215-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp227-.Lfunc_begin0
	.hword	1
	.byte	95
	.xword	0
	.xword	0
.Ldebug_loc48:
	.xword	.Ltmp208-.Lfunc_begin0
	.xword	.Ltmp211-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp211-.Lfunc_begin0
	.xword	.Ltmp214-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp219-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	.Ltmp226-.Lfunc_begin0
	.xword	.Ltmp282-.Lfunc_begin0
	.hword	1
	.byte	94
	.xword	.Ltmp329-.Lfunc_begin0
	.xword	.Ltmp332-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	.Ltmp332-.Lfunc_begin0
	.xword	.Ltmp335-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	0
	.xword	0
.Ldebug_loc49:
	.xword	.Ltmp230-.Lfunc_begin0
	.xword	.Ltmp282-.Lfunc_begin0
	.hword	1
	.byte	94
	.xword	0
	.xword	0
.Ldebug_loc50:
	.xword	.Ltmp219-.Lfunc_begin0
	.xword	.Ltmp229-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp231-.Lfunc_begin0
	.xword	.Ltmp237-.Lfunc_begin0
	.hword	1
	.byte	93
	.xword	.Ltmp237-.Lfunc_begin0
	.xword	.Ltmp239-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp240-.Lfunc_begin0
	.xword	.Ltmp241-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp242-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp243-.Lfunc_begin0
	.xword	.Ltmp244-.Lfunc_begin0
	.hword	1
	.byte	93
	.xword	.Ltmp244-.Lfunc_begin0
	.xword	.Ltmp249-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp253-.Lfunc_begin0
	.hword	1
	.byte	93
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp255-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp256-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp258-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp260-.Lfunc_begin0
	.xword	.Ltmp262-.Lfunc_begin0
	.hword	1
	.byte	93
	.xword	.Ltmp262-.Lfunc_begin0
	.xword	.Ltmp265-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp266-.Lfunc_begin0
	.xword	.Ltmp272-.Lfunc_begin0
	.hword	1
	.byte	93
	.xword	.Ltmp272-.Lfunc_begin0
	.xword	.Ltmp273-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp273-.Lfunc_begin0
	.xword	.Ltmp274-.Lfunc_begin0
	.hword	1
	.byte	103
	.xword	.Ltmp274-.Lfunc_begin0
	.xword	.Ltmp275-.Lfunc_begin0
	.hword	1
	.byte	104
	.xword	.Ltmp276-.Lfunc_begin0
	.xword	.Ltmp277-.Lfunc_begin0
	.hword	1
	.byte	93
	.xword	.Ltmp277-.Lfunc_begin0
	.xword	.Ltmp281-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp281-.Lfunc_begin0
	.xword	.Ltmp282-.Lfunc_begin0
	.hword	1
	.byte	93
	.xword	.Ltmp288-.Lfunc_begin0
	.xword	.Ltmp289-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp289-.Lfunc_begin0
	.xword	.Ltmp324-.Lfunc_begin0
	.hword	10
	.byte	120
	.byte	0
	.byte	17
	.byte	128
	.byte	8
	.byte	27
	.byte	17
	.byte	2
	.byte	30
	.byte	159
	.xword	.Ltmp324-.Lfunc_begin0
	.xword	.Ltmp328-.Lfunc_begin0
	.hword	13
	.byte	120
	.byte	0
	.byte	17
	.byte	128
	.byte	8
	.byte	27
	.byte	17
	.byte	2
	.byte	30
	.byte	17
	.byte	2
	.byte	34
	.byte	159
	.xword	.Ltmp337-.Lfunc_begin0
	.xword	.Ltmp339-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc51:
	.xword	.Ltmp219-.Lfunc_begin0
	.xword	.Ltmp229-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp231-.Lfunc_begin0
	.xword	.Ltmp246-.Lfunc_begin0
	.hword	1
	.byte	92
	.xword	.Ltmp246-.Lfunc_begin0
	.xword	.Ltmp249-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.hword	1
	.byte	92
	.xword	.Ltmp263-.Lfunc_begin0
	.xword	.Ltmp265-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp266-.Lfunc_begin0
	.xword	.Ltmp278-.Lfunc_begin0
	.hword	1
	.byte	92
	.xword	.Ltmp278-.Lfunc_begin0
	.xword	.Ltmp281-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp281-.Lfunc_begin0
	.xword	.Ltmp282-.Lfunc_begin0
	.hword	1
	.byte	92
	.xword	.Ltmp289-.Lfunc_begin0
	.xword	.Ltmp293-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp293-.Lfunc_begin0
	.xword	.Ltmp295-.Lfunc_begin0
	.hword	2
	.byte	50
	.byte	159
	.xword	.Ltmp295-.Lfunc_begin0
	.xword	.Ltmp297-.Lfunc_begin0
	.hword	2
	.byte	52
	.byte	159
	.xword	.Ltmp297-.Lfunc_begin0
	.xword	.Ltmp299-.Lfunc_begin0
	.hword	2
	.byte	54
	.byte	159
	.xword	.Ltmp299-.Lfunc_begin0
	.xword	.Ltmp301-.Lfunc_begin0
	.hword	2
	.byte	56
	.byte	159
	.xword	.Ltmp301-.Lfunc_begin0
	.xword	.Ltmp303-.Lfunc_begin0
	.hword	2
	.byte	58
	.byte	159
	.xword	.Ltmp303-.Lfunc_begin0
	.xword	.Ltmp305-.Lfunc_begin0
	.hword	2
	.byte	60
	.byte	159
	.xword	.Ltmp305-.Lfunc_begin0
	.xword	.Ltmp307-.Lfunc_begin0
	.hword	2
	.byte	62
	.byte	159
	.xword	.Ltmp307-.Lfunc_begin0
	.xword	.Ltmp309-.Lfunc_begin0
	.hword	2
	.byte	64
	.byte	159
	.xword	.Ltmp309-.Lfunc_begin0
	.xword	.Ltmp311-.Lfunc_begin0
	.hword	2
	.byte	66
	.byte	159
	.xword	.Ltmp311-.Lfunc_begin0
	.xword	.Ltmp313-.Lfunc_begin0
	.hword	2
	.byte	68
	.byte	159
	.xword	.Ltmp313-.Lfunc_begin0
	.xword	.Ltmp315-.Lfunc_begin0
	.hword	2
	.byte	70
	.byte	159
	.xword	.Ltmp315-.Lfunc_begin0
	.xword	.Ltmp317-.Lfunc_begin0
	.hword	2
	.byte	72
	.byte	159
	.xword	.Ltmp317-.Lfunc_begin0
	.xword	.Ltmp319-.Lfunc_begin0
	.hword	2
	.byte	74
	.byte	159
	.xword	.Ltmp319-.Lfunc_begin0
	.xword	.Ltmp321-.Lfunc_begin0
	.hword	2
	.byte	76
	.byte	159
	.xword	.Ltmp321-.Lfunc_begin0
	.xword	.Ltmp324-.Lfunc_begin0
	.hword	2
	.byte	78
	.byte	159
	.xword	.Ltmp324-.Lfunc_begin0
	.xword	.Ltmp329-.Lfunc_begin0
	.hword	3
	.byte	16
	.byte	32
	.byte	159
	.xword	.Ltmp337-.Lfunc_begin0
	.xword	.Ltmp339-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc52:
	.xword	.Ltmp219-.Lfunc_begin0
	.xword	.Ltmp229-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp231-.Lfunc_begin0
	.xword	.Ltmp248-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp265-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp266-.Lfunc_begin0
	.xword	.Ltmp280-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp281-.Lfunc_begin0
	.xword	.Ltmp329-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	.Ltmp337-.Lfunc_begin0
	.xword	.Ltmp339-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc53:
	.xword	.Ltmp219-.Lfunc_begin0
	.xword	.Ltmp229-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp231-.Lfunc_begin0
	.xword	.Ltmp244-.Lfunc_begin0
	.hword	1
	.byte	91
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp261-.Lfunc_begin0
	.hword	1
	.byte	91
	.xword	.Ltmp266-.Lfunc_begin0
	.xword	.Ltmp282-.Lfunc_begin0
	.hword	1
	.byte	91
	.xword	.Ltmp337-.Lfunc_begin0
	.xword	.Ltmp339-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc54:
	.xword	.Ltmp219-.Lfunc_begin0
	.xword	.Ltmp229-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp236-.Lfunc_begin0
	.xword	.Ltmp249-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp252-.Lfunc_begin0
	.xword	.Ltmp259-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp290-.Lfunc_begin0
	.xword	.Ltmp329-.Lfunc_begin0
	.hword	1
	.byte	95
	.xword	.Ltmp337-.Lfunc_begin0
	.xword	.Ltmp339-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc55:
	.xword	.Ltmp219-.Lfunc_begin0
	.xword	.Ltmp229-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp268-.Lfunc_begin0
	.xword	.Ltmp281-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp285-.Lfunc_begin0
	.xword	.Ltmp287-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp287-.Lfunc_begin0
	.xword	.Ltmp329-.Lfunc_begin0
	.hword	1
	.byte	89
	.xword	.Ltmp337-.Lfunc_begin0
	.xword	.Ltmp339-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc56:
	.xword	.Ltmp219-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	2
	.byte	49
	.byte	159
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp250-.Lfunc_begin0
	.hword	9
	.byte	112
	.byte	0
	.byte	48
	.byte	32
	.byte	39
	.byte	16
	.byte	1
	.byte	26
	.byte	159
	.xword	.Ltmp337-.Lfunc_begin0
	.xword	.Ltmp339-.Lfunc_begin0
	.hword	2
	.byte	49
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc57:
	.xword	.Ltmp219-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	.Ltmp228-.Lfunc_begin0
	.xword	.Ltmp229-.Lfunc_begin0
	.hword	1
	.byte	95
	.xword	.Ltmp230-.Lfunc_begin0
	.xword	.Ltmp282-.Lfunc_begin0
	.hword	1
	.byte	95
	.xword	.Ltmp337-.Lfunc_begin0
	.xword	.Ltmp339-.Lfunc_begin0
	.hword	3
	.byte	17
	.byte	0
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc58:
	.xword	.Lfunc_begin2-.Lfunc_begin0
	.xword	.Ltmp345-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp346-.Lfunc_begin0
	.xword	.Ltmp347-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp347-.Lfunc_begin0
	.xword	.Lfunc_end2-.Lfunc_begin0
	.hword	1
	.byte	99
	.xword	0
	.xword	0
.Ldebug_loc59:
	.xword	.Ltmp342-.Lfunc_begin0
	.xword	.Ltmp343-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp343-.Lfunc_begin0
	.xword	.Lfunc_end2-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc60:
	.xword	.Lfunc_begin3-.Lfunc_begin0
	.xword	.Ltmp355-.Lfunc_begin0
	.hword	2
	.byte	48
	.byte	159
	.xword	.Ltmp355-.Lfunc_begin0
	.xword	.Ltmp357-.Lfunc_begin0
	.hword	1
	.byte	88
	.xword	.Ltmp358-.Lfunc_begin0
	.xword	.Lfunc_end3-.Lfunc_begin0
	.hword	1
	.byte	88
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
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	2
	.byte	24
	.byte	0
	.byte	0
	.byte	3
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	4
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	55
	.byte	11
	.byte	0
	.byte	0
	.byte	5
	.byte	38
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	6
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
	.byte	7
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
	.byte	8
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
	.byte	9
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
	.byte	10
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
	.byte	11
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
	.byte	12
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
	.byte	13
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
	.byte	14
	.byte	5
	.byte	0
	.byte	2
	.byte	23
	.byte	49
	.byte	19
	.byte	0
	.byte	0
	.byte	15
	.byte	52
	.byte	0
	.byte	2
	.byte	23
	.byte	49
	.byte	19
	.byte	0
	.byte	0
	.byte	16
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
	.byte	17
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
	.byte	18
	.ascii	"\211\202\001"
	.byte	1
	.byte	49
	.byte	19
	.byte	17
	.byte	1
	.byte	0
	.byte	0
	.byte	19
	.ascii	"\212\202\001"
	.byte	0
	.byte	2
	.byte	24
	.ascii	"\221B"
	.byte	24
	.byte	0
	.byte	0
	.byte	20
	.ascii	"\211\202\001"
	.byte	0
	.byte	49
	.byte	19
	.byte	17
	.byte	1
	.byte	0
	.byte	0
	.byte	21
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
	.byte	22
	.byte	40
	.byte	0
	.byte	3
	.byte	14
	.byte	28
	.byte	15
	.byte	0
	.byte	0
	.byte	23
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
	.byte	24
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	25
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
	.byte	26
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
	.byte	27
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
	.byte	28
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
	.byte	29
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
	.byte	30
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
	.byte	31
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
	.byte	32
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
	.byte	33
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
	.byte	39
	.byte	15
	.byte	0
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
	.word	.Lfunc_end3-.Lfunc_begin0
	.byte	2
	.word	.Linfo_string3
	.word	63

	.byte	3
	.byte	146
	.byte	9
	.byte	3
	.xword	pvi_mode_table
	.byte	3
	.word	81
	.byte	4
	.word	115
	.byte	9
	.byte	4
	.word	115
	.byte	10
	.byte	0
	.byte	5
	.word	86
	.byte	6
	.word	97
	.word	.Linfo_string6
	.byte	2
	.byte	17
	.byte	6
	.word	108
	.word	.Linfo_string5
	.byte	1
	.byte	21
	.byte	7
	.word	.Linfo_string4
	.byte	8
	.byte	1
	.byte	8
	.word	.Linfo_string7
	.byte	8
	.byte	7
	.byte	9
	.xword	.Lfunc_begin0
	.word	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	109

	.word	.Linfo_string96
	.byte	3
	.hword	365

	.word	985

	.byte	10
	.word	.Linfo_string8
	.word	875
	.byte	3
	.hword	367
	.byte	9
	.byte	3
	.xword	pvi_wf_get_lut.stype
	.byte	10
	.word	.Linfo_string26
	.word	985
	.byte	3
	.hword	368
	.byte	9
	.byte	3
	.xword	pvi_wf_get_lut.sftemp
	.byte	11
	.word	.Ldebug_loc0
	.word	.Linfo_string100
	.byte	3
	.hword	365
	.word	2407
	.byte	11
	.word	.Ldebug_loc1
	.word	.Linfo_string70
	.byte	3
	.hword	365
	.word	875
	.byte	11
	.word	.Ldebug_loc2
	.word	.Linfo_string59
	.byte	3
	.hword	365
	.word	985
	.byte	11
	.word	.Ldebug_loc3
	.word	.Linfo_string102
	.byte	3
	.hword	365
	.word	985
	.byte	11
	.word	.Ldebug_loc4
	.word	.Linfo_string103
	.byte	3
	.hword	365
	.word	985
	.byte	12
	.word	.Ldebug_loc5
	.word	.Linfo_string104
	.byte	3
	.hword	372
	.word	875
	.byte	12
	.word	.Ldebug_loc6
	.word	.Linfo_string77
	.byte	3
	.hword	371
	.word	985
	.byte	12
	.word	.Ldebug_loc7
	.word	.Linfo_string105
	.byte	3
	.hword	370
	.word	985
	.byte	12
	.word	.Ldebug_loc8
	.word	.Linfo_string106
	.byte	3
	.hword	369
	.word	985
	.byte	13
	.word	1602
	.word	.Ldebug_ranges0
	.byte	3
	.hword	390
	.byte	16
	.byte	14
	.word	.Ldebug_loc12
	.word	1614
	.byte	15
	.word	.Ldebug_loc9
	.word	1625
	.byte	15
	.word	.Ldebug_loc10
	.word	1636
	.byte	15
	.word	.Ldebug_loc11
	.word	1647
	.byte	0
	.byte	13
	.word	1659
	.word	.Ldebug_ranges1
	.byte	3
	.hword	391
	.byte	16
	.byte	14
	.word	.Ldebug_loc15
	.word	1671
	.byte	15
	.word	.Ldebug_loc13
	.word	1682
	.byte	15
	.word	.Ldebug_loc14
	.word	1693
	.byte	16
	.word	1710
	.xword	.Ltmp32
	.word	.Ltmp38-.Ltmp32
	.byte	3
	.byte	193
	.byte	14
	.byte	14
	.word	.Ldebug_loc16
	.word	1722
	.byte	15
	.word	.Ldebug_loc17
	.word	1733
	.byte	0
	.byte	0
	.byte	13
	.word	1745
	.word	.Ldebug_ranges2
	.byte	3
	.hword	399
	.byte	4
	.byte	14
	.word	.Ldebug_loc21
	.word	1757
	.byte	14
	.word	.Ldebug_loc20
	.word	1768
	.byte	15
	.word	.Ldebug_loc18
	.word	1779
	.byte	15
	.word	.Ldebug_loc19
	.word	1790
	.byte	0
	.byte	17
	.word	1802
	.xword	.Ltmp64
	.word	.Ltmp77-.Ltmp64
	.byte	3
	.hword	401
	.byte	4
	.byte	14
	.word	.Ldebug_loc25
	.word	1815
	.byte	14
	.word	.Ldebug_loc24
	.word	1827
	.byte	15
	.word	.Ldebug_loc22
	.word	1839
	.byte	15
	.word	.Ldebug_loc23
	.word	1851
	.byte	0
	.byte	13
	.word	1864
	.word	.Ldebug_ranges3
	.byte	3
	.hword	403
	.byte	4
	.byte	14
	.word	.Ldebug_loc26
	.word	1877
	.byte	14
	.word	.Ldebug_loc27
	.word	1889
	.byte	15
	.word	.Ldebug_loc28
	.word	1913
	.byte	15
	.word	.Ldebug_loc29
	.word	1925
	.byte	0
	.byte	13
	.word	1938
	.word	.Ldebug_ranges4
	.byte	3
	.hword	405
	.byte	4
	.byte	14
	.word	.Ldebug_loc30
	.word	1951
	.byte	14
	.word	.Ldebug_loc31
	.word	1963
	.byte	14
	.word	.Ldebug_loc32
	.word	1975
	.byte	15
	.word	.Ldebug_loc33
	.word	1987
	.byte	15
	.word	.Ldebug_loc34
	.word	1999
	.byte	0
	.byte	17
	.word	1602
	.xword	.Ltmp122
	.word	.Ltmp134-.Ltmp122
	.byte	3
	.hword	416
	.byte	16
	.byte	14
	.word	.Ldebug_loc35
	.word	1614
	.byte	15
	.word	.Ldebug_loc36
	.word	1625
	.byte	15
	.word	.Ldebug_loc37
	.word	1636
	.byte	15
	.word	.Ldebug_loc38
	.word	1647
	.byte	0
	.byte	13
	.word	1659
	.word	.Ldebug_ranges5
	.byte	3
	.hword	417
	.byte	16
	.byte	14
	.word	.Ldebug_loc41
	.word	1671
	.byte	15
	.word	.Ldebug_loc39
	.word	1682
	.byte	15
	.word	.Ldebug_loc40
	.word	1693
	.byte	16
	.word	1710
	.xword	.Ltmp138
	.word	.Ltmp144-.Ltmp138
	.byte	3
	.byte	193
	.byte	14
	.byte	14
	.word	.Ldebug_loc42
	.word	1722
	.byte	15
	.word	.Ldebug_loc43
	.word	1733
	.byte	0
	.byte	0
	.byte	18
	.word	2012
	.xword	.Ltmp47
	.byte	19
	.byte	1
	.byte	81
	.byte	2
	.byte	135
	.byte	0
	.byte	0
	.byte	20
	.word	2207
	.xword	.Ltmp122
	.byte	18
	.word	2012
	.xword	.Ltmp153
	.byte	19
	.byte	1
	.byte	81
	.byte	2
	.byte	133
	.byte	0
	.byte	0
	.byte	0
	.byte	21
	.word	978
	.word	.Linfo_string25
	.byte	4
	.byte	4
	.byte	15
	.byte	22
	.word	.Linfo_string10
	.byte	0
	.byte	22
	.word	.Linfo_string11
	.byte	1
	.byte	22
	.word	.Linfo_string12
	.byte	2
	.byte	22
	.word	.Linfo_string13
	.byte	3
	.byte	22
	.word	.Linfo_string14
	.byte	4
	.byte	22
	.word	.Linfo_string15
	.byte	5
	.byte	22
	.word	.Linfo_string16
	.byte	6
	.byte	22
	.word	.Linfo_string17
	.byte	7
	.byte	22
	.word	.Linfo_string18
	.byte	8
	.byte	22
	.word	.Linfo_string19
	.byte	9
	.byte	22
	.word	.Linfo_string20
	.byte	10
	.byte	22
	.word	.Linfo_string21
	.byte	11
	.byte	22
	.word	.Linfo_string22
	.byte	12
	.byte	22
	.word	.Linfo_string23
	.byte	13
	.byte	22
	.word	.Linfo_string24
	.byte	14
	.byte	0
	.byte	7
	.word	.Linfo_string9
	.byte	7
	.byte	4
	.byte	7
	.word	.Linfo_string27
	.byte	5
	.byte	4
	.byte	9
	.xword	.Lfunc_begin3
	.word	.Lfunc_end3-.Lfunc_begin3
	.byte	1
	.byte	111

	.word	.Linfo_string99
	.byte	3
	.hword	479

	.word	1582

	.byte	10
	.word	.Linfo_string28
	.word	1057
	.byte	3
	.hword	482
	.byte	9
	.byte	3
	.xword	pvi_wf_get_version.spi_id_buffer
	.byte	12
	.word	.Ldebug_loc60
	.word	.Linfo_string74
	.byte	3
	.hword	481
	.word	1582
	.byte	0
	.byte	3
	.word	1069
	.byte	4
	.word	115
	.byte	32
	.byte	0
	.byte	7
	.word	.Linfo_string29
	.byte	8
	.byte	1
	.byte	23
	.word	.Linfo_string30
	.word	1097
	.byte	3
	.byte	40
	.byte	9
	.byte	3
	.xword	waveformdata
	.byte	24
	.word	86
	.byte	23
	.word	.Linfo_string31
	.word	1123
	.byte	3
	.byte	42
	.byte	9
	.byte	3
	.xword	global_waveform
	.byte	24
	.word	1128
	.byte	25
	.word	.Linfo_string60
	.byte	52
	.byte	3
	.byte	13
	.byte	26
	.word	.Linfo_string32
	.word	1413
	.byte	3
	.byte	14
	.byte	0
	.byte	26
	.word	.Linfo_string35
	.word	1413
	.byte	3
	.byte	15
	.byte	4
	.byte	26
	.word	.Linfo_string36
	.word	1413
	.byte	3
	.byte	16
	.byte	8
	.byte	26
	.word	.Linfo_string37
	.word	86
	.byte	3
	.byte	17
	.byte	12
	.byte	26
	.word	.Linfo_string38
	.word	86
	.byte	3
	.byte	18
	.byte	13
	.byte	26
	.word	.Linfo_string39
	.word	1435
	.byte	3
	.byte	19
	.byte	14
	.byte	26
	.word	.Linfo_string43
	.word	86
	.byte	3
	.byte	20
	.byte	16
	.byte	26
	.word	.Linfo_string44
	.word	86
	.byte	3
	.byte	21
	.byte	17
	.byte	26
	.word	.Linfo_string45
	.word	86
	.byte	3
	.byte	22
	.byte	18
	.byte	26
	.word	.Linfo_string46
	.word	86
	.byte	3
	.byte	23
	.byte	19
	.byte	26
	.word	.Linfo_string47
	.word	86
	.byte	3
	.byte	24
	.byte	20
	.byte	26
	.word	.Linfo_string48
	.word	86
	.byte	3
	.byte	25
	.byte	21
	.byte	26
	.word	.Linfo_string49
	.word	86
	.byte	3
	.byte	26
	.byte	22
	.byte	26
	.word	.Linfo_string50
	.word	86
	.byte	3
	.byte	27
	.byte	23
	.byte	26
	.word	.Linfo_string51
	.word	1413
	.byte	3
	.byte	28
	.byte	24
	.byte	26
	.word	.Linfo_string52
	.word	86
	.byte	3
	.byte	29
	.byte	28
	.byte	26
	.word	.Linfo_string53
	.word	1464
	.byte	3
	.byte	30
	.byte	29
	.byte	26
	.word	.Linfo_string54
	.word	86
	.byte	3
	.byte	31
	.byte	32
	.byte	26
	.word	.Linfo_string55
	.word	1476
	.byte	3
	.byte	32
	.byte	33
	.byte	26
	.word	.Linfo_string56
	.word	86
	.byte	3
	.byte	33
	.byte	37
	.byte	26
	.word	.Linfo_string57
	.word	86
	.byte	3
	.byte	34
	.byte	38
	.byte	26
	.word	.Linfo_string58
	.word	1488
	.byte	3
	.byte	35
	.byte	39
	.byte	26
	.word	.Linfo_string59
	.word	1500
	.byte	3
	.byte	36
	.byte	48
	.byte	0
	.byte	6
	.word	1424
	.word	.Linfo_string34
	.byte	2
	.byte	21
	.byte	6
	.word	978
	.word	.Linfo_string33
	.byte	1
	.byte	27
	.byte	6
	.word	1446
	.word	.Linfo_string42
	.byte	2
	.byte	19
	.byte	6
	.word	1457
	.word	.Linfo_string41
	.byte	1
	.byte	24
	.byte	7
	.word	.Linfo_string40
	.byte	7
	.byte	2
	.byte	3
	.word	86
	.byte	4
	.word	115
	.byte	3
	.byte	0
	.byte	3
	.word	86
	.byte	4
	.word	115
	.byte	4
	.byte	0
	.byte	3
	.word	86
	.byte	4
	.word	115
	.byte	9
	.byte	0
	.byte	3
	.word	86
	.byte	4
	.word	115
	.byte	1
	.byte	0
	.byte	23
	.word	.Linfo_string61
	.word	985
	.byte	3
	.byte	43
	.byte	9
	.byte	3
	.xword	need_pic
	.byte	23
	.word	.Linfo_string62
	.word	985
	.byte	3
	.byte	41
	.byte	16
	.byte	3
	.xword	maxpic
	.byte	148
	.byte	1
	.byte	64
	.byte	30
	.byte	64
	.byte	34
	.byte	159
	.byte	27
	.word	978
	.byte	4
	.byte	5
	.byte	10
	.byte	22
	.word	.Linfo_string63
	.byte	0
	.byte	22
	.word	.Linfo_string64
	.byte	1
	.byte	0
	.byte	24
	.word	1587
	.byte	5
	.word	1069
	.byte	24
	.word	108
	.byte	24
	.word	985
	.byte	28
	.word	.Linfo_string65
	.byte	3
	.byte	198

	.word	985
	.byte	1
	.byte	29
	.word	.Linfo_string59
	.byte	3
	.byte	198
	.word	985
	.byte	30
	.word	.Linfo_string66
	.byte	3
	.byte	200
	.word	985
	.byte	30
	.word	.Linfo_string67
	.byte	3
	.byte	202
	.word	985
	.byte	30
	.word	.Linfo_string68
	.byte	3
	.byte	201
	.word	985
	.byte	0
	.byte	28
	.word	.Linfo_string69
	.byte	3
	.byte	176

	.word	86
	.byte	1
	.byte	29
	.word	.Linfo_string70
	.byte	3
	.byte	176
	.word	875
	.byte	30
	.word	.Linfo_string71
	.byte	3
	.byte	179
	.word	985
	.byte	30
	.word	.Linfo_string72
	.byte	3
	.byte	178
	.word	1705
	.byte	0
	.byte	24
	.word	81
	.byte	28
	.word	.Linfo_string73
	.byte	3
	.byte	158

	.word	1705
	.byte	1
	.byte	29
	.word	.Linfo_string74
	.byte	3
	.byte	158
	.word	1123
	.byte	30
	.word	.Linfo_string72
	.byte	3
	.byte	160
	.word	1705
	.byte	0
	.byte	28
	.word	.Linfo_string75
	.byte	3
	.byte	241

	.word	985
	.byte	1
	.byte	29
	.word	.Linfo_string76
	.byte	3
	.byte	241
	.word	1097
	.byte	29
	.word	.Linfo_string77
	.byte	3
	.byte	241
	.word	985
	.byte	30
	.word	.Linfo_string78
	.byte	3
	.byte	243
	.word	985
	.byte	30
	.word	.Linfo_string79
	.byte	3
	.byte	244
	.word	1097
	.byte	0
	.byte	31
	.word	.Linfo_string80
	.byte	3
	.hword	279

	.word	985
	.byte	1
	.byte	32
	.word	.Linfo_string76
	.byte	3
	.hword	279
	.word	1097
	.byte	32
	.word	.Linfo_string77
	.byte	3
	.hword	279
	.word	985
	.byte	33
	.word	.Linfo_string78
	.byte	3
	.hword	281
	.word	985
	.byte	33
	.word	.Linfo_string79
	.byte	3
	.hword	282
	.word	1097
	.byte	0
	.byte	31
	.word	.Linfo_string81
	.byte	3
	.hword	327

	.word	985
	.byte	1
	.byte	32
	.word	.Linfo_string76
	.byte	3
	.hword	327
	.word	1097
	.byte	32
	.word	.Linfo_string77
	.byte	3
	.hword	327
	.word	985
	.byte	32
	.word	.Linfo_string82
	.byte	3
	.hword	327
	.word	985
	.byte	33
	.word	.Linfo_string79
	.byte	3
	.hword	330
	.word	1097
	.byte	33
	.word	.Linfo_string78
	.byte	3
	.hword	329
	.word	985
	.byte	0
	.byte	31
	.word	.Linfo_string83
	.byte	3
	.hword	342

	.word	985
	.byte	1
	.byte	32
	.word	.Linfo_string76
	.byte	3
	.hword	342
	.word	1097
	.byte	32
	.word	.Linfo_string77
	.byte	3
	.hword	342
	.word	985
	.byte	32
	.word	.Linfo_string82
	.byte	3
	.hword	342
	.word	985
	.byte	33
	.word	.Linfo_string79
	.byte	3
	.hword	345
	.word	1097
	.byte	33
	.word	.Linfo_string78
	.byte	3
	.hword	344
	.word	985
	.byte	0
	.byte	34
	.xword	.Lfunc_begin1
	.word	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	109

	.word	.Linfo_string97
	.byte	3
	.byte	217

	.word	985
	.byte	35
	.word	.Ldebug_loc44
	.word	.Linfo_string71
	.byte	3
	.byte	217
	.word	985
	.byte	35
	.word	.Ldebug_loc45
	.word	.Linfo_string106
	.byte	3
	.byte	217
	.word	985
	.byte	36
	.word	.Ldebug_loc46
	.word	.Linfo_string74
	.byte	3
	.byte	219
	.word	1592
	.byte	36
	.word	.Ldebug_loc47
	.word	.Linfo_string90
	.byte	3
	.byte	221
	.word	985
	.byte	36
	.word	.Ldebug_loc48
	.word	.Linfo_string107
	.byte	3
	.byte	220
	.word	1592
	.byte	37
	.word	2218
	.word	.Ldebug_ranges6
	.byte	3
	.byte	238
	.byte	9
	.byte	14
	.word	.Ldebug_loc49
	.word	2230
	.byte	15
	.word	.Ldebug_loc50
	.word	2241
	.byte	15
	.word	.Ldebug_loc51
	.word	2252
	.byte	15
	.word	.Ldebug_loc52
	.word	2263
	.byte	15
	.word	.Ldebug_loc53
	.word	2274
	.byte	15
	.word	.Ldebug_loc54
	.word	2285
	.byte	15
	.word	.Ldebug_loc55
	.word	2296
	.byte	15
	.word	.Ldebug_loc56
	.word	2307
	.byte	15
	.word	.Ldebug_loc57
	.word	2318
	.byte	0
	.byte	0
	.byte	38
	.word	.Linfo_string84
	.byte	4
	.byte	49

	.word	985


	.byte	28
	.word	.Linfo_string85
	.byte	3
	.byte	45

	.word	985
	.byte	1
	.byte	29
	.word	.Linfo_string86
	.byte	3
	.byte	45
	.word	1592
	.byte	30
	.word	.Linfo_string87
	.byte	3
	.byte	47
	.word	978
	.byte	30
	.word	.Linfo_string88
	.byte	3
	.byte	47
	.word	978
	.byte	30
	.word	.Linfo_string89
	.byte	3
	.byte	48
	.word	978
	.byte	30
	.word	.Linfo_string90
	.byte	3
	.byte	49
	.word	978
	.byte	30
	.word	.Linfo_string91
	.byte	3
	.byte	50
	.word	108
	.byte	30
	.word	.Linfo_string67
	.byte	3
	.byte	51
	.word	108
	.byte	30
	.word	.Linfo_string92
	.byte	3
	.byte	52
	.word	2330
	.byte	30
	.word	.Linfo_string95
	.byte	3
	.byte	53
	.word	985
	.byte	0
	.byte	6
	.word	2341
	.word	.Linfo_string94
	.byte	6
	.byte	30
	.byte	7
	.word	.Linfo_string93
	.byte	2
	.byte	1
	.byte	9
	.xword	.Lfunc_begin2
	.word	.Lfunc_end2-.Lfunc_begin2
	.byte	1
	.byte	109

	.word	.Linfo_string98
	.byte	3
	.hword	437

	.word	985

	.byte	11
	.word	.Ldebug_loc58
	.word	.Linfo_string108
	.byte	3
	.hword	437
	.word	2474
	.byte	12
	.word	.Ldebug_loc59
	.word	.Linfo_string109
	.byte	3
	.hword	439
	.word	1123
	.byte	0
	.byte	24
	.word	2412
	.byte	25
	.word	.Linfo_string101
	.byte	32
	.byte	4
	.byte	34
	.byte	26
	.word	.Linfo_string77
	.word	978
	.byte	4
	.byte	35
	.byte	0
	.byte	26
	.word	.Linfo_string86
	.word	2457
	.byte	4
	.byte	36
	.byte	8
	.byte	26
	.word	.Linfo_string76
	.word	2462
	.byte	4
	.byte	37
	.byte	16
	.byte	0
	.byte	24
	.word	978
	.byte	3
	.word	1097
	.byte	4
	.word	115
	.byte	2
	.byte	0
	.byte	39
	.byte	0
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.xword	.Ltmp12-.Lfunc_begin0
	.xword	.Ltmp13-.Lfunc_begin0
	.xword	.Ltmp14-.Lfunc_begin0
	.xword	.Ltmp28-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges1:
	.xword	.Ltmp28-.Lfunc_begin0
	.xword	.Ltmp46-.Lfunc_begin0
	.xword	.Ltmp94-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges2:
	.xword	.Ltmp51-.Lfunc_begin0
	.xword	.Ltmp62-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges3:
	.xword	.Ltmp78-.Lfunc_begin0
	.xword	.Ltmp79-.Lfunc_begin0
	.xword	.Ltmp80-.Lfunc_begin0
	.xword	.Ltmp88-.Lfunc_begin0
	.xword	.Ltmp163-.Lfunc_begin0
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges4:
	.xword	.Ltmp89-.Lfunc_begin0
	.xword	.Ltmp90-.Lfunc_begin0
	.xword	.Ltmp91-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp206-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges5:
	.xword	.Ltmp134-.Lfunc_begin0
	.xword	.Ltmp152-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp163-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges6:
	.xword	.Ltmp219-.Lfunc_begin0
	.xword	.Ltmp224-.Lfunc_begin0
	.xword	.Ltmp230-.Lfunc_begin0
	.xword	.Ltmp329-.Lfunc_begin0
	.xword	.Ltmp337-.Lfunc_begin0
	.xword	.Ltmp339-.Lfunc_begin0
	.xword	0
	.xword	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Android (8508608, based on r450784e) clang version 14.0.7 (https://android.googlesource.com/toolchain/llvm-project 4c603efb0cca074e9238af8b4106c30add4418f6)"
.Linfo_string1:
	.asciz	"drivers/gpu/drm/rockchip/ebc-dev/epdlut/pvi_waveform.c"
.Linfo_string2:
	.asciz	"/home/lyx/rk-android14/kernel-6.1"
.Linfo_string3:
	.asciz	"pvi_mode_table"
.Linfo_string4:
	.asciz	"unsigned char"
.Linfo_string5:
	.asciz	"__u8"
.Linfo_string6:
	.asciz	"u8"
.Linfo_string7:
	.asciz	"__ARRAY_SIZE_TYPE__"
.Linfo_string8:
	.asciz	"stype"
.Linfo_string9:
	.asciz	"unsigned int"
.Linfo_string10:
	.asciz	"WF_TYPE_RESET"
.Linfo_string11:
	.asciz	"WF_TYPE_GRAY2"
.Linfo_string12:
	.asciz	"WF_TYPE_GRAY4"
.Linfo_string13:
	.asciz	"WF_TYPE_GC16"
.Linfo_string14:
	.asciz	"WF_TYPE_GL16"
.Linfo_string15:
	.asciz	"WF_TYPE_GLR16"
.Linfo_string16:
	.asciz	"WF_TYPE_GLD16"
.Linfo_string17:
	.asciz	"WF_TYPE_A2"
.Linfo_string18:
	.asciz	"WF_TYPE_GCC16"
.Linfo_string19:
	.asciz	"PVI_WF_MAX"
.Linfo_string20:
	.asciz	"WF_TYPE_AUTO"
.Linfo_string21:
	.asciz	"WF_TYPE_RK_GLR16"
.Linfo_string22:
	.asciz	"WF_TYPE_RK_GLD16"
.Linfo_string23:
	.asciz	"WF_TYPE_MAX"
.Linfo_string24:
	.asciz	"WF_TYPE_GRAY16"
.Linfo_string25:
	.asciz	"epd_lut_type"
.Linfo_string26:
	.asciz	"sftemp"
.Linfo_string27:
	.asciz	"int"
.Linfo_string28:
	.asciz	"spi_id_buffer"
.Linfo_string29:
	.asciz	"char"
.Linfo_string30:
	.asciz	"waveformdata"
.Linfo_string31:
	.asciz	"global_waveform"
.Linfo_string32:
	.asciz	"checksum"
.Linfo_string33:
	.asciz	"__u32"
.Linfo_string34:
	.asciz	"u32"
.Linfo_string35:
	.asciz	"file_length"
.Linfo_string36:
	.asciz	"serial"
.Linfo_string37:
	.asciz	"run_type"
.Linfo_string38:
	.asciz	"fpl_platform"
.Linfo_string39:
	.asciz	"fpl_lot"
.Linfo_string40:
	.asciz	"unsigned short"
.Linfo_string41:
	.asciz	"__u16"
.Linfo_string42:
	.asciz	"u16"
.Linfo_string43:
	.asciz	"mode_version"
.Linfo_string44:
	.asciz	"wf_version"
.Linfo_string45:
	.asciz	"wf_subversion"
.Linfo_string46:
	.asciz	"wf_type"
.Linfo_string47:
	.asciz	"panel_size"
.Linfo_string48:
	.asciz	"amepd_part_number"
.Linfo_string49:
	.asciz	"wfm_rev"
.Linfo_string50:
	.asciz	"frame_rate"
.Linfo_string51:
	.asciz	"reserved"
.Linfo_string52:
	.asciz	"vcom_offset"
.Linfo_string53:
	.asciz	"xwia"
.Linfo_string54:
	.asciz	"sc1"
.Linfo_string55:
	.asciz	"unknown1"
.Linfo_string56:
	.asciz	"modenumber"
.Linfo_string57:
	.asciz	"temperaturenumber"
.Linfo_string58:
	.asciz	"unknown2"
.Linfo_string59:
	.asciz	"temperture"
.Linfo_string60:
	.asciz	"pvi_waveform"
.Linfo_string61:
	.asciz	"need_pic"
.Linfo_string62:
	.asciz	"maxpic"
.Linfo_string63:
	.asciz	"false"
.Linfo_string64:
	.asciz	"true"
.Linfo_string65:
	.asciz	"get_wf_temp_index"
.Linfo_string66:
	.asciz	"temp_num"
.Linfo_string67:
	.asciz	"i"
.Linfo_string68:
	.asciz	"level"
.Linfo_string69:
	.asciz	"get_wf_mode_index"
.Linfo_string70:
	.asciz	"lut_type"
.Linfo_string71:
	.asciz	"mode"
.Linfo_string72:
	.asciz	"pvi_modes"
.Linfo_string73:
	.asciz	"parse_mode_version"
.Linfo_string74:
	.asciz	"waveform"
.Linfo_string75:
	.asciz	"pvi_wf_a2_repair"
.Linfo_string76:
	.asciz	"wf_table"
.Linfo_string77:
	.asciz	"frame_num"
.Linfo_string78:
	.asciz	"f"
.Linfo_string79:
	.asciz	"table"
.Linfo_string80:
	.asciz	"pvi_wf_gray2_repair"
.Linfo_string81:
	.asciz	"pvi_wf_regal_fix"
.Linfo_string82:
	.asciz	"regal_fix"
.Linfo_string83:
	.asciz	"pvi_wf_rpart_fix"
.Linfo_string84:
	.asciz	"epd_overlay_lut"
.Linfo_string85:
	.asciz	"decodewaveform"
.Linfo_string86:
	.asciz	"data"
.Linfo_string87:
	.asciz	"oldpic"
.Linfo_string88:
	.asciz	"newpic"
.Linfo_string89:
	.asciz	"frame_tmp"
.Linfo_string90:
	.asciz	"offset"
.Linfo_string91:
	.asciz	"tempdata"
.Linfo_string92:
	.asciz	"israr"
.Linfo_string93:
	.asciz	"_Bool"
.Linfo_string94:
	.asciz	"bool"
.Linfo_string95:
	.asciz	"shift_n"
.Linfo_string96:
	.asciz	"pvi_wf_get_lut"
.Linfo_string97:
	.asciz	"get_wf_frm_num"
.Linfo_string98:
	.asciz	"pvi_wf_input"
.Linfo_string99:
	.asciz	"pvi_wf_get_version"
.Linfo_string100:
	.asciz	"output"
.Linfo_string101:
	.asciz	"epd_lut_data"
.Linfo_string102:
	.asciz	"pic"
.Linfo_string103:
	.asciz	"regal_pix"
.Linfo_string104:
	.asciz	"overlay_lut"
.Linfo_string105:
	.asciz	"mode_index"
.Linfo_string106:
	.asciz	"temp_index"
.Linfo_string107:
	.asciz	"wf_data"
.Linfo_string108:
	.asciz	"waveform_file"
.Linfo_string109:
	.asciz	"pvi_wf"
	.ident	"Android (8508608, based on r450784e) clang version 14.0.7 (https://android.googlesource.com/toolchain/llvm-project 4c603efb0cca074e9238af8b4106c30add4418f6)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pvi_wf_get_version.spi_id_buffer
	.section	.debug_line,"",@progbits
.Lline_table_start0:
