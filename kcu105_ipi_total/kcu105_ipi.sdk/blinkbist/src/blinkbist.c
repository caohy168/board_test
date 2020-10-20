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

/*
 * blinkbist.c: simple test application
 *
 * This application specifically doesn't use the UART, depening on LEDs
 * to show that tests are being run.
 */

#include <stdio.h>
#include <stdlib.h>
#include "platform.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xstatus.h"
#include "xtmrctr.h"
//#include "xtmrctr_i.h"
//#include "xtmrctr_l.h"
#include "xil_exception.h"
#include "xintc.h"

#define GPIO_CHAN_1 1
#define GPIO_CHAN_2 2
#define BIST_DELAY  {for (delay = 0; delay < 10000000; delay++);}
#define BIST_DELAY2 {for (delay = 0; delay < 5000000; delay++);}
#define BIST_DELAY2B {for (delay = 0; delay < 2500000; delay++);}
#define BIST_DELAY2C {for (delay = 0; delay < 1250000; delay++);}
#define BIST_DELAY2D {for (delay = 0; delay < 750000; delay++);}
#define BIST_DELAY3 {for (delay = 0; delay < 500000; delay++);}
#define BIST_DELAY4 {for (delay = 0; delay < 20000; delay++);}
#define BIST_DELAY5 {for (delay = 0; delay < 15000; delay++);}
#define BIST_DELAY6 {for (delay = 0; delay < 10000; delay++);}
#define BIST_DELAY7 {for (delay = 0; delay < 5000; delay++);}
#define BIST_DELAY8 {for (delay = 0; delay < 2000; delay++);}
#define BIST_DELAY9 {for (delay = 0; delay < 1000; delay++);}
#define BIST_DELAY10 {for (delay = 0; delay < 500; delay++);}
#define BIST_DELAY11 {for (delay = 0; delay < 200; delay++);}

//#define XPAR_GPIO_DIPS_DEVICE_ID      XPAR_GPIO_DIP_SW_DEVICE_ID
//#define XPAR_GPIO_PB_DEVICE_ID        XPAR_GPIO_PUSHBUTTON_SW_DEVICE_ID
//#define XPAR_GPIO_ROTARY_DEVICE_ID    XPAR_GPIO_ROTARY_SW_DEVICE_ID
//#define XPAR_GPIO_LED_DEVICE_ID       XPAR_AXI_GPIO_1_DEVICE_ID

// Automatically run tests
#define CLOCK_TEST_PASSED 0x80
#define DDR_TEST_PASSED   0x40
#define BRAM_TEST_PASSED  0x20
#define FLASH_TEST_PASSED 0x10
#define IIC_TEST_PASSED   0x08


// User input tests
#define DIP_LED_MASK    0x04
#define PB_LED_MASK     0x02
#define ROTARY_LED_MASK 0x01

#define DIP_LED_SHIFT 2
#define PB_LED_SHIFT 1
#define ROTARY_LED_SHIFT 0

#define PB_ALL_MASK      0x0000001F
#define PB_NORTH_MASK    0x00000010
#define PB_EAST_MASK     0x00000008
#define PB_SOUTH_MASK    0x00000004
#define PB_WEST_MASK     0x00000002
#define PB_CENTER_MASK   0x00000001

#define DIP_ALL_MASK     0x0000000F
#define DIP_SW1_MASK     0x00000001
#define DIP_SW2_MASK     0x00000002
#define DIP_SW3_MASK     0x00000004
#define DIP_SW4_MASK     0x00000008

#define ROTARY_A_MASK    0x00000001
#define ROTARY_B_MASK    0x00000004
#define ROTARY_PUSH_MASK 0x00000002

#define XPAR_ROTARY_GPIO_BASEADDR XPAR_ROTARY_SWITCH_BASEADDR
#define Button_Data      0x2
#define CW_Data          0x1
#define CCW_Data         0x4
#define CW_CCW_Mask      0x5

#define	XGpio_mSetDataReg		XGpio_WriteReg
#define	XGpio_mGetDataReg		XGpio_ReadReg
#define	XGpio_mSetDataDirection		XGpio_WriteReg

#define TMRCTR_DEVICE_ID	XPAR_TMRCTR_0_DEVICE_ID
#define TMRCTR_INTERRUPT_ID	XPAR_INTC_0_TMRCTR_0_VEC_ID

