/*
 * Copyright (c) 2009-2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * regaccess.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */
#include "xil_io.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "platform.h"
#include "xparameters.h"		/* Parameters file for hardware offsets and other utility files */
#include "xil_exception.h"
#include "xstatus.h"
#include "CommandDesc.h"

#include "xuartlite.h"			/* UART Lite driver */
#include "xuartlite_l.h"
#include "xregaccess_utils.h"

//#define ENABLE_DEBUG 1

#define UARTLITE_DEVICE_ID XPAR_UARTLITE_1_DEVICE_ID

#define UARTLITE_BASEADDR XPAR_AXI_UARTLITE_0_BASEADDR


#define MAX_BYTES_OVER_UART  16

#define UART_BUFFER_SIZE     20
#define SEND_BUFFER_SIZE     10

#define ReadRequestSingle     's'
#define ReadRequestBulk       'b'

#define ReadRequestHex        'h'
#define ReadRequestAscii      'a'

XUartLite UartLite; /* The instance of the UartLite Device */
u8 ReceiveBuffer[UART_BUFFER_SIZE];
u8 SendBuffer[SEND_BUFFER_SIZE];
//- For W AAAA DDDDDDDD, it gets 16 characters including newline
volatile static int WR_RX_CNT = 16;
//- For R t o AAAA, it gets 11 characters including newline
/*'t' indicates type of request it can either be 's' which indicates single request
 * or 'b' which indicates bulk request.
 * 'o' indicates whether output type should be ascii or hex value.
 * if o is set as h the value sent out will be the actual data width
 * if o is set as a the value sent out will be in ascii format
 */
volatile static int RD_RX_CNT = 11;

int UartLiteControl();
#if 0
int SendOverUart(XUartLite* UartLite, u8 *SendBuffer, int NumBytes, int IsChar,
		int toASCII);
#endif
int SendOverUart(XUartLite* UartLite, u8 *SendBuffer, int NumBytes);
void print(const char *str);
int initialize_peripherals(void);
int config_sysmon_voltage(void);
int config_sysmon_current(void);
void SendNewLine();
void SendOk();
void SendNotOk();

int main()
{
    int Status;

	init_platform();

	Status = initialize_peripherals();
		if (Status != XST_SUCCESS) {
	#ifdef ENABLE_DEBUG
			print("Peripheral Initialization Failure!\n");
	#endif
			return XST_FAILURE;
		}

    print("ULtrascale Ethernet Subsystem Design\n\r");
	Status = UartLiteControl();
	if (Status != XST_SUCCESS) {
		print("\nUartLite Failed\n");
		return XST_FAILURE;
	}
	return XST_SUCCESS;

    return 0;
}

