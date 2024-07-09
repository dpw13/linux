/*
 *  arch/m68k/tenkon/config.c
 *
 * Based on mvme147:
 *
 *  Copyright (C) 1996 Dave Frascone [chaos@mindspring.com]
 *
 * This file is subject to the terms and conditions of the GNU General Public
 * License.  See the file README.legal in the main directory of this archive
 * for more details.
 */

#include <linux/types.h>
#include <linux/kernel.h>
#include <linux/mm.h>
#include <linux/tty.h>
#include <linux/clocksource.h>
#include <linux/console.h>
#include <linux/linkage.h>
#include <linux/init.h>
#include <linux/major.h>
#include <linux/rtc.h>
#include <linux/interrupt.h>

#include <asm/bootinfo.h>
#include <asm/byteorder.h>
#include <asm/setup.h>
#include <asm/irq.h>
#include <asm/traps.h>
#include <asm/machdep.h>
#include <asm/tenkonhw.h>
#include <asm/config.h>


static void tenkon_get_model(char *model);
extern void tenkon_sched_init(void);
extern int tenkon_hwclk (int, struct rtc_time *);
extern void tenkon_reset (void);


int __init tenkon_parse_bootinfo(const struct bi_record *bi)
{
	return 0;
}

void tenkon_reset(void)
{
	pr_info("\r\n\nCalled tenkon_reset\r\n");
	while (1)
		;
}

static void tenkon_get_model(char *model)
{
	sprintf(model, "Tenkon alpha");
}

/*
 * This function is called during kernel startup to initialize
 * the tenkon IRQ handling routines.
 */

void __init tenkon_init_IRQ(void)
{
	m68k_setup_user_interrupt(VEC_USER, 192);
}

void __init config_tenkon(void)
{
	mach_sched_init		= tenkon_sched_init;
	mach_init_IRQ		= tenkon_init_IRQ;
	mach_hwclk		= tenkon_hwclk;
	mach_reset		= tenkon_reset;
	mach_get_model		= tenkon_get_model;
}

static u64 tenkon_read_clk(struct clocksource *cs);

static struct clocksource tenkon_clk = {
	.name   = "pcc",
	.rating = 250,
	.read   = tenkon_read_clk,
	.mask   = CLOCKSOURCE_MASK(32),
	.flags  = CLOCK_SOURCE_IS_CONTINUOUS,
};

static u32 clk_total;

#define DP8570A_TIMER_CLOCK_FREQ 1000
#define DP8570A_TIMER_CYCLES     (DP8570A_TIMER_CLOCK_FREQ / HZ)

/* Using pcc tick timer 1 */

static irqreturn_t tenkon_timer_int (int irq, void *dev_id)
{
	unsigned long flags;

	local_irq_save(flags);
	clk_total += DP8570A_TIMER_CYCLES;
	legacy_timer_tick(1);
	local_irq_restore(flags);

	return IRQ_HANDLED;
}


void tenkon_sched_init (void)
{
	if (request_irq(IRQ_VEC_DP8570A, tenkon_timer_int, IRQF_TIMER,
			"timer 1", NULL))
		pr_err("Couldn't register timer interrupt\n");

	/* Init the clock with a value */
	/* The clock counter increments until 0xFFFF then reloads */

	clocksource_register_hz(&tenkon_clk, DP8570A_TIMER_CLOCK_FREQ);
}

static u64 tenkon_read_clk(struct clocksource *cs)
{
	unsigned long flags;
	u32 ticks;

	local_irq_save(flags);
	ticks = 0;
	local_irq_restore(flags);

	return ticks;
}

int tenkon_hwclk(int op, struct rtc_time *t)
{
	if (!op) {
		return 0;
	} else {
		/* FIXME Setting the time is not yet supported */
		return -EOPNOTSUPP;
	}
	return 0;
}