#define INTC_DEVICE_ID		XPAR_INTC_0_DEVICE_ID
	
#define TIMER_CNTR_0	 0
#define SLOW_BLINK	 0xFC000000
#define FAST_BLINK	 0xFF000000

#define INTC		XIntc
#define INTC_HANDLER	XIntc_InterruptHandler

/************************** Function Prototypes ******************************/

int TmrCtrIntrExample(INTC* IntcInstancePtr,
			XTmrCtr* InstancePtr,
			u16 DeviceId,
			u16 IntrId,
			u8 TmrCtrNumber);

static int TmrCtrSetupIntrSystem(INTC* IntcInstancePtr,
				XTmrCtr* InstancePtr,
				u16 DeviceId,
				u16 IntrId,
				u8 TmrCtrNumber);

void Timer1CounterHandler(void *CallBackRef, u8 TmrCtrNumber);

void TmrCtrDisableIntr(INTC* IntcInstancePtr, u16 IntrId);

XGpio BIST_dip;
XGpio BIST_pb;
XGpio BIST_rotary;
XGpio BIST_led;

INTC InterruptController;  /* The instance of the Interrupt Controller */

XTmrCtr TimerCounterInst;   /* The instance of the Timer Counter */

// Outside of main function
volatile int TimerExpired;
volatile int dip_done;
volatile int pb_done;
volatile int rotary_done;
volatile u32 led_data;
volatile int blink_led_on;
//volatile int blink_mig;
volatile int blink_dip;
volatile int blink_pb;
volatile int blink_rotary;

//void print(char *str);

// Tests in blinkbist_autotest.c
extern int clock_test(void);
extern int ddr_test(void);
extern int bram_test(void);
extern int flash_test(void);
extern int iic_test(void);



int blinkbist(void)
 {
	int Status;
	int i;
    	volatile u32 done;
	volatile int delay;

	volatile u32 dip_data;
	volatile int dip_sw4;
	volatile int dip_sw3;
	volatile int dip_sw2;
	volatile int dip_sw1;

	volatile u32 pb_data;
	volatile int pb_north;
	volatile int pb_east;
	volatile int pb_south;
	volatile int pb_west;
	volatile int pb_center;

	volatile u32 rotary_data;
	volatile u32 rotary_button_data;
	volatile u32 data1;
	volatile u32 data2;
	volatile int rotary_start;
	volatile int rotary_left;
	volatile int rotary_right;
	volatile int rotary_push;
	volatile int rotary_release;
//	volatile int previous_state;

	enum  {
		state00,
		state010,
		state01,
		state040,
		state04,
		state05,
		state14,
		state150,
		state151,
		state1540,
		state1541,
		state154,
		state1545,
		state15,
		state41,
		state450,
		state45,
		state4510,
		state451,
		state4514,
		state4515,
		state454
	} rotary_state;

	enum  {
		buttonstate0,
		buttonstate01,
		buttonstate011,
		buttonstate010
	} button_state;

	// Timer initialization for LED Blinking via interrupts
	Status = XTmrCtr_Initialize(&TimerCounterInst, TIMER_CNTR_0);
	Status = XTmrCtr_SelfTest(&TimerCounterInst, TIMER_CNTR_0);

	Status = TmrCtrSetupIntrSystem(&InterruptController,
					&TimerCounterInst,
					TMRCTR_DEVICE_ID,
					TMRCTR_INTERRUPT_ID,
					TIMER_CNTR_0);

	XTmrCtr_SetHandler(&TimerCounterInst, Timer1CounterHandler, &TimerCounterInst);
	XTmrCtr_SetOptions(&TimerCounterInst, TIMER_CNTR_0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);
	XTmrCtr_SetResetValue(&TimerCounterInst, TIMER_CNTR_0, SLOW_BLINK);
	XTmrCtr_Start(&TimerCounterInst, TIMER_CNTR_0);

	//xil_printf("BIST: Starting Built In Self Test\r\n");
	//DIP Switch
	Status = XGpio_Initialize(&BIST_dip, XPAR_DIP_SWITCHES_4BITS_DEVICE_ID);
	if (Status != XST_SUCCESS) {
	     return XST_FAILURE;
	}
	XGpio_SetDataDirection(&BIST_dip, GPIO_CHAN_1, 0xFFFFFFFF); // All inputs

	//PushButtons
	Status = XGpio_Initialize(&BIST_pb, XPAR_PUSH_BUTTONS_5BITS_DEVICE_ID);
	if (Status != XST_SUCCESS) {
	     return XST_FAILURE;
	}
	XGpio_SetDataDirection(&BIST_pb, GPIO_CHAN_1, 0xFFFFFFFF); // All inputs

	 //Rotary Switch
	Status = XGpio_Initialize(&BIST_rotary, XPAR_ROTARY_SWITCH_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		 return XST_FAILURE;
	}
	XGpio_SetDataDirection(&BIST_rotary, GPIO_CHAN_1, 0xFFFFFFFF); // All inputs

	//GPIO LEDs
	Status = XGpio_Initialize(&BIST_led, XPAR_LED_8BITS_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		 return XST_FAILURE;
	}
	XGpio_SetDataDirection(&BIST_led, GPIO_CHAN_1, 0x00000000); // All outputs

	for( i = 0; i < 3; i++ ) {
	     XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, 0xFFFFFFFF);
	     BIST_DELAY2
	     XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, 0x00000000);
	     BIST_DELAY2
	}
	XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, 0xFFFFFFFF);
	BIST_DELAY2
	XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, 0xE7);
	BIST_DELAY2
	XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, 0xC3);
	BIST_DELAY2
	XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, 0x81);
	BIST_DELAY2
	XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, 0x00);
	BIST_DELAY2

	////Set automatically run test result status as all passed
	//// Test 1
	//XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, 0x80);
	//BIST_DELAY2
	//
	//// Test 2
	//XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, 0xC0);
	//BIST_DELAY2
	//
	//// Test 3
	//XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, 0xE0);
	//BIST_DELAY2
	//
	//// Test 4
	//XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, 0xF0);
	//BIST_DELAY2
	//
	//// Test 5
	//XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, 0xF8);
	//BIST_DELAY2
	//
	////capturing current state of LEDs
	//led_data = 0xF8;

	led_data = 0;
	// Test 1