int UartLiteControl() {
	int Status;
	int Index;
	int i,j,reminder;
	int delay_counter;
	int NumBytes;
	int BulkTxIterations;
	u32 data;
	u32 ReqNum;
	char type;
	char output_type;
	char *blk_data_pack;

#if 0
	SendOk();
	SendNewLine();
#endif

	while (1) {
		if (!XUartLite_IsReceiveEmpty(UARTLITE_BASEADDR)) {
			ReceiveBuffer[0] = XUartLite_RecvByte(UARTLITE_BASEADDR);
			//- If the input character indicates 'Write', wait till WR_RX_CNT-1 characters are received
			if ((ReceiveBuffer[0] == 'W') | (ReceiveBuffer[0] == 'w')) {
				for (Index = 1; Index < WR_RX_CNT; Index++) {
					ReceiveBuffer[Index]
							= XUartLite_RecvByte(UARTLITE_BASEADDR);

				}
				data =  (AsciiToHex(ReceiveBuffer[WR_RX_CNT -9]) << 28) +
						  (AsciiToHex(ReceiveBuffer[WR_RX_CNT -8]) << 24) +
						    (AsciiToHex(ReceiveBuffer[WR_RX_CNT -7]) << 20) +
						      (AsciiToHex(ReceiveBuffer[WR_RX_CNT -6]) << 16) +
						        (AsciiToHex(ReceiveBuffer[WR_RX_CNT -5]) << 12) +
						          (AsciiToHex(ReceiveBuffer[WR_RX_CNT - 4]) << 8) +
						            (AsciiToHex(ReceiveBuffer[WR_RX_CNT - 3]) << 4) +
						              (AsciiToHex(ReceiveBuffer[WR_RX_CNT - 2]) << 0);
				ReqNum = (AsciiToHex(ReceiveBuffer[WR_RX_CNT -14]) << 12) +
						  (AsciiToHex(ReceiveBuffer[WR_RX_CNT - 13]) << 8) +
						    (AsciiToHex(ReceiveBuffer[WR_RX_CNT - 12]) << 4) +
						      (AsciiToHex(ReceiveBuffer[WR_RX_CNT - 11]) << 0);

				switch(ReqNum)
				{
				    case COMMAND1:
				    case COMMAND2:
				    	Xil_Out32(CommandMapping[ReqNum - 1],data);
				    	print("Ok\n");
#if 0
				    	SendOk();
				    	SendNewLine();
#endif
				        break;
                    default:
                    	print("NotOk\n");
#if 0
                    	SendNotOk();
                    	SendNewLine();
#endif
#ifdef ENABLE_DEBUG
				    	print("NotOk Invalid Write Command Request\n");
#endif
				}
				//- If the input character indicates 'Read', wait till RD_RX_CNT-1 characters are received
			} else if ((ReceiveBuffer[0] == 'R') | (ReceiveBuffer[0] == 'r')) {
				for (Index = 1; Index < RD_RX_CNT; Index++) {
					ReceiveBuffer[Index]
							= XUartLite_RecvByte(UARTLITE_BASEADDR);
				}
				ReqNum = (AsciiToHex(ReceiveBuffer[RD_RX_CNT -5]) << 12) +
						  (AsciiToHex(ReceiveBuffer[RD_RX_CNT - 4]) << 8) +
						    (AsciiToHex(ReceiveBuffer[RD_RX_CNT - 3]) << 4) +
						      (AsciiToHex(ReceiveBuffer[RD_RX_CNT - 2]) << 0);

				type = ReceiveBuffer[2];
				output_type = ReceiveBuffer[4];
				if(type == ReadRequestSingle)
				{
				                    if((ReqNum <= COMMAND154) && (ReqNum >= COMMAND1))
				                    {
								        data = Xil_In32(CommandMapping[ReqNum - 1]);
								        if(output_type == ReadRequestHex)
								        {
								        	Status = SendOverUart(&UartLite, (u8 *)&data, sizeof(data));

								        	if(Status == XST_FAILURE)
								        	{
#ifdef ENABLE_DEBUG
								        		print("Unable to send data over UART\n");
#endif
								        	}
#if 0
								        	while (1) {
								        			      Status = XUartLite_IsSending(&UartLite);
								        				  if (Status == 0)
								        				      break;
								        			   }
#endif
								        	print("\n");
#if 0
								        	SendNewLine();
#endif
								        }
								        else if(output_type == ReadRequestAscii)
								        {
								    	    sprintf((char *)&SendBuffer,"%08X",(uint)data);
								    	    print((char *)&SendBuffer);
								        }
								        else
								        {
#ifdef ENABLE_DEBUG
								        	print("NotOk Invalid Single Read Command Output type Request\n");
#endif
								        }
				                    }
				                    else
				                    {
#ifdef ENABLE_DEBUG
								    	print("NotOk Invalid Single Read Command Request\n");
#endif
				                    }
				}
				else if(type == ReadRequestBulk)
				{
					switch(ReqNum)
					{
					    case BULKCOMMAND1:
					    	 if(output_type == ReadRequestHex)
					    	 {
#if 1
					    		 NumBytes = sizeof(u32) * (ETHSTATS_BULKREAD_CMDEND - ETHSTATS_BULKREAD_CMDSTART + 1);
					    	     blk_data_pack = (char *) malloc(NumBytes);
#endif
#if 1
					    	     if(blk_data_pack != NULL)
					    	     {
#endif
					    	         for(Index=ETHSTATS_BULKREAD_CMDSTART,i=0; Index <= ETHSTATS_BULKREAD_CMDEND; Index++)
					    	         {
					    		         data = Xil_In32(CommandMapping[Index - 1]);
#if 1
					    		         memcpy(((char *)blk_data_pack + i), &data, sizeof(data));
#endif
#if 0
					    		         Status = SendOverUart(&UartLite, (u8 *)&data, sizeof(data));
					    		         if(Status == XST_FAILURE)
					    		         {
#ifdef ENABLE_DEBUG
print("Unable to send data over UART\n");
#endif
					    		         }
#endif
					    		         i += sizeof(u32);
					    	         }
#if 0
					    	         print("\n");
#endif
#if 1
					    	         BulkTxIterations = NumBytes/MAX_BYTES_OVER_UART;
					    	         reminder = NumBytes%MAX_BYTES_OVER_UART;
					    	         for(i=0,j=0; i<BulkTxIterations; i++)
					    	         {
					    	              Status = SendOverUart(&UartLite, (u8 *)(blk_data_pack + j), MAX_BYTES_OVER_UART);
							              if(Status == XST_FAILURE)
							              {
#ifdef ENABLE_DEBUG
							                  print("Unable to send data over UART\n");
#endif
							                  break;
							              }
					    	              j += MAX_BYTES_OVER_UART;
					    	          }
					    	          if(reminder > 0)
					    	          {
					    	              Status = SendOverUart(&UartLite, (u8 *)(blk_data_pack + j), reminder);
					    	              if(Status == XST_FAILURE)
					    	              {
#ifdef ENABLE_DEBUG
					    	                  print("Unable to send data over UART\n");
#endif
					    	                  break;
					    	              }
					    	          }
#endif
#if 0
					    	          blk_data_pack[NumBytes] = '\n';
					    	          blk_data_pack[NumBytes + 1] = '\0';
					    	          print((char *)blk_data_pack);
#endif
#if 1
							          free(blk_data_pack);
							          print("\n");
#if 0
							          SendNewLine();
#endif
#endif
#if 1
					    	     }
					    	     else
					    	     {
#ifdef ENABLE_DEBUG
					    	    	 print("malloc failed BulkCommand2\n");
#endif
					    	     }
#endif
					    	 }
					    	 else if(output_type == ReadRequestAscii)
					    	 {
					    		 for(Index = ETHSTATS_BULKREAD_CMDSTART; Index <= ETHSTATS_BULKREAD_CMDEND; Index++)
					    		 {
					    	         data = Xil_In32(CommandMapping[Index - 1]);
					    	         sprintf((char *)&SendBuffer,"%08X ",(uint)data);
					    	         print((char *)&SendBuffer);
					    		 }
					    	 }
					    	 else
					    	 {
#ifdef ENABLE_DEBUG
					    		 print("NotOk Invalid Bulk Read Command Output type Request\n");
#endif
					    	 }
						     break;
					    case BULKCOMMAND2:
					    	if(output_type == ReadRequestHex)
					        {
#if 1
					    	    NumBytes = sizeof(u32) * (MACSTATS_BULKREAD_CMDEND - MACSTATS_BULKREAD_CMDSTART + 1);
					    	    blk_data_pack = (char *) malloc(NumBytes);
#endif
#if 1
					    	    if(blk_data_pack != NULL)
					    	    {
#endif
					    	         for(Index=MACSTATS_BULKREAD_CMDSTART,i=0; Index <= MACSTATS_BULKREAD_CMDEND; Index++)
					    	         {
					    		         data = Xil_In32(CommandMapping[Index - 1]);
#if 1
					    		         memcpy(((char *)blk_data_pack + i), &data, sizeof(data));
#endif
#if 0
					    		         Status = SendOverUart(&UartLite, (u8 *)&data, sizeof(data));
					    		         if(Status == XST_FAILURE)
					    		         {
#ifdef ENABLE_DEBUG
					    		        	 print("Unable to send data over UART\n");
#endif
					    		         }
					    		         while (1) {
					    		         	  Status = XUartLite_IsSending(&UartLite);
					    		         	  if (Status == 0)
					    		         		 break;
					    		         		   }
#endif
					    		         i += sizeof(u32);
					    	         }
#if 0
					    	         print("\n");
#endif
#if 1
					    	         BulkTxIterations = NumBytes/MAX_BYTES_OVER_UART;
					    	         reminder = NumBytes%MAX_BYTES_OVER_UART;
					    	        for(i=0,j=0;i<BulkTxIterations;i++)
					    	        {
					    	              Status = SendOverUart(&UartLite, (u8 *)(blk_data_pack + j), MAX_BYTES_OVER_UART);
							              if(Status == XST_FAILURE)
							              {
#ifdef ENABLE_DEBUG
							                  print("Unable to send data over UART\n");
#endif
							                  break;
							              }

					    	              j += MAX_BYTES_OVER_UART;
					    	          }
					    	          if(reminder > 0)
					    	          {
					    	              Status = SendOverUart(&UartLite, (u8 *)(blk_data_pack + j), reminder);
					    	              if(Status == XST_FAILURE)
					    	              {
#ifdef ENABLE_DEBUG
					    	                  print("Unable to send data over UART\n");
#endif
					    	                  break;
					    	              }
					    	          }
#endif
#if 0
					    	          blk_data_pack[NumBytes] = '\n';
					    	          blk_data_pack[NumBytes + 1] = '\0';
					    	          print((char *)blk_data_pack);
#endif
#if 1
					    	          free(blk_data_pack);
					    	          SendNewLine();
#endif
#if 1
					    	    }
					    	    else
					    	    {
#ifdef ENABLE_DEBUG
					    	    	print("malloc failed BulkCommand2\n");
#endif
					    	    }
#endif
					        }
					    	else if(output_type == ReadRequestAscii)
					        {
					    	    for(Index = MACSTATS_BULKREAD_CMDSTART; Index <= MACSTATS_BULKREAD_CMDEND; Index++)
					    		{
					                data = Xil_In32(CommandMapping[Index - 1]);
					    		    sprintf((char *)&SendBuffer,"%08X ",(uint)data);
					                print((char *)&SendBuffer);
					            }
					    	    print("\n");
					         }
					         else
					         {
#ifdef ENABLE_DEBUG
					    	     print("NotOk Invalid Bulk Read Command Output type Request\n");
#endif
					    	 }
					    	 break;
		                       case BULKCOMMAND3:
					    	if(output_type == ReadRequestHex)
					        {
						    print("NotOk hex request not supported yet\n");
                                                }
					    	else if(output_type == ReadRequestAscii)
					        {
						    config_sysmon_voltage();
						    for(delay_counter = 0; delay_counter < 25000; delay_counter++);
					    	    for(Index = SYS_VOLTAGE_BULKREAD_CMDSTART; Index <= SYS_VOLTAGE_BULKREAD_CMDEND; Index++)
					    		{
					                data = Xil_In32(CommandMapping[Index - 1]);
					    		    sprintf((char *)&SendBuffer,"%08X ",(uint)data);
					                print((char *)&SendBuffer);
					            }
					    	    print("\n");
					         }
					         else
					         {
#ifdef ENABLE_DEBUG
					    	     print("NotOk Invalid Bulk Read Command Output type Request\n");
#endif
					    	 }
					    	 break;
		                       case BULKCOMMAND4:
					    	if(output_type == ReadRequestHex)
					        {
						    print("NotOk hex request not supported yet\n");
                                                }
					    	else if(output_type == ReadRequestAscii)
					        {
						    config_sysmon_current(); 
						    for(delay_counter = 0; delay_counter < 25000; delay_counter++);

					    	    for(Index = SYS_CURRENT_BULKREAD_CMDSTART; Index <= SYS_CURRENT_BULKREAD_CMDEND; Index++)
					    		{
					                data = Xil_In32(CommandMapping[Index - 1]);
					    		    sprintf((char *)&SendBuffer,"%08X ",(uint)data);
					                print((char *)&SendBuffer);
					            }
					    	    print("\n");
					         }
					         else
					         {
#ifdef ENABLE_DEBUG
					    	     print("NotOk Invalid Bulk Read Command Output type Request\n");
#endif
					    	 }
					    	 break;
					    default:
					    	SendNotOk();
#ifdef ENABLE_DEBUG
					         print("NotOk Invalid Bulk Read Request\n");
#endif
					}
				}
				else
				{
#ifdef ENABLE_DEBUG
					print("NotOk invalid Read Request type\n");
#endif
				}

		}
	  }
	}
#ifdef ENABLE_DEBUG
	print("Exiting the program\n\r");
#endif
	return XST_SUCCESS;
}

