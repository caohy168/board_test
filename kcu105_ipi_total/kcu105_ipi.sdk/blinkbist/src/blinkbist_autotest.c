/******************************************************************************
*
* (c) Copyright 2005-2015 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
******************************************************************************/

/*****************************************************************************/
/**
* @file blinkbist_autotest.c
*
*****************************************************************************/

/***************************** Include Files ********************************/

#include "xparameters.h"
#include "xgpio.h"
#include "stdio.h"
#include "xstatus.h"
#include "xil_types.h"
#include "xil_io.h"
#include "xiic.h"

/************************** Constant Definitions ****************************/
// CLOCK TEST
#define SYSCLK_300          XPAR_CLOCK_COUNTER_SYSCLK300_GPIO_BASEADDR
#define CLK_125MHZ          XPAR_CLOCK_COUNTER_CLK_125MHZ_GPIO_BASEADDR
#define EMCCLK              XPAR_CLOCK_COUNTER_EMCCLK_GPIO_BASEADDR

#define SYSCLK1_MASK        0x00000001
#define SYSCLK2_MASK        0x00000002
#define CLK_125_MASK        0x00000004
#define EMCCLK_MASK         0x00000008
#define CLOCK_ALL_MASK      0x0000000F

// IIC TEST
#define IIC_BASE_ADDRESS XPAR_IIC_0_BASEADDR
#define IIC_ADDR_MUX1 0x74
#define IIC_ADDR_MUX2 0x75

#define IIC_ADDR_SI570         0x5D
#define IIC_ADDR_PORT_EXPANDER 0x21
#define IIC_ADDR_QSFP          0x50
#define IIC_ADDR_SI5328        0x68
#define IIC_ADDR_HDMI          0x39
#define IIC_ADDR_SYSMON        0x32


#define MUX1_SI570         0x01
#define MUX1_PORT_EXPANDER 0x02
#define MUX1_QSFP          0x04
#define MUX1_NC1           0x08
#define MUX1_SI5328        0x10
#define MUX1_HDMI          0x20
#define MUX1_SYSMON        0x40
#define MUX1_NC2           0x80

#define IIC_ADDR_EEPROM    0x54

#define MUX2_PMBUS         0x04
#define MUX2_HPC0          0x05
#define MUX2_HPC1          0x06
#define MUX2_EEPROM        0x07

#define IIC_SI570_MASK     0x01
#define IIC_SI5328_MASK    0x02
#define IIC_HDMI_MASK      0x04
#define IIC_EEPROM_MASK    0x08
#define IIC_NC1_MASK       0x10
#define IIC_NC2_MASK       0x20
#define IIC_ALL_MASK       0x3F


#define DELAY_LOOP {for(_delay_value=0;_delay_value<10000;_delay_value++);}
volatile int _delay_value;
#define MAX_IIC_RETRY 3

// BRAM TEST
#define BRAM_TEST_START_ADDR 0xC00F0000
#define BRAM_TEST_END_ADDR   0xC00FFFFF
#define BRAM_MAX_PATTERNS 4
#define BRAM_ALL_MASK 0x0000000F

/**************************** Type Definitions ******************************/

/***************** Macros (Inline Functions) Definitions *******************/

/************************** Function Prototypes ****************************/

// Test in blink_ddr_test.c
extern int blink_ddr(void);

int set_iic_mux(u8 mux_iic_addr, u8 mux_port);

/************************** Variable Definitions **************************/