//	xil_printf("BlinkBIST: Start Test 1: Clocking\n\r");

	Status = clock_test();
	if ( Status == XST_SUCCESS ) {
	    led_data = led_data | CLOCK_TEST_PASSED;
	} else {
	    led_data = led_data & ~CLOCK_TEST_PASSED;
	}
	XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data);
	BIST_DELAY2
	
	// Test 2
//	xil_printf("BlinkBIST: Start Test 2: DDR4\n\r");
//	blink_mig = 1;
//	XTmrCtr_SetResetValue(&TimerCounterInst, TIMER_CNTR_0, SLOW_BLINK);
	Status = ddr_test();
	//xil_printf("BlinkBIST: Status = %d\n\r", Status);
	if ( Status == XST_SUCCESS ) {
	    led_data = led_data | DDR_TEST_PASSED;
	} else {
	    led_data = led_data & ~DDR_TEST_PASSED;
	}
//	blink_mig = 0;
	XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data);
	BIST_DELAY2
	
	// Test 3
//	xil_printf("BlinkBIST: Start Test 3: BRAM\n\r");
	Status = bram_test();
	if ( Status == XST_SUCCESS ) {
	    led_data = led_data | BRAM_TEST_PASSED;
	} else {
	    led_data = led_data & ~BRAM_TEST_PASSED;
	}
	XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data);
	BIST_DELAY2
	
	// Test 4
//	xil_printf("BlinkBIST: Start Test 4: Flash\n\r");
	Status = flash_test();
	if ( Status == XST_SUCCESS ) {
	    led_data = led_data | FLASH_TEST_PASSED;
	} else {
	    led_data = led_data & ~FLASH_TEST_PASSED;
	}
	XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data);
	BIST_DELAY2
	
	// Test 5
