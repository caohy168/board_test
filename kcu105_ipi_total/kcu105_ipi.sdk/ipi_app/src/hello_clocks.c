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
* @file hello_clocks.c
*
*****************************************************************************/

/***************************** Include Files ********************************/

#include "xparameters.h"
#include "xgpio.h"
#include "stdio.h"
#include "xstatus.h"
#include "xil_types.h"
#include "xil_io.h"
#include "sleep.h"

/************************** Constant Definitions ****************************/

#ifndef TESTAPP_GEN

#define SYSCLK_300       XPAR_CLOCK_COUNTER_SYSCLK300_GPIO_BASEADDR
#define USER_SI570_CLOCK XPAR_CLOCK_COUNTER_USER_SI570_CLOCK_GPIO_BASEADDR
#define CLK_125MHZ       XPAR_CLOCK_COUNTER_CLK_125MHZ_GPIO_BASEADDR
#define FPGA_EMCCLK      XPAR_CLOCK_COUNTER_EMCCLK_GPIO_BASEADDR
#define FMC_HPC_CLK0     XPAR_CLOCK_COUNTER_FMC_HPC_CLK0_GPIO_BASEADDR
#define FMC_HPC_CLK1     XPAR_CLOCK_COUNTER_FMC_HPC_CLK1_GPIO_BASEADDR
#define FMC_HPC_GBTCLK0  XPAR_CLOCK_COUNTER_FMC_HPC_GBTCLK0_GPIO_BASEADDR 
#define FMC_HPC_GBTCLK1  XPAR_CLOCK_COUNTER_FMC_HPC_GBTCLK1_GPIO_BASEADDR 
#define FMC_LPC_CLK0     XPAR_CLOCK_COUNTER_FMC_LPC_CLK0_GPIO_BASEADDR
#define FMC_LPC_CLK1     XPAR_CLOCK_COUNTER_FMC_LPC_CLK1_GPIO_BASEADDR
#define FMC_LPC_GBTCLK0  XPAR_CLOCK_COUNTER_FMC_LPC_GBTCLK0_GPIO_BASEADDR 
#define MGT_SI570_CLOCK  XPAR_CLOCK_COUNTER_MGT_SI570_CLOCK_GPIO_BASEADDR 
//#define PCIE_CLK_QO      XPAR_CLOCK_COUNTER_PCIE_CLK_QO_GPIO_BASEADDR
#define REC_CLOCK        XPAR_CLOCK_COUNTER_REC_CLOCK_GPIO_BASEADDR
#define SI5328_OUT       XPAR_CLOCK_COUNTER_SI5328_OUT_GPIO_BASEADDR 
#define SMA_MGT_REFCLK   XPAR_CLOCK_COUNTER_SMA_MGT_REFCLK_GPIO_BASEADDR

#endif /* TESTAPP_GEN */

/**************************** Type Definitions ******************************/

/***************** Macros (Inline Functions) Definitions *******************/

/************************** Function Prototypes ****************************/

/************************** Variable Definitions **************************/


    int i;
    int pass_fail;
    float SYSCLK_300_u;
    float USER_SI570_CLOCK_u;
    float CLK_125MHZ_u;
    float FPGA_EMCCLK_u;
    float FMC_HPC_CLK0_u;
    float FMC_HPC_CLK1_u;
    float FMC_HPC_GBTCLK0_u;
    float FMC_HPC_GBTCLK1_u;
    float FMC_LPC_CLK0_u;
    float FMC_LPC_CLK1_u;
    float FMC_LPC_GBTCLK0_u;
    float MGT_SI570_CLOCK_u;
//    float PCIE_CLK_QO_u;
    float SI5328_OUT_u;
    float SMA_MGT_REFCLK_u;


