#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "platform.h"
#include "xparameters.h"
#include "xstatus.h"
#include "microblaze_sleep.h"
#include "nexys4IO.h"
#include "xintc.h"
#include "xtmrctr.h"
#include "CameraIP.h"
#include "defines.h"

void OV7670_init(void);

/************************** MAIN PROGRAM ************************************/
int CameraTest(void)
{
    init_platform();

	uint32_t sts;

	sts = do_init();
	if (XST_SUCCESS != sts)
	{
		exit(1);
	}

	microblaze_enable_interrupts();

	// Initialize Camera
	OV7670_init();

	while (1)
	{
		u32 btnU = 0;
		u32 btnC = 0;
		u32 btnD = 0;
		u32 btnU_last = 0;
		u32 btnC_last = 0;
		u32 btnD_last = 0;

		btnC = NX4IO_isPressed(BTNC);
		if (btnC && !btnC_last)
		{
			OV7670_freeze();
		}

		btnU = NX4IO_isPressed(BTNU);
		if (btnU && !btnU_last)
		{
			OV7670_unfreeze();
		}

		btnD = NX4IO_isPressed(BTND);
		if (btnD && !btnD_last)
		{
			u32 address = 0;

			for(int i = 0; i < FRAME_MAX_ADDRESS; i++)
			{
				OV7670_setFrame(address);
				OV7670_getFrame();
				address += 1;
			}
			xil_printf("button down\n");
		}

		btnC_last = btnC;
		btnU_last = btnU;
		btnD_last = btnD;

		usleep(5000 * 1000);

	}

	usleep(5000 * 1000);
	
	// cleanup and exit
    cleanup_platform();
    exit(0);
}

/****************************************************************************/
/**
Setup the OV7670 camera by initializing the registers
*****************************************************************************/
void OV7670_init(void)
{
	OV7670_setup(0x1280);
	OV7670_setup(0x1280);
	OV7670_setup(0x1204);
	OV7670_setup(0x0c00); // test 0c08
	OV7670_setup(0x1100);
	OV7670_setup(0x3e00);
	OV7670_setup(0x8c00);
	OV7670_setup(0x0400);
	OV7670_setup(0x40d0); // 40d0 or 10
	OV7670_setup(0x3a04);
	OV7670_setup(0x1418); // 1418 or 38
	OV7670_setup(0x4f40);
	OV7670_setup(0x5034);
	OV7670_setup(0x510c);
	OV7670_setup(0x5217);
	OV7670_setup(0x5329);
	OV7670_setup(0x5440);
	OV7670_setup(0x581e);
	OV7670_setup(0x3dc0);
	OV7670_setup(0x1100);
	OV7670_setup(0x1711);
	OV7670_setup(0x1861);
	OV7670_setup(0x32a4);
	OV7670_setup(0x1903);
	OV7670_setup(0x1a7b);
	OV7670_setup(0x030a);

	OV7670_setup(0x1e00);
	OV7670_setup(0x330b);
	OV7670_setup(0x3c78);
	OV7670_setup(0x6900);
	OV7670_setup(0x7410);
	OV7670_setup(0xb084);
	OV7670_setup(0xb10c);
	OV7670_setup(0xb20e);
	OV7670_setup(0xb382);

	OV7670_setup(0x703a);
	OV7670_setup(0x7135);
	OV7670_setup(0x7211);
	OV7670_setup(0x73f0);
	OV7670_setup(0xa202);

	OV7670_setup(0x7a20);
	OV7670_setup(0x7b10);
	OV7670_setup(0x7c1e);
	OV7670_setup(0x7d35);
	OV7670_setup(0x7e5a);
	OV7670_setup(0x7f69);
	OV7670_setup(0x8076);
	OV7670_setup(0x8180);
	OV7670_setup(0x8288);
	OV7670_setup(0x838f);
	OV7670_setup(0x8496);
	OV7670_setup(0x85a3);
	OV7670_setup(0x86af);
	OV7670_setup(0x87c4);
	OV7670_setup(0x88d7);
	OV7670_setup(0x89e8);

	OV7670_setup(0x13e0);
	OV7670_setup(0x0000);
	OV7670_setup(0x1000);
	OV7670_setup(0x0d40);
	OV7670_setup(0x1418);
	OV7670_setup(0xa505);
	OV7670_setup(0xab07);
	OV7670_setup(0x2495);
	OV7670_setup(0x2533);
	OV7670_setup(0x26e3);
	OV7670_setup(0x9f78);
	OV7670_setup(0xa068);
	OV7670_setup(0xa103);
	OV7670_setup(0xa6d8);
	OV7670_setup(0xa7d8);
	OV7670_setup(0xa8f0);
	OV7670_setup(0xa990);
	OV7670_setup(0xaa94);
	OV7670_setup(0x13e5);
	OV7670_setup(0x13e5);
	OV7670_setup(0x13e5);
	OV7670_setup(0xffff);

}