//	xil_printf("BlinkBIST: Start Test 5: IIC\n\r");
	Status = iic_test();
	if ( Status == XST_SUCCESS ) {
	    led_data = led_data | IIC_TEST_PASSED;
	} else {
	    led_data = led_data & ~IIC_TEST_PASSED;
	}
	XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data);
	BIST_DELAY2
	
	
	// User Input Tests
	pb_done = 0;
	dip_done = 0;
	rotary_done = 0;
	dip_sw4 = 0;
	dip_sw3 = 0;
	dip_sw2 = 0;
	dip_sw1 = 0;
	pb_north = 0;
	pb_east = 0;
	pb_south = 0;
	pb_west = 0;
	pb_center = 0;
	rotary_start = 0;
	rotary_left = 0;
	rotary_right = 0;
	rotary_push = 0;
	rotary_release = 0;
	done = 0;
	blink_dip = 0;
	blink_pb = 0;
	blink_rotary = 0;


        while ( !done ) {
		//////////////////////////////////////////////////////////////////////////////
        	// User DIP switch test
        	if ( !dip_done ) {
			blink_dip = 1;
			blink_pb = 0;
			blink_rotary = 0;
			
			dip_sw4 = 0;
			dip_sw3 = 0;
			dip_sw2 = 0;
			dip_sw1 = 0;

			XTmrCtr_SetResetValue(&TimerCounterInst, TIMER_CNTR_0, SLOW_BLINK);
			// Wait until the user removes his finger from the Center Push Button
			do {
				pb_data = XGpio_DiscreteRead(&BIST_pb, GPIO_CHAN_1);
				pb_center = pb_data & PB_CENTER_MASK;
			} while (pb_center != 0);
			
			do {
				dip_data = XGpio_DiscreteRead(&BIST_dip, GPIO_CHAN_1);
				pb_data = XGpio_DiscreteRead(&BIST_pb, GPIO_CHAN_1);
				pb_center = pb_data & PB_CENTER_MASK;
			} while ( ((dip_data & DIP_ALL_MASK) == 0) && (pb_center == 0) );

			while ( (!dip_done) && (pb_center == 0) ) {
				XTmrCtr_SetResetValue(&TimerCounterInst, TIMER_CNTR_0, FAST_BLINK);
				if ( dip_sw4 == 0x0 ) {dip_sw4 = dip_data & DIP_SW4_MASK;}
				if ( dip_sw3 == 0x0 ) {dip_sw3 = dip_data & DIP_SW3_MASK;}
				if ( dip_sw2 == 0x0 ) {dip_sw2 = dip_data & DIP_SW2_MASK;}
				if ( dip_sw1 == 0x0 ) {dip_sw1 = dip_data & DIP_SW1_MASK;}
				if ( (dip_sw4 | dip_sw3 | dip_sw2 | dip_sw1) == DIP_ALL_MASK) {
					dip_done = 1;
				}
				dip_data = XGpio_DiscreteRead(&BIST_dip, GPIO_CHAN_1);
				pb_data = XGpio_DiscreteRead(&BIST_pb, GPIO_CHAN_1);
				pb_center = pb_data & PB_CENTER_MASK;
			}
			blink_dip = 0;
        	}

        	//////////////////////////////////////////////////////////////////////////////
		// User pushbutton test
        	if ( !pb_done ) {
			blink_dip = 0;
			blink_pb = 1;
			blink_rotary = 0;
			pb_north = 0;
			pb_east = 0;
			pb_south = 0;
			pb_west = 0;
			pb_center = 0;
			//pb_done = 0;
			
			XTmrCtr_SetResetValue(&TimerCounterInst, TIMER_CNTR_0, SLOW_BLINK);

			// Wait until the user removes his finger from the Center Push Button
			do {
				pb_data = XGpio_DiscreteRead(&BIST_pb, GPIO_CHAN_1);
				pb_center = pb_data & PB_CENTER_MASK;
			} while (pb_center != 0);
			
			do {
				pb_data = XGpio_DiscreteRead(&BIST_pb, GPIO_CHAN_1);
				if( (pb_data & PB_ALL_MASK) != 0 ) {break;}
			} while ( (pb_data & PB_ALL_MASK) == 0);

			do {
				XTmrCtr_SetResetValue(&TimerCounterInst, TIMER_CNTR_0, FAST_BLINK);
				if ( pb_north  == 0x0 ) {pb_north  = pb_data & PB_NORTH_MASK;}
				if ( pb_east   == 0x0 ) {pb_east   = pb_data & PB_EAST_MASK;}
				if ( pb_south  == 0x0 ) {pb_south  = pb_data & PB_SOUTH_MASK;}
				if ( pb_west   == 0x0 ) {pb_west   = pb_data & PB_WEST_MASK;}
				if ( pb_center == 0x0 ) {pb_center = pb_data & PB_CENTER_MASK;}
				if ( (pb_north | pb_east | pb_south | pb_west | pb_center) == PB_ALL_MASK) {
				//if ( (pb_north | pb_east | pb_south | pb_west ) == 0x1E) {
					pb_done = 1;
				}
				if ( (pb_center) && (pb_done == 0) ) {break;}
				pb_data = XGpio_DiscreteRead(&BIST_pb, GPIO_CHAN_1);
			} while (!pb_done);
			blink_pb = 0;
        	}

		//////////////////////////////////////////////////////////////////////////////
        	// User Rotary switch test
        	if ( !rotary_done ) {
			blink_dip = 0;
			blink_pb = 0;
			blink_rotary = 1;
			rotary_left = 0;
			rotary_right = 0;
			rotary_push = 0;
			rotary_release = 0;
			rotary_start = 0;

			// Slow blink while waiting for either the rotary switch to move or the center Push Button to be pushed.
			// Put this before sampling the Center Push button so you know which test is active.
			XTmrCtr_SetResetValue(&TimerCounterInst, TIMER_CNTR_0, SLOW_BLINK);
			// Wait until the user removes his finger from the Center Push Button
			do {
				pb_data = XGpio_DiscreteRead(&BIST_pb, GPIO_CHAN_1);
				pb_center = pb_data & PB_CENTER_MASK;
			} while (pb_center != 0);
			
			do {
				rotary_data = XGpio_mGetDataReg(XPAR_ROTARY_GPIO_BASEADDR, 0);
				// Check for the center Push button.
				pb_data = XGpio_DiscreteRead(&BIST_pb, GPIO_CHAN_1);
				pb_center = pb_data & PB_CENTER_MASK;
				if( pb_center != 0 ) {break;}
				if (rotary_data != 0) {
					rotary_start = 1;
					break;
				}
			} while ( (rotary_start == 0) && (pb_center == 0) );


			// Set the initial states for the two state machines
			rotary_state = state00;
			button_state = buttonstate0;
			rotary_button_data = 0;
			rotary_data = 0;
			do {
				// Now Fast blink for test
				XTmrCtr_SetResetValue(&TimerCounterInst, TIMER_CNTR_0, FAST_BLINK);

				// Check for the center Push button
				pb_data = XGpio_DiscreteRead(&BIST_pb, GPIO_CHAN_1);
				pb_center = pb_data & PB_CENTER_MASK;
				if( pb_center != 0 ) {break;}

				// Quick debounce code
				data1 = XGpio_mGetDataReg(XPAR_ROTARY_GPIO_BASEADDR, 0);
				BIST_DELAY8
				data2 = XGpio_mGetDataReg(XPAR_ROTARY_GPIO_BASEADDR, 0);
				if ( ( data1 == data2 ) ) { 
					rotary_button_data = data1 & Button_Data; 
					rotary_data = data1 & CW_CCW_Mask; 
				}

				// Rotary Push state machine
				switch ( button_state ) {
					case buttonstate0:
						switch ( rotary_button_data ) {
							case 0: {button_state = buttonstate0; break;}
							case 2: {button_state = buttonstate01; break;}
						}
						break;
					// Temp state for the xil_printf statement
					case buttonstate01:
						//xil_printf("rotary_push =  1\r\n");
						button_state = buttonstate011;
						break;
					case buttonstate011:
						rotary_push = 1;
						switch ( rotary_button_data ) {
							case 0: {button_state = buttonstate010; break;}
							case 2: {button_state = buttonstate011; break;}
						}
						break;
					case buttonstate010:
						//xil_printf("rotary_release =  1\r\n");
						rotary_release = 1;
						button_state = buttonstate0;
						break;
				}

				// Rotary Switch state machine
				// Looks complicated, but essentialy it is looking for one of two patterns from the Rotary switch:
				// 0 -> 1 -> 5 -> 4 -> 0 for Left or Clockwise turns
				// 0 -> 4 -> 5 -> 1 -> 0 for Right or Counter-Clockwise turns
				// Any variation from these sequencies is probably due to switch bounce or rocking it back and forth between 
				// detents without going into either. These "invalid" states are rejected and the state machine returns to a base state.
				// For simplicity, handled the button pushes in a separate state machine.
				// These numbers will change if you hook the switch up differently.

				// Print only if the state changes
				//if (previous_state != rotary_state) {
				//	xil_printf("Rotary Test: rotary_state = %d\n\r", rotary_state);
				//	previous_state = rotary_state;
				//}

				switch ( rotary_state ) {
					case state00:
						switch ( rotary_data ) {
							case 0: {rotary_state = state00; break;}   // Base state
							case 1: {rotary_state = state01; break;}   // Valid
							case 4: {rotary_state = state04; break;}   // Valid
							case 5: {rotary_state = state05; break;}   // Invalid
						}
						break;
					case state01:
						switch ( rotary_data ) {
							case 0: {rotary_state = state010; break;}  // Invalid
							case 1: {rotary_state = state01; break;}   // No change
							case 4: {rotary_state = state14; break;}   // Invalid
							case 5: {rotary_state = state15; break;}   // Valid
						}
						break;
					case state04:
						switch ( rotary_data ) {
							case 0: {rotary_state = state040; break;}  // Invalid
							case 1: {rotary_state = state41; break;}   // Invalid
							case 4: {rotary_state = state04; break;}   // No change
							case 5: {rotary_state = state45; break;}   // Valid
						}
						break;
					case state15:
						switch ( rotary_data ) {
							case 0: {rotary_state = state150; break;}  // Invalid
							case 1: {rotary_state = state151; break;}  // Invalid
							case 4: {rotary_state = state154; break;}  // Valid
							case 5: {rotary_state = state15; break;}   // No change
						}
						break;
					case state45:
						switch ( rotary_data ) {
							case 0: {rotary_state = state450; break;}  // Invalid
							case 1: {rotary_state = state451; break;}  // Valid
							case 4: {rotary_state = state454; break;}  // Invalid
							case 5: {rotary_state = state45; break;}   // No change
						}
						break;
					case state154:
						switch ( rotary_data ) {
							case 0: {rotary_state = state1540; break;} // Return to the base state
							case 1: {rotary_state = state1541; break;} // Invalid
							case 4: {rotary_state = state154; break;}  // No change
							case 5: {rotary_state = state1545; break;} // Invalid
						}
						break;
					case state451:
						switch ( rotary_data ) {
							case 0: {rotary_state = state4510; break;} // Return to the base state
							case 1: {rotary_state = state451; break;}  // No change
							case 4: {rotary_state = state4514; break;} // Invalid
							case 5: {rotary_state = state4515; break;} // Invalid
						}
						break;
					case state1540:
						rotary_state = state00;
						//xil_printf("rotary_left =  1\r\n");
						rotary_left = 1;
						break;
					case state4510:
						rotary_state = state00;
						//xil_printf("rotary_right =  1\r\n");
						rotary_right = 1;
						break;
					default:
						break;
				}
				
				// If an invalid state occurs (probably mostly due to the need for better debouncing code) the rotary_state is reset.
				if ( (rotary_state == state05)   || (rotary_state == state010)  || (rotary_state == state040)  || (rotary_state == state14) || (rotary_state == state150) || 
				     (rotary_state == state151)  || (rotary_state == state1541) || (rotary_state == state1545) || (rotary_state == state41) || (rotary_state == state450) || 
				     (rotary_state == state4514) || (rotary_state == state4515) || (rotary_state == state454) ) {
					rotary_state = state00;
					}
			
				if ( (rotary_push == 1) && (rotary_release == 1) && (rotary_left == 1) && (rotary_right == 1) ) {
					rotary_done = 1;
				}
				if ( (pb_center) && (pb_done == 0) ) {break;}
			// Are we done with the rotary test?
			// But ever mindful of the Center Push button.
			} while (!rotary_done);
			// OK, we exited; either we passed the test or the center PB was pushed. 
			// Reset the states in case if was from the Center Push Button.
			blink_rotary = 0;
			rotary_left = 0;
			rotary_right = 0;
			rotary_push = 0;
			rotary_release = 0;
			rotary_start = 0;
		}
		
		if( (pb_done == 1) && (dip_done == 1) && (rotary_done == 1) ) {
			done = 1;
		}

	}

        XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data | (pb_done << PB_LED_SHIFT) | (dip_done << DIP_LED_SHIFT) | (rotary_done << ROTARY_LED_SHIFT) );

	// Probably a good idea to disable the interrupts prior to running the BIST test.
	TmrCtrDisableIntr(&InterruptController, TMRCTR_DEVICE_ID);

	return XST_SUCCESS;
}


