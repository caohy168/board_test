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


#include "xparameters.h"
#include <stdio.h>
#include <stdlib.h>
#include "xgpio.h"
#include "xil_types.h"
#include "xuartns550_l.h"
//#include "xil_sprintf.h"


#ifndef UART_BASEADDR
#define UART_BASEADDR XPAR_UARTNS550_0_BASEADDR
#endif
#define UART_CLOCK    XPAR_UARTNS550_0_CLOCK_FREQ_HZ

#if SIM
#define UART_BAUDRATE (UART_CLOCK / 16 / 3)     /* simulation */
#endif

#define	XGpio_mSetDataReg		XGpio_WriteReg
#define	XGpio_mGetDataReg		XGpio_ReadReg
#define	XGpio_mSetDataDirection	XGpio_WriteReg

#define XPAR_ROTARY_GPIO_BASEADDR XPAR_ROTARY_SWITCH_BASEADDR
#define Button_Data 0x2
#define CW_Data 0x1
#define CCW_Data 0x4
#define CW_CCW_Mask 0x5

#define	DIR_LEFT	(-1)
#define	DIR_RIGHT	(+1)

// Main Loop
int hello_rotary(void)
{

    unsigned int data;
    int pulses=0, dir=0;
    char button=0;
    char button_pressed_print=0;
    char button_released_print=1;

	/***
    XUartNs550_SetBaud(UART_BASEADDR, UART_CLOCK, UART_BAUDRATE);
    XUartNs550_mSetLineControlReg(UART_BASEADDR, XUN_LCR_8_DATA_BITS);
    ***/

    xil_printf("\n\r********************************************************");
    xil_printf("\n\r********************************************************");
    xil_printf("\n\r**            KCU105 - Rotary Switch Test             **");
    xil_printf("\n\r********************************************************");
    xil_printf("\n\r********************************************************\r\n");
    xil_printf("Watch the ROTARY pulses count:\r\n");

    xil_printf("press any key to exit the test\r\n");
    XUartNs550_ReadReg(STDIN_BASEADDRESS, XUN_RBR_OFFSET);

    //set GPIO input mode
	XGpio_mSetDataReg(XPAR_ROTARY_GPIO_BASEADDR, 4, 0xffffffff);

	while(1)
	{
		/////////////////////////////////////
		// STATE 1: Get the direction pulse
		do
		{
			data = XGpio_mGetDataReg(XPAR_ROTARY_GPIO_BASEADDR, 0);
			//xil_printf("data =  %x\r\n", data);
		/////////////////////////////////////
		// Check for button press or release - print once in either case
			if((data & Button_Data) && (button == 0) && (button_pressed_print == 0))
			{
				button=1;
				xil_printf("Button pressed  [Exit: press anykey]\r\n");
				button_pressed_print = 1;
				button_released_print = 0;
			}
			if( !(data & Button_Data) && (button == 1) && (button_released_print == 0))
			{
				button=0;
				xil_printf("Button released  [Exit: press anykey]\r\n");
				button_pressed_print = 0;
				button_released_print = 1;
			}
			
			// get hold of a pulse that tells one of below
			// 		bits 2,0 = 01 Left rotation
			//		bits 2,0 = 10 Right rotation
			//		bit 1     =  1 button press

			if(data & CW_Data)
			{
				dir = DIR_LEFT;
				break;
			}
			if(data & CCW_Data)
			{
				dir = DIR_RIGHT;
				break;
			}

			if( XUartNs550_IsReceiveData(STDIN_BASEADDRESS) )
				break;

		} while( (data & CW_CCW_Mask) == 0);

		//////////////////////////////////////////////
		// STATE 2: Get the pulses from both switches
		do
		{
		// Catch button pushes during State 2
			if((data & Button_Data) && (button == 0) && (button_pressed_print == 0))
			{
				button=1;
				xil_printf("Button pressed  [Exit: press anykey]\r\n");
				button_pressed_print = 1;
				button_released_print = 0;
			}
			if( !(data & Button_Data) && (button == 1) && (button_released_print == 0))
			{
				button=0;
				xil_printf("Button released  [Exit: press anykey]\r\n");
				button_pressed_print = 0;
				button_released_print = 1;
			}
			data = XGpio_mGetDataReg(XPAR_ROTARY_GPIO_BASEADDR, 0);
			if( XUartNs550_IsReceiveData(STDIN_BASEADDRESS) )
				break;

		} while( ( (data & CW_CCW_Mask) != CW_CCW_Mask ));

		/////////////////////////////////////////////////////
		// STATE 3: Get the pulses from both switches to NULL
		do
		{
		// Catch button pushes during State 3
			if((data & Button_Data) && (button == 0) && (button_pressed_print == 0))
			{
				button=1;
				xil_printf("Button pressed  [Exit: press anykey]\r\n");
				button_pressed_print = 1;
				button_released_print = 0;
			}
			if( !(data & Button_Data) && (button == 1) && (button_released_print == 0))
			{
				button=0;
				xil_printf("Button released  [Exit: press anykey]\r\n");
				button_pressed_print = 0;
				button_released_print = 1;
			}
			data = XGpio_mGetDataReg(XPAR_ROTARY_GPIO_BASEADDR, 0);
			if( XUartNs550_IsReceiveData(STDIN_BASEADDRESS) )
				break;
		} while( (data & CW_CCW_Mask) != 0);

		// PRESS ANY KEY TO EXIT
		if( XUartNs550_IsReceiveData(STDIN_BASEADDRESS) )
			break;

		// RESULT TO USER
		pulses += dir;
		xil_printf("%s-%d  [Exit: press anykey]\r\n",
				(dir==DIR_RIGHT) ? "Right" : "Left",
				abs(pulses) );
	}
	XUartNs550_ReadReg(STDIN_BASEADDRESS, XUN_RBR_OFFSET);

	return 0;
}
