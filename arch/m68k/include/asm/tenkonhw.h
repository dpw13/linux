/* SPDX-License-Identifier: GPL-2.0 */
#ifndef _MVME147HW_H_
#define _MVME147HW_H_

#include <asm/irq.h>

#define IRQ_VEC_DP8570A (0xC7 - 0x40)
#define IRQ_VEC_TERM    (0xC5 - 0x40)
#define IRQ_VEC_DUART   (0xC4 - 0x40)
#define IRQ_VEC_KEYB    (0xC3 - 0x40)
#define IRQ_VEC_MOUSE   (0xC2 - 0x40)

#endif