/*****************************************************************************/
/**
* This function setups the interrupt system such that interrupts can occur
* for the timer counter. This function is application specific since the actual
* system may or may not have an interrupt controller.  The timer counter could
* be directly connected to a processor without an interrupt controller.  The
* user should modify this function to fit the application.
*
* @param	IntcInstancePtr is a pointer to the Interrupt Controller
*		driver Instance.
* @param	TmrCtrInstancePtr is a pointer to the XTmrCtr driver Instance.
* @param	DeviceId is the XPAR_<TmrCtr_instance>_DEVICE_ID value from
*		xparameters.h.
* @param	IntrId is XPAR_<INTC_instance>_<TmrCtr_instance>_VEC_ID
*		value from xparameters.h.
* @param	TmrCtrNumber is the number of the timer to which this
*		handler is associated with.
*
* @return	XST_SUCCESS if the Test is successful, otherwise XST_FAILURE.
*
* @note		This function contains an infinite loop such that if interrupts
*		are not working it may never return.
*
******************************************************************************/
static int TmrCtrSetupIntrSystem(INTC* IntcInstancePtr,
				 XTmrCtr* TmrCtrInstancePtr,
				 u16 DeviceId,
				 u16 IntrId,
				 u8 TmrCtrNumber)
{
	 int Status;

#ifdef XPAR_INTC_0_DEVICE_ID
#ifndef TESTAPP_GEN

	if (InterruptController.IsStarted == XIL_COMPONENT_IS_STARTED) {
		return XST_SUCCESS;
	}
	/*
	 * Initialize the interrupt controller driver so that
	 * it's ready to use, specify the device ID that is generated in
	 * xparameters.h
	 */
	Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("Unable to initialize interrupt controller.\n\r");
		return XST_FAILURE;
	}
	//xil_printf("XIntc_Initialize success\r\n");