int clock_test()
{

    int clock_status;
    float SYSCLK_300_u;
    float CLK_125MHZ_u;
    float EMCCLK_u;

    // Take the number directly from the AXI GPIO address and scale it.
    // Scaling 0xFFF = 4095; this is the number of counts with a 100 MHz Clock inout and 100 Mhz Refclk.
    // 1/4095 * 100 (MHz) = 0.02442002442002442
    // 100 MHz Reference Clock
    // SGMII Clock tested by SGMII LVDS interface.
    // SYSCLK1_300 is using a 200 MHz clock from the Clocking Wizard.


    SYSCLK_300_u           = ((*(u32 *)SYSCLK_300         ) * 0.02442002442002442 * 3);
    CLK_125MHZ_u           = ((*(u32 *)CLK_125MHZ         ) * 0.02442002442002442);
    EMCCLK_u               = ((*(u32 *)EMCCLK             ) * 0.02442002442002442);

    clock_status = 0;
    if ( (SYSCLK_300_u >= 299) && (SYSCLK_300_u <= 301) ) {
        clock_status |= SYSCLK1_MASK;
    } else {
        clock_status &= ~SYSCLK1_MASK;
        //xil_printf("BIST: SYSCLK1_300 out of range\n\r");
        //xil_printf("BIST: SYSCLK1_300 = %d MHz\n\r", SYSCLK_300_u);
    }

    clock_status |= SYSCLK2_MASK;

    if ( (CLK_125MHZ_u >= 124) && (CLK_125MHZ_u <= 126) ) {
        clock_status |= CLK_125_MASK;
    } else {
        clock_status &= ~CLK_125_MASK;
        //xil_printf("BIST: CLK_125 out of range\n\r");
        //xil_printf("BIST: CLK_125 = %d MHz\n\r", CLK_125MHZ_u);
    }

    if ( (EMCCLK_u >= 89) && (EMCCLK_u <= 91) ) {
        clock_status |= EMCCLK_MASK;
    } else {
        clock_status &= ~EMCCLK_MASK;
        //xil_printf("BIST: EMCCLK out of range\n\r");
    }

    //xil_printf("BIST: clocks_status = 0x%02X\n\r", clock_status);

    if ( (clock_status & CLOCK_ALL_MASK) == CLOCK_ALL_MASK ) {
        return XST_SUCCESS;
    } else {
        return XST_FAILURE;
    }
}



// Test 2
int ddr_test() {
    int ddr_status;

    ddr_status = blink_ddr();
    //xil_printf("Results = 0x%02X\n\r", results);
    if ( ddr_status == 0x00 ) {
        //xil_printf("return XST_SUCCESS\n\r");
        return XST_SUCCESS;
    } else {
        //xil_printf("return XST_FAILURE\n\r");
        return XST_FAILURE;
    }
}


// Test 3
int bram_test() {
    int i;
    u32 bram_status;
    u32 *bram_addr;
    u32 pattern[BRAM_MAX_PATTERNS];
    u32 pass_fail_mask[BRAM_MAX_PATTERNS];

    pattern[0] = 0x00000000;
    pattern[1] = 0xFFFFFFFF;
    pattern[2] = 0xAAAAAAAA;
    pattern[3] = 0x55555555;

    pass_fail_mask[0] = 0x00000001;
    pass_fail_mask[1] = 0x00000002;
    pass_fail_mask[2] = 0x00000004;
    pass_fail_mask[3] = 0x00000008;


    bram_status = 0x0000000F; // initialize to all pass
    for ( i = 0; i < BRAM_MAX_PATTERNS; i++) {
		for ( bram_addr = (u32*)BRAM_TEST_START_ADDR; bram_addr < (u32*)BRAM_TEST_END_ADDR; bram_addr++) {
			*bram_addr = pattern[i];
		}
		for ( bram_addr = (u32*)BRAM_TEST_START_ADDR; bram_addr < (u32*)BRAM_TEST_END_ADDR; bram_addr++) {
			if ( *bram_addr != pattern[i] ) {
				bram_status &= ~pass_fail_mask[i];
				break;
			}
		}
    }

    //xil_printf("BIST: bram_status = 0x%02X\n\r", bram_status);

    if ( (bram_status & BRAM_ALL_MASK) == BRAM_ALL_MASK ) {
    	return XST_SUCCESS;
    } else {
    	return XST_FAILURE;
    }
}


// Test 4
// Awaiting implementation in 2015.3
int flash_test() {
	return XST_SUCCESS;
}