/*
 * @note This function sends the specified number of bytes from a pointed buffer over UART
 */
#if 0
int SendOverUart(XUartLite* UartLite, u8 *SendBuffer, int NumBytes, int IsChar,
		int toASCII) {
#endif
	int SendOverUart(XUartLite* UartLite, u8 *SendBuffer, int NumBytes) {
	int Status;
#if 0
	u8 SendBuf[16];
	int TotalBytes;
	int Index;
#endif
	int BytesSent;

#if 0
	//- If character, send directly otherwise convert to ASCII
	if (IsChar) {
		TotalBytes = NumBytes;
		for (Index = 0; Index < NumBytes; Index++)
			SendBuf[Index] = SendBuffer[Index];
	} else {
		if (NumBytes > 16) {
#ifdef ENABLE_DEBUG
			print("Numbytes greater than allowed value!\n");
#endif
			return XST_FAILURE;
		}
		if (toASCII) {
			TotalBytes = HexToASCII(SendBuffer, NumBytes, SendBuf);
		} else {
			TotalBytes = NumBytes;
		}
	}
#endif
#if 1
	if (NumBytes > MAX_BYTES_OVER_UART) {
	#ifdef ENABLE_DEBUG
				print("Numbytes greater than allowed value!\n");
	#endif
				return XST_FAILURE;
	}
#endif
	while (1) {
		Status = XUartLite_IsSending(UartLite);
		if (Status == 0)
			break;
	}
#if 0
	if (toASCII)
		BytesSent = XUartLite_Send(UartLite, SendBuf, TotalBytes);
	else
		BytesSent = XUartLite_Send(UartLite, SendBuffer, TotalBytes);
#endif
	BytesSent = XUartLite_Send(UartLite, SendBuffer, NumBytes);
	if (BytesSent != NumBytes) {
#ifdef ENABLE_DEBUG
		print("UART Send Failure!\n");
#endif
		return XST_FAILURE;
	}
	else
	{
#ifdef ENABLE_DEBUG
#if 0
		print("Sent all the bytes requested through UART\n");
#endif
#endif
	}

	return XST_SUCCESS;
}

int initialize_peripherals(void) {
		int Status;
		int Index;

		Status = XUartLite_Initialize(&UartLite, UARTLITE_DEVICE_ID);
		if (Status != XST_SUCCESS) {
				#ifdef ENABLE_DEBUG
				print("UART Initialization Failure!\n");
				#endif
				return XST_FAILURE;
			}
		for (Index = 0; Index < UART_BUFFER_SIZE; Index++) {
			ReceiveBuffer[Index] = 0;
		}

		return XST_SUCCESS;
}

int config_sysmon_voltage(void) {

	Xil_Out32(SYSMONE_BASE + SYSMON_CFG_REG0,SYSMON_CFG_REG0_VOLTAGE_VAL);
	Xil_Out32(SYSMONE_BASE + SYSMON_CFG_REG1,SYSMON_CFG_REG1_VOLTAGE_VAL);

	Xil_Out32(SYSMONE_BASE + SEQ_CHAN_SEL0,SEQ_CHAN_SEL0_VOLTAGE_VAL);
	Xil_Out32(SYSMONE_BASE + SEQ_CHAN_SEL1,SEQ_CHAN_SEL1_VOLTAGE_VAL);
	Xil_Out32(SYSMONE_BASE + SEQ_CHAN_SEL2,SEQ_CHAN_SEL2_VOLTAGE_VAL);
	
	Xil_Out32(SYSMONE_BASE + SEQ_AVG_SEL0,SEQ_AVG_SEL0_VOLTAGE_VAL);
	Xil_Out32(SYSMONE_BASE + SEQ_AVG_SEL1,SEQ_AVG_SEL1_VOLTAGE_VAL);
	Xil_Out32(SYSMONE_BASE + SEQ_AVG_SEL2,SEQ_AVG_SEL2_VOLTAGE_VAL);

	Xil_Out32(SYSMONE_BASE + SEQ_ACQ_1,SEQ_ACQ_1_VOLTAGE_VAL);
	Xil_Out32(SYSMONE_BASE + SEQ_ACQ_2,SEQ_ACQ_2_VOLTAGE_VAL);

	/* Set Calibration to continuous sequence mode.*/
	Xil_Out32(SYSMONE_BASE + SYSMON_CFG_REG1,CALIB_SET_CONTINUOUS_SEQ_VAL);

	return XST_SUCCESS;
}

int config_sysmon_current(void) {

	Xil_Out32(SYSMONE_BASE + SYSMON_CFG_REG0,SYSMON_CFG_REG0_CURRENT_VAL);
	Xil_Out32(SYSMONE_BASE + SYSMON_CFG_REG1,SYSMON_CFG_REG1_CURRENT_VAL);

	Xil_Out32(SYSMONE_BASE + SEQ_CHAN_SEL0,SEQ_CHAN_SEL0_CURRENT_VAL);
	Xil_Out32(SYSMONE_BASE + SEQ_CHAN_SEL1,SEQ_CHAN_SEL1_CURRENT_VAL);
	Xil_Out32(SYSMONE_BASE + SEQ_CHAN_SEL2,SEQ_CHAN_SEL2_CURRENT_VAL);
	
	Xil_Out32(SYSMONE_BASE + SEQ_AVG_SEL0,SEQ_AVG_SEL0_CURRENT_VAL);
	Xil_Out32(SYSMONE_BASE + SEQ_AVG_SEL1,SEQ_AVG_SEL1_CURRENT_VAL);
	Xil_Out32(SYSMONE_BASE + SEQ_AVG_SEL2,SEQ_AVG_SEL2_CURRENT_VAL);

	Xil_Out32(SYSMONE_BASE + SEQ_ACQ_1,SEQ_ACQ_1_CURRENT_VAL);
	Xil_Out32(SYSMONE_BASE + SEQ_ACQ_2,SEQ_ACQ_2_CURRENT_VAL);

	/* Set Calibration to continuous sequence mode.*/
	Xil_Out32(SYSMONE_BASE + SYSMON_CFG_REG1,CALIB_SET_CONTINUOUS_SEQ_VAL);

	return XST_SUCCESS;

}

void SendNewLine() {
	u8 SendData[1];

	SendData[0] = '\n';
	SendOverUart(&UartLite, SendData, 1);
}

void SendOk() {
	u8 SendData[2];

	SendData[0] = 'O';
	SendData[1] = 'k';
	SendOverUart(&UartLite, SendData, 2);
}

void SendNotOk()
{
	    u8 SendData[5];

		SendData[0] = 'N';
		SendData[1] = 'o';
		SendData[2] = 't';
		SendData[3] = 'O';
		SendData[4] = 'k';
		SendOverUart(&UartLite, SendData, 5);
}