#endif
	/*
	 * Connect a device driver handler that will be called when an interrupt
	 * for the device occurs, the device driver handler performs the specific
	 * interrupt processing for the device
	 */
	Status = XIntc_Connect(IntcInstancePtr, IntrId,
				(XInterruptHandler)XTmrCtr_InterruptHandler,
				(void *)TmrCtrInstancePtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Unable to connect timer interrupt.\n\r");
		return XST_FAILURE;
	}
	//xil_printf("XIntc_Connect success\r\n");

#ifndef TESTAPP_GEN
	/*
	 * Start the interrupt controller such that interrupts are enabled for
	 * all devices that cause interrupts, specific real mode so that
	 * the timer counter can cause interrupts thru the interrupt controller.
	 */
	Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		xil_printf("Unable to start interrupt controller.\n\r");
		return XST_FAILURE;
	}
	//xil_printf("XIntc_Start success\r\n");

#endif

	/*
	 * Enable the interrupt for the timer counter
	 */
	XIntc_Enable(IntcInstancePtr, IntrId);

#else

#ifndef TESTAPP_GEN
	XScuGic_Config *IntcConfig;

	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
					IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
#endif /* TESTAPP_GEN */

	XScuGic_SetPriorityTriggerType(IntcInstancePtr, IntrId,
					0xA0, 0x3);

	/*
	 * Connect the interrupt handler that will be called when an
	 * interrupt occurs for the device.
	 */
	Status = XScuGic_Connect(IntcInstancePtr, IntrId,
				 (Xil_ExceptionHandler)XTmrCtr_InterruptHandler,
				 TmrCtrInstancePtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	/*
	 * Enable the interrupt for the Timer device.
	 */
	XScuGic_Enable(IntcInstancePtr, IntrId);
#endif /* XPAR_INTC_0_DEVICE_ID */


#ifndef TESTAPP_GEN
	/*
	 * Initialize the exception table.
	 */
	Xil_ExceptionInit();

	/*
	 * Register the interrupt controller handler with the exception table.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
					(Xil_ExceptionHandler)
					INTC_HANDLER,
					IntcInstancePtr);

	/*
	 * Enable non-critical exceptions.
	 */
	Xil_ExceptionEnable();

#endif
	return XST_SUCCESS;
}
/*****************************************************************************/
/**
* This function is the handler which performs processing for the timer counter.
* It is called from an interrupt context such that the amount of processing
* performed should be minimized.  It is called when the timer counter expires
* if interrupts are enabled.
*
* This handler provides an example of how to handle timer counter interrupts
* but is application specific.
*
* @param	CallBackRef is a pointer to the callback function
* @param	TmrCtrNumber is the number of the timer to which this
*		handler is associated with.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
void Timer1CounterHandler(void *CallBackRef, u8 TmrCtrNumber)
{
	XTmrCtr *InstancePtr = (XTmrCtr *)CallBackRef;

	/*
	 * Check if the timer counter has expired, checking is not necessary
	 * since that's the reason this function is executed, this just shows
	 * how the callback reference can be used as a pointer to the instance
	 * of the timer counter that expired, increment a shared variable so
	 * the main thread of execution can see the timer expired
	 */
	// blink_led_on is a toggle switch