// Test 5
int iic_test(void)
{
	int iic_status;
	u8 ReadBuffer;
	volatile unsigned bytes_received;
	int Status;

	iic_status = 0;

    Status = set_iic_mux( IIC_ADDR_MUX1, MUX1_SI570);
    if (Status == XST_FAILURE) {return XST_FAILURE;}
    DELAY_LOOP
    bytes_received = XIic_Recv(IIC_BASE_ADDRESS, IIC_ADDR_SI570, &ReadBuffer, 1, XIIC_STOP);
    if ( bytes_received == 1) {
    	iic_status |= IIC_SI570_MASK;
    } else {
        iic_status &= ~IIC_SI570_MASK;
    }

    Status = set_iic_mux( IIC_ADDR_MUX1, MUX1_NC1);
    if (Status == XST_FAILURE) {return XST_FAILURE;}
    DELAY_LOOP
    bytes_received = XIic_Recv(IIC_BASE_ADDRESS, IIC_ADDR_SI570, &ReadBuffer, 1, XIIC_STOP);
    if ( bytes_received == 0) {
    	iic_status |= IIC_NC1_MASK;
    } else {
        iic_status &= ~IIC_NC1_MASK;
    }

    Status = set_iic_mux( IIC_ADDR_MUX1, MUX1_SI5328);
    if (Status == XST_FAILURE) {return XST_FAILURE;}
    DELAY_LOOP
    bytes_received = XIic_Recv(IIC_BASE_ADDRESS, IIC_ADDR_SI5328, &ReadBuffer, 1, XIIC_STOP);
    if ( bytes_received == 1) {
    	iic_status |= IIC_SI5328_MASK;
    } else {
        iic_status &= ~IIC_SI5328_MASK;
    }

    Status = set_iic_mux( IIC_ADDR_MUX1, MUX1_HDMI);
    if (Status == XST_FAILURE) {return XST_FAILURE;}
    DELAY_LOOP
    bytes_received = XIic_Recv(IIC_BASE_ADDRESS, IIC_ADDR_HDMI, &ReadBuffer, 1, XIIC_STOP);
    if ( bytes_received == 1) {
    	iic_status |= IIC_HDMI_MASK;
    } else {
        iic_status &= ~IIC_HDMI_MASK;
    }

    Status = set_iic_mux( IIC_ADDR_MUX1, MUX1_NC2);
    if (Status == XST_FAILURE) {return XST_FAILURE;}
    DELAY_LOOP
    bytes_received = XIic_Recv(IIC_BASE_ADDRESS, IIC_ADDR_SI570, &ReadBuffer, 1, XIIC_STOP);
    if ( bytes_received == 0) {
    	iic_status |= IIC_NC2_MASK;
    } else {
        iic_status &= ~IIC_NC2_MASK;
    }

    Status = set_iic_mux( IIC_ADDR_MUX2, MUX2_EEPROM);
    if (Status == XST_FAILURE) {return XST_FAILURE;}
    DELAY_LOOP
    bytes_received = XIic_Recv(IIC_BASE_ADDRESS, IIC_ADDR_EEPROM, &ReadBuffer, 1, XIIC_STOP);
    if ( bytes_received == 1) {
    	iic_status |= IIC_EEPROM_MASK;
    } else {
        iic_status &= ~IIC_EEPROM_MASK;
    }

    //xil_printf("BIST: iic_status = 0x%02X\n\r", iic_status);

    if ( (iic_status & IIC_ALL_MASK) == IIC_ALL_MASK ) {
    	return XST_SUCCESS;
    } else {
    	return XST_FAILURE;
    }
}

int set_iic_mux(u8 mux_iic_addr, u8 mux_port)
{
	u8 mux_setting;
	volatile unsigned bytes_sent;
	volatile u32 StatusReg;
	int retry_count;

    retry_count = 0;
	mux_setting = mux_port;
	do {
		StatusReg = XIic_ReadReg(IIC_BASE_ADDRESS, XIIC_SR_REG_OFFSET);
		if(!(StatusReg & XIIC_SR_BUS_BUSY_MASK)) {
			bytes_sent = XIic_Send(IIC_BASE_ADDRESS,
							mux_iic_addr,
							(u8 *)&mux_setting,
							sizeof(mux_setting),
							XIIC_STOP);

			if (bytes_sent != sizeof(mux_setting)) {

				/* Send is aborted so reset Tx FIFO */
				XIic_WriteReg(IIC_BASE_ADDRESS,
						XIIC_CR_REG_OFFSET,
						XIIC_CR_TX_FIFO_RESET_MASK);
				XIic_WriteReg(IIC_BASE_ADDRESS,
						XIIC_CR_REG_OFFSET,
						XIIC_CR_ENABLE_DEVICE_MASK);
			    retry_count++;
			}
		}
	} while (bytes_sent != sizeof(mux_setting) && (retry_count < MAX_IIC_RETRY));

	if ( retry_count >= MAX_IIC_RETRY) {
		return XST_FAILURE;
	} else {
		return XST_SUCCESS;
	}

}
