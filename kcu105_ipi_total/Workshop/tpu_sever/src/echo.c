/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include <stdio.h>
#include <string.h>

#include "lwip/err.h"
#include "lwip/tcp.h"
#if defined (__arm__) || defined (__aarch64__)
#include "xil_printf.h"
#endif


#define LED_GPIO_BASEADDR 0x40180000
#define PUSH_BUTTON_BASEADDR 0x40190000
#define DATA_OFFSET  0x0
#define TRI_OFFSET   0x4
#define LED_DELAY    10000000
#define XPAR_BRAM_1_BASEADDR 0x401A0000U
#define XPAR_BRAM_2_BASEADDR 0xC2000000U

//#define BRAM_CTRL_BASE      XPAR_BRAM_0_BASEADDR
//#define BRAM_CTRL_HIGH      XPAR_AXI_BRAM_CTRL_0_S_AXI_HIGHADDR

typedef volatile u32 *U32Ptr;
#define WR_WORD(ADDR, DATA)	(*(U32Ptr)(ADDR) = (DATA))
#define RD_WORD(ADDR, DATA)	((DATA) = *(U32Ptr)(ADDR))

void delay(int time)
{
for(;time>0;time--)
{
}
}

int transfer_data() {

	return 0;
}

int light_led(u16_t led_data) {
	xil_printf("\n\r********************************************************");
	xil_printf("\n\r**                  LED all lenght                    **");
	xil_printf("\n\r********************************************************\r\n");
	xil_printf("Watch the LEDs\r\n");
	/* Set the direction for all signals as outputs */
	*(int *)(LED_GPIO_BASEADDR + TRI_OFFSET) = 0x0 ;
	*(int *)(LED_GPIO_BASEADDR + DATA_OFFSET) = led_data ;

	return 0;
}

int ini_led() {
	xil_printf("\n\r********************************************************");
	xil_printf("\n\r**   GPIO LED display hello,Watch the LEDs is AA      **");
	xil_printf("\n\r********************************************************\r\n");
	/* Set the direction for all signals as outputs */
	*(int *)(LED_GPIO_BASEADDR + TRI_OFFSET) = 0x0 ;
	*(int *)(LED_GPIO_BASEADDR + DATA_OFFSET) = 0xAA ;

	return 0;
}

int read_button() {
	/* Set the direction for all signals as input */
	*(int *)(LED_GPIO_BASEADDR + TRI_OFFSET) = 0xFF ;
	return *(volatile u32 *) (PUSH_BUTTON_BASEADDR + DATA_OFFSET);
}

int check_button()
{
	u32 Button;
	xil_printf("Press west button\r\n\r\n");
	Button = 0;
	while (Button == 0){
		Button = read_button() & 0x00000002;
	}

	while (Button != 0){
		Button = read_button() & 0x0000001F;
	}
/*	xil_printf("Press south button\r\n\r\n");
	Button = 0;
	while (Button == 0){
		Button = XGpio_ReadReg(GPIO_REG_BASEADDR, 1) & 0x00000004;
	}

	while (Button != 0){
		Button = XGpio_ReadReg(GPIO_REG_BASEADDR, 1)  & 0x0000001F;
	}

	xil_printf("Press east button\r\n\r\n");
	Button = 0;
	while (Button == 0){
		Button = XGpio_ReadReg(GPIO_REG_BASEADDR, 1)  & 0x00000008;
	}

	while (Button != 0){
		Button = XGpio_ReadReg(GPIO_REG_BASEADDR, 1)  & 0x0000001F;
	}

	xil_printf("Press north button\r\n\r\n");
	Button = 0;
	while (Button == 0){
		Button = XGpio_ReadReg(GPIO_REG_BASEADDR, 1) & 0x00000010;
	}

	while (Button != 0){
		Button = XGpio_ReadReg(GPIO_REG_BASEADDR, 1)  & 0x0000001F;
	}

	xil_printf("Press center button\r\n\r\n");
	Button = 0;
	while (Button == 0){
		Button = XGpio_ReadReg(GPIO_REG_BASEADDR, 1)  & 0x00000001;
	}

	while (Button != 0){
		Button = XGpio_ReadReg(GPIO_REG_BASEADDR, 1)  & 0x0000001F;
	}

	xil_printf("Press any button\r\n\r\n");
	Button = 0;
	while (Button == 0){
		Button = XGpio_ReadReg(GPIO_REG_BASEADDR, 0)  & 0x0000001F;
	}

	while (Button != 0){
		Button = XGpio_ReadReg(GPIO_REG_BASEADDR, 0)  & 0x0000001F;
	} */

	xil_printf("Successfully Pushbutton \r\n");
}