//	if ( blink_mig == 1 ) {
//		if (blink_led_on == 0) {
//			XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data | DDR_TEST_PASSED );
			//XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data | (pb_done << PB_LED_SHIFT) | DIP_LED_MASK | rotary_done );
//			blink_led_on = 1;
//		}
//		else
//		{
//			XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data );
			//XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, (led_data | (pb_done << PB_LED_SHIFT) | rotary_done) & ~DIP_LED_MASK );
//			blink_led_on = 0;
//		}
//	}
	if ( blink_dip == 1 ) {
		if (blink_led_on == 0) {
			XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data | DIP_LED_MASK | (pb_done << PB_LED_SHIFT) |  (rotary_done << ROTARY_LED_SHIFT)	);
			//XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data | (pb_done << PB_LED_SHIFT) | DIP_LED_MASK | rotary_done );
			blink_led_on = 1;
		}
		else
		{
			XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, (led_data	| (pb_done  << PB_LED_SHIFT)	| (rotary_done  << ROTARY_LED_SHIFT))	& ~DIP_LED_MASK 	);
			//XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, (led_data | (pb_done << PB_LED_SHIFT) | rotary_done) & ~DIP_LED_MASK );
			blink_led_on = 0;
		}
	}
	if ( blink_pb == 1 ) {
		if (blink_led_on == 0) {
			XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data	| (dip_done << DIP_LED_SHIFT)	| PB_LED_MASK	|  (rotary_done << ROTARY_LED_SHIFT)	);
			//XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data | PB_LED_MASK | (dip_done << DIP_LED_SHIFT) | rotary_done );
			blink_led_on = 1;
		}
		else
		{
			XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, (led_data	| (dip_done << DIP_LED_SHIFT)	| (rotary_done  << ROTARY_LED_SHIFT))	& ~PB_LED_MASK );
			//XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, (led_data | (dip_done << DIP_LED_SHIFT) | rotary_done) & ~PB_LED_MASK );
			blink_led_on = 0;
		}
	}
	if ( blink_rotary == 1 ) {
		if (blink_led_on == 0) {
			XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data	| (dip_done << DIP_LED_SHIFT)	| (pb_done << PB_LED_SHIFT) |  ROTARY_LED_MASK				);
			//XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, led_data | (pb_done << PB_LED_SHIFT) | (dip_done << DIP_LED_SHIFT) | ROTARY_LED_MASK );
			blink_led_on = 1;
		}
		else
		{
			XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, (led_data	| (dip_done << DIP_LED_SHIFT)	| (pb_done  << PB_LED_SHIFT))	& ~ROTARY_LED_MASK );
			//XGpio_DiscreteWrite(&BIST_led, GPIO_CHAN_1, (led_data | (pb_done << PB_LED_SHIFT) | (dip_done << DIP_LED_SHIFT)) & ~ROTARY_LED_MASK );
			blink_led_on = 0;
		}
	}
	//xil_printf("Timer interrupt\n\r");
	if (XTmrCtr_IsExpired(InstancePtr, TmrCtrNumber)) {
		TimerExpired++;
		//if(TimerExpired == 3) {
		//	XTmrCtr_SetOptions(InstancePtr, TmrCtrNumber, 0);
		//}
	}
}