#ifndef TESTAPP_GEN
int hello_clocks()
{

    printf("\n\r********************************************************");
    printf("\n\r********************************************************");
    printf("\n\r**             KCU105 - Clock Frequencies             **");
    printf("\n\r********************************************************");
    printf("\n\r********************************************************\r\n");


    // Reset everything to prevent false positives.
    SYSCLK_300_u       = 0;
    USER_SI570_CLOCK_u = 0;
    CLK_125MHZ_u       = 0;
    FPGA_EMCCLK_u      = 0;
    FMC_HPC_CLK0_u     = 0;
    FMC_HPC_CLK1_u     = 0;
    FMC_HPC_GBTCLK0_u  = 0;
    FMC_HPC_GBTCLK1_u  = 0;
    FMC_LPC_CLK0_u     = 0;
    FMC_LPC_CLK1_u     = 0;
    FMC_LPC_GBTCLK0_u  = 0;
    MGT_SI570_CLOCK_u  = 0;
    //PCIE_CLK_QO_u      = 0;
    SI5328_OUT_u       = 0;
    SMA_MGT_REFCLK_u   = 0;

    // Sample the counters.
    for( i = 0; i < 10; i++ ) {
        if ((SYSCLK_300_u              > 301) || (SYSCLK_300_u              < 299)) { SYSCLK_300_u              = ((*(u32 *)SYSCLK_300               ) * 0.03663003663003663); }
        if ((USER_SI570_CLOCK_u        > 157) || (USER_SI570_CLOCK_u        < 155)) { USER_SI570_CLOCK_u        = ((*(u32 *)USER_SI570_CLOCK         ) * 0.02442002442002442); }
        if ((CLK_125MHZ_u              > 126) || (CLK_125MHZ_u              < 124)) { CLK_125MHZ_u              = ((*(u32 *)CLK_125MHZ               ) * 0.02442002442002442); }
        if ((FPGA_EMCCLK_u             >  91) || (FPGA_EMCCLK_u             <  89)) { FPGA_EMCCLK_u             = ((*(u32 *)FPGA_EMCCLK              ) * 0.02442002442002442); }
        if (((FMC_HPC_CLK0_u           > 164) || (FMC_HPC_CLK0_u            < 162)) && ((FMC_HPC_CLK0_u     > 157) || (FMC_HPC_CLK0_u      < 155)))  { FMC_HPC_CLK0_u            = ((*(u32 *)FMC_HPC_CLK0             ) * 0.02442002442002442); }
        if (((FMC_HPC_CLK1_u           > 164) || (FMC_HPC_CLK1_u            < 162)) && ((FMC_HPC_CLK1_u     > 157) || (FMC_HPC_CLK1_u      < 155)))  { FMC_HPC_CLK1_u            = ((*(u32 *)FMC_HPC_CLK1             ) * 0.02442002442002442); }
        if (((FMC_HPC_GBTCLK0_u        > 164) || (FMC_HPC_GBTCLK0_u         < 162)) && ((FMC_HPC_GBTCLK0_u  > 157) || (FMC_HPC_GBTCLK0_u   < 155)))  { FMC_HPC_GBTCLK0_u         = ((*(u32 *)FMC_HPC_GBTCLK0          ) * 0.02442002442002442); }
        if (((FMC_HPC_GBTCLK1_u        > 164) || (FMC_HPC_GBTCLK1_u         < 162)) && ((FMC_HPC_GBTCLK1_u  > 157) || (FMC_HPC_GBTCLK1_u   < 155)))  { FMC_HPC_GBTCLK1_u         = ((*(u32 *)FMC_HPC_GBTCLK1          ) * 0.02442002442002442); }
        if (((FMC_LPC_CLK0_u           > 164) || (FMC_LPC_CLK0_u            < 162)) && ((FMC_LPC_CLK0_u     > 157) || (FMC_LPC_CLK0_u      < 155)))  { FMC_LPC_CLK0_u            = ((*(u32 *)FMC_LPC_CLK0             ) * 0.02442002442002442); }
        if (((FMC_LPC_CLK1_u           > 164) || (FMC_LPC_CLK1_u            < 162)) && ((FMC_LPC_CLK1_u     > 157) || (FMC_LPC_CLK1_u      < 155)))  { FMC_LPC_CLK1_u            = ((*(u32 *)FMC_LPC_CLK1             ) * 0.02442002442002442); }
        if (((FMC_LPC_GBTCLK0_u        > 164) || (FMC_LPC_GBTCLK0_u         < 162)) && ((FMC_LPC_GBTCLK0_u  > 157) || (FMC_LPC_GBTCLK0_u   < 155)))  { FMC_LPC_GBTCLK0_u         = ((*(u32 *)FMC_LPC_GBTCLK0          ) * 0.02442002442002442); }
        if (((USER_SI570_CLOCK_u       > 164) || (USER_SI570_CLOCK_u        < 162)) && ((USER_SI570_CLOCK_u > 157) || (USER_SI570_CLOCK_u  < 155)))  { MGT_SI570_CLOCK_u         = ((*(u32 *)MGT_SI570_CLOCK          ) * 0.02442002442002442); }
        //if ((PCIE_CLK_QO_u             > 101) || (PCIE_CLK_QO_u             <  99)) { PCIE_CLK_QO_u             = ((*(u32 *)PCIE_CLK_QO              ) * 0.02442002442002442); }
        if ((SI5328_OUT_u              > 158) || (SI5328_OUT_u              < 155)) { SI5328_OUT_u              = ((*(u32 *)SI5328_OUT               ) * 0.02442002442002442); }
        if ((SMA_MGT_REFCLK_u          > 158) || (SMA_MGT_REFCLK_u          < 155)) { SMA_MGT_REFCLK_u          = ((*(u32 *)SMA_MGT_REFCLK           ) * 0.02442002442002442); }
        usleep(10);
    }

    // Take the number directly from the AXI GPIO address and scale it.
    // Scaling 0xFFF = 4095; this is the number of counts with a 100 MHz Clock inout and 100 Mhz Refclk.
    // 1/4095 * 100 (MHz) = 0.02442002442002442
    // 100 MHz Reference Clock

    SYSCLK_300_u           = ((*(u32 *)SYSCLK_300         ) * 0.02442002442002442 * 3);
    USER_SI570_CLOCK_u     = ((*(u32 *)USER_SI570_CLOCK   ) * 0.02442002442002442);
    CLK_125MHZ_u           = ((*(u32 *)CLK_125MHZ         ) * 0.02442002442002442);
    FPGA_EMCCLK_u          = ((*(u32 *)FPGA_EMCCLK        ) * 0.02442002442002442);
    FMC_HPC_CLK0_u         = ((*(u32 *)FMC_HPC_CLK0       ) * 0.02442002442002442);
    FMC_HPC_CLK1_u         = ((*(u32 *)FMC_HPC_CLK1       ) * 0.02442002442002442);
    FMC_HPC_GBTCLK0_u      = ((*(u32 *)FMC_HPC_GBTCLK0    ) * 0.02442002442002442);
    FMC_HPC_GBTCLK1_u      = ((*(u32 *)FMC_HPC_GBTCLK1    ) * 0.02442002442002442);
    FMC_LPC_CLK0_u         = ((*(u32 *)FMC_LPC_CLK0       ) * 0.02442002442002442);
    FMC_LPC_CLK1_u         = ((*(u32 *)FMC_LPC_CLK1       ) * 0.02442002442002442);
    FMC_LPC_GBTCLK0_u      = ((*(u32 *)FMC_LPC_GBTCLK0    ) * 0.02442002442002442);
    MGT_SI570_CLOCK_u      = ((*(u32 *)MGT_SI570_CLOCK    ) * 0.02442002442002442);
    //PCIE_CLK_QO_u          = ((*(u32 *)PCIE_CLK_QO        ) * 0.02442002442002442);
    SI5328_OUT_u           = ((*(u32 *)SI5328_OUT         ) * 0.02442002442002442);
    SMA_MGT_REFCLK_u       = ((*(u32 *)SMA_MGT_REFCLK     ) * 0.02442002442002442);



    printf("\r\n");
    pass_fail = 0;
    if ((SYSCLK_300_u         > 301) || (SYSCLK_300_u         < 299)) { pass_fail = pass_fail + 1; printf("SYSCLK_300          failed \r\n");}
    // Allow either 163 or 156.25 to pass.
    if (((USER_SI570_CLOCK_u  > 164) || (USER_SI570_CLOCK_u   < 162)) && ((USER_SI570_CLOCK_u   > 157) || (USER_SI570_CLOCK_u   < 155))) { pass_fail = pass_fail + 1; printf("USER_SI570_CLOCK    failed \r\n");}
    if ((CLK_125MHZ_u         > 126) || (CLK_125MHZ_u         < 124)) { pass_fail = pass_fail + 1; printf("CLK_125MHZ          failed \r\n");}
    if ((FPGA_EMCCLK_u        >  91) || (FPGA_EMCCLK_u        <  89)) { pass_fail = pass_fail + 1; printf("FPGA_EMCCLK              failed \r\n");}
    // FMC: Allow either 163 or 156.25 to pass.
    if (((FMC_HPC_CLK0_u       > 164) || (FMC_HPC_CLK0_u       < 162)) && ((FMC_HPC_CLK0_u	> 157) || (FMC_HPC_CLK0_u	< 155)))  { pass_fail = pass_fail + 1; printf("FMC_HPC_CLK0        failed \r\n");}
    if (((FMC_HPC_CLK1_u       > 164) || (FMC_HPC_CLK1_u       < 162)) && ((FMC_HPC_CLK1_u	> 157) || (FMC_HPC_CLK1_u	< 155)))  { pass_fail = pass_fail + 1; printf("FMC_HPC_CLK1        failed \r\n");}
    if (((FMC_HPC_GBTCLK0_u    > 164) || (FMC_HPC_GBTCLK0_u    < 162)) && ((FMC_HPC_GBTCLK0_u   > 157) || (FMC_HPC_GBTCLK0_u	< 155)))  { pass_fail = pass_fail + 1; printf("FMC_HPC_GBTCLK0     failed \r\n");}
    if (((FMC_HPC_GBTCLK1_u    > 164) || (FMC_HPC_GBTCLK1_u    < 162)) && ((FMC_HPC_GBTCLK1_u   > 157) || (FMC_HPC_GBTCLK1_u	< 155)))  { pass_fail = pass_fail + 1; printf("FMC_HPC_GBTCLK1     failed \r\n");}
    if (((FMC_LPC_CLK0_u       > 164) || (FMC_LPC_CLK0_u       < 162)) && ((FMC_LPC_CLK0_u	> 157) || (FMC_LPC_CLK0_u	< 155)))  { pass_fail = pass_fail + 1; printf("FMC_LPC_CLK0        failed \r\n");}
    if (((FMC_LPC_CLK1_u       > 164) || (FMC_LPC_CLK1_u       < 162)) && ((FMC_LPC_CLK1_u	> 157) || (FMC_LPC_CLK1_u	< 155)))  { pass_fail = pass_fail + 1; printf("FMC_LPC_CLK1        failed \r\n");}
    if (((FMC_LPC_GBTCLK0_u    > 164) || (FMC_LPC_GBTCLK0_u    < 162)) && ((FMC_LPC_GBTCLK0_u	> 157) || (FMC_LPC_GBTCLK0_u	< 155)))  { pass_fail = pass_fail + 1; printf("FMC_LPC_GBTCLK0     failed \r\n");}
    // Si570: Allow either 163 or 156.25 to pass.
    if (((MGT_SI570_CLOCK_u   > 164) || (MGT_SI570_CLOCK_u   < 162)) && ((MGT_SI570_CLOCK_u   > 157) || (MGT_SI570_CLOCK_u   < 155))) { pass_fail = pass_fail + 1; printf("MGT_SI570_CLOCK     failed \r\n");}
    // Using the PCIe design in IPI, so the clock in unavailable.
    //if ((PCIE_CLK_QO_u        > 101) || (PCIE_CLK_QO_u        <  99)) { pass_fail = pass_fail + 1; printf("PCIE_CLK_QO         failed \r\n");}
    if ((SI5328_OUT_u         > 158) || (SI5328_OUT_u         < 155)) { pass_fail = pass_fail + 1; printf("SI5328_OUT          failed \r\n");}
    if ((SMA_MGT_REFCLK_u     > 158) || (SMA_MGT_REFCLK_u     < 155)) { pass_fail = pass_fail + 1; printf("SMA_MGT_REFCLK      failed \r\n");}

    printf("SYSCLK_300       = %8.3f \r\n", SYSCLK_300_u);
    printf("USER_SI570_CLOCK = %8.3f \r\n", USER_SI570_CLOCK_u);
    printf("CLK_125MHZ       = %8.3f \r\n", CLK_125MHZ_u);
    printf("FPGA_EMCCLK      = %8.3f \r\n", FPGA_EMCCLK_u);
    printf("FMC_HPC_CLK0     = %8.3f \r\n", FMC_HPC_CLK0_u);
    printf("FMC_HPC_CLK1     = %8.3f \r\n", FMC_HPC_CLK1_u);
    printf("FMC_HPC_GBTCLK0  = %8.3f \r\n", FMC_HPC_GBTCLK0_u);
    printf("FMC_HPC_GBTCLK1  = %8.3f \r\n", FMC_HPC_GBTCLK1_u);
    printf("FMC_LPC_CLK0     = %8.3f \r\n", FMC_LPC_CLK0_u);
    printf("FMC_LPC_CLK1     = %8.3f \r\n", FMC_LPC_CLK1_u);
    printf("FMC_LPC_GBTCLK0  = %8.3f \r\n", FMC_LPC_GBTCLK0_u);
    printf("MGT_SI570_CLOCK  = %8.3f \r\n", MGT_SI570_CLOCK_u);
    //printf("PCIE_CLK_QO      = %8.3f \r\n", PCIE_CLK_QO_u);
    printf("SI5328_OUT       = %8.3f \r\n", SI5328_OUT_u);
    printf("SMA_MGT_REFCLK   = %8.3f \r\n", SMA_MGT_REFCLK_u);

    printf("\r\n");
    if (pass_fail == 1 )
    {
        printf("%d Clock Failed\r\n", pass_fail);
    }
    else if (pass_fail > 1 )
    {
        printf("%d Clocks Failed\r\n", pass_fail);
    }
    printf("\r\n");

    if (pass_fail > 0 )
    {
        printf("Clocking Test Failed\r\n");
        printf("\r\n");
        return XST_FAILURE;
    }
    else
    {
        printf("Clocking Test Passed\r\n");
        printf("\r\n");
        return XST_SUCCESS;
    }
    printf("\r\n");

}
#endif


