/*******************************************************************************
 ** � Copyright 2012 - 2013 Xilinx, Inc. All rights reserved.
 ** This file contains confidential and proprietary information of Xilinx, Inc. and
 ** is protected under U.S. and international copyright and other intellectual property laws.
 *******************************************************************************
 **   ____  ____
 **  /   /\/   /
 ** /___/  \  /   Vendor: Xilinx
 ** \   \   \/
 **  \   \
**  /   /
 ** /___/    \
** \   \  /  \   7 Series FPGA AMS Targeted Reference Design
 **  \___\/\___\
**
 **  Device: xc7k325t
 **  Version: 1.2
 **  Reference:
 **
 *******************************************************************************
 **
 **  Disclaimer:
 **
 **    This disclaimer is not a license and does not grant any rights to the materials
 **    distributed herewith. Except as otherwise provided in a valid license issued to you
 **    by Xilinx, and to the maximum extent permitted by applicable law:
 **    (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS,
 **    AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
 **    INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR
 **    FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract
 **    or tort, including negligence, or under any other theory of liability) for any loss or damage
 **    of any kind or nature related to, arising under or in connection with these materials,
 **    including for any direct, or any indirect, special, incidental, or consequential loss
 **    or damage (including loss of data, profits, goodwill, or any type of loss or damage suffered
 **    as a result of any action brought by a third party) even if such damage or loss was
 **    reasonably foreseeable or Xilinx had been advised of the possibility of the same.


 **  Critical Applications:
 **
 **    Xilinx products are not designed or intended to be fail-safe, or for use in any application
 **    requiring fail-safe performance, such as life-support or safety devices or systems,
 **    Class III medical devices, nuclear facilities, applications related to the deployment of airbags,
 **    or any other applications that could lead to death, personal injury, or severe property or
 **    environmental damage (individually and collectively, "Critical Applications"). Customer assumes
 **    the sole risk and liability of any use of Xilinx products in Critical Applications, subject only
 **    to applicable laws and regulations governing limitations on product liability.

 **  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.

 *******************************************************************************/

#include "xio.h"

u8 AsciiToHex(u8 InAscii);
int HexToASCII(u8 *HexBuf, int NumBytes, u8 *SendBuf);

u8 AsciiToHex(u8 InAscii)
{
	u8 HexVal;
	if (((InAscii >= 0x41) & (InAscii <= 0x46)) | ((InAscii >= 0x61) & (InAscii <= 0x66)))
	{
		HexVal = (InAscii & 0x0F) + 0x9;
	} else if ((InAscii >= 0x30) | (InAscii <= 0x39)) {
		HexVal = InAscii - 0x30;
	} else {
		return XST_FAILURE;
	}
	//xil_printf("ASCII To HEX: %0x - %0x\n", InAscii, HexVal);
	return HexVal;
}

int HexToASCII(u8 *HexBuf, int NumBytes, u8 *SendBuf)
{
	int Index=0, localIndex=0;
	u8 Value, intVal;

	for (Index = 0; Index < NumBytes; Index++)
	{
		//xil_printf("HexToASCII: Byte = %0x\n", HexBuf[Index]);
		localIndex = 2 * Index;
		Value = HexBuf[Index];
			//- Handle upper nibble
		intVal = Value >> 4;
		if (intVal > 9)
			SendBuf[localIndex] = intVal + 0x37;
		else
			SendBuf[localIndex] = intVal + 0x30;
			//- Handle lower nibble
		intVal = Value & 0x0F;
		if (intVal > 9)
			SendBuf[localIndex + 1] = intVal + 0x37;
		else
			SendBuf[localIndex + 1] = intVal + 0x30;
		//xil_printf("HexToASCII: upper nibble = %0x, Lower nibble = %0x\n", SendBuf[localIndex], SendBuf[localIndex+1]);
	}
	return (localIndex + 2);
}