void print_app_header()
{
	xil_printf("\n\r$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
	xil_printf("\n\r$$$$$$$$$$	   TPU TCP SERVER	    $$$$$$$$$$$$$");
	xil_printf("\n\r$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\r\n");
	xil_printf("TCP packets sent to port 6001 will be echoed back\n\r");
}

err_t recv_callback(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
	/* do not read the packet if we are not in ESTABLISHED state */
	char *receive_data=(char *)p->payload;
	char echo_hello[64]="HELLO,I AM TPU";
	char echo_led_light[64]="LOOK LED ALL LIGHT";
	char echo_led_off[64]="LOOK LED ALL OFF";
	char echo_button[64]="PRESS WEST BUTTON";
	char echo_button_ack[64]="SUCCESS! PUSHBUTTON";
	char echo_undefined[64]="COMMAND UNDEFINE,DO NOTHING!";
	u32 MyAdr;

	int dram_data;
	char dram_data_char;
	char dram_data_char_ar[64];

	if (!p) {
		tcp_close(tpcb);
		tcp_recv(tpcb, NULL);
		return ERR_OK;
	}

	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->len);

	/* echo back the payload */
	/* in this case, we assume that the payload is < TCP_SND_BUF */
	if(*receive_data=='0')//hello
	{
		//err = tcp_write(tpcb, p->payload, p->len, 1);
		tcp_write(tpcb, echo_hello, 64, 1);
	}
	else if(*receive_data=='1')//light led
	{
		tcp_write(tpcb, echo_led_light, 64, 1);
		light_led(0xff);
	}
	else if(*receive_data=='2')//light off
		{
			tcp_write(tpcb, echo_led_off, 64, 1);
			light_led(0x00);
		}
	else if(*receive_data=='3'){//push botton
		check_button();
		tcp_write(tpcb, echo_button_ack, 64, 1);
	}
	else if(*receive_data=='4'){//write&read dram and print the data to uart&ethernet
		for (MyAdr = XPAR_BRAM_1_BASEADDR; MyAdr < XPAR_BRAM_1_BASEADDR + 64; MyAdr += 4) {
			WR_WORD(MyAdr, 0xA5A5A5A5);
			WR_WORD(MyAdr+=4, 0x5A5A5A5A);
		}

		for (MyAdr = XPAR_BRAM_1_BASEADDR; MyAdr < XPAR_BRAM_1_BASEADDR + 64; MyAdr += 4) {
			RD_WORD(MyAdr, dram_data);
			xil_printf("%d \t",dram_data);
		}
//		WR_WORD(LED_GPIO_BASEADDR, *receive_data);
//		RD_WORD(LED_GPIO_BASEADDR, dram_data);
		dram_data_char=(char)dram_data;
		xil_printf("%c \n\r",dram_data_char);
		dram_data_char_ar[0]=(char)dram_data;
		tcp_write(tpcb, dram_data_char_ar, 1, 1);
	}
	else if(*receive_data=='5'){//write&read dram and print the data to uart&ethernet
		for (MyAdr = XPAR_BRAM_2_BASEADDR; MyAdr < XPAR_BRAM_2_BASEADDR + 64; MyAdr += 4) {
			WR_WORD(MyAdr, 0xA5A5A5A5);
			WR_WORD(MyAdr+=4, 0x5A5A5A5A);
		}

		for (MyAdr = XPAR_BRAM_2_BASEADDR; MyAdr < XPAR_BRAM_2_BASEADDR + 64; MyAdr += 4) {
			RD_WORD(MyAdr, dram_data);
			xil_printf("%d \t",dram_data);
		}
//		WR_WORD(LED_GPIO_BASEADDR, *receive_data);
//		RD_WORD(LED_GPIO_BASEADDR, dram_data);
		dram_data_char=(char)dram_data;
		xil_printf("%c \n\r",dram_data_char);
		dram_data_char_ar[0]=(char)dram_data;
		tcp_write(tpcb, dram_data_char_ar, 1, 1);
	}
	else{
		xil_printf("command has not definded,do nothing\n\r");
		tcp_write(tpcb, echo_undefined, 64, 1);
	}

/*	if (tcp_sndbuf(tpcb) > p->len) {

		err = tcp_write(tpcb, p->payload, p->len, 1);
		xil_printf("%s \n\r",p->payload);
		xil_printf("%u \n\r",p->len);
		xil_printf("%u \n\r",read_button());
		light_led(p->len);
	} else
		xil_printf("no space in tcp_sndbuf\n\r");*/

	/* free the received pbuf */
	pbuf_free(p);

	return ERR_OK;
}

err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
	static int connection = 1;

	/* set the receive callback for this connection */
	tcp_recv(newpcb, recv_callback);

	/* just use an integer number indicating the connection id as the
	   callback argument */
	tcp_arg(newpcb, (void*)(UINTPTR)connection);

	/* increment for subsequent accepted connections */
	connection++;

	return ERR_OK;
}


int start_application()
{
	struct tcp_pcb *pcb;
	err_t err;
	unsigned port = 7;

	/* create new TCP PCB structure */
	pcb = tcp_new();
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	/* bind to specified @port */
	err = tcp_bind(pcb, IP_ADDR_ANY, port);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", port, err);
		return -2;
	}

	/* we do not need any arguments to callback functions */
	tcp_arg(pcb, NULL);

	/* listen for connections */
	pcb = tcp_listen(pcb);
	if (!pcb) {
		xil_printf("Out of memory while tcp_listen\n\r");
		return -3;
	}

	/* specify callback to use for incoming connections */
	tcp_accept(pcb, accept_callback);

	xil_printf("TCP echo server started @ port %d\n\r", port);

	return 0;
}
