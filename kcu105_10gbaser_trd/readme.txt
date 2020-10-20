*************************************************************************
   ____  ____ 
  /   /\/   / 
 /___/  \  /   
 \   \   \/    © Copyright 2014-2017 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary 
  /   /        information of Xilinx, Inc. and is protected under U.S. 
 /___/   /\    and international copyright and other intellectual 
 \   \  /  \   property laws. 
  \___\/\___\ 
 
*************************************************************************

Vendor: Xilinx 
Current readme.txt Version: 2017.3
Date Last Modified: 12OCT2017
Date Created: 30APR2014

Associated Filename: rdf0308-kcu105-trd04-2017-3.zip

Associated Document: UG921, KCU105 10GBASE-R Ethernet TRD User Guide (KUCon-TRD04)

Supported Device(s): KCU105 Board with with the 
                     Kintex® UltraScale XCKU040-2FFVA1156E FPGA 

   
*************************************************************************

Disclaimer: 

      This disclaimer is not a license and does not grant any rights to 
      the materials distributed herewith. Except as otherwise provided in 
      a valid license issued to you by Xilinx, and to the maximum extent 
      permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE 
      "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL 
      WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
      INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, 
      NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
      (2) Xilinx shall not be liable (whether in contract or tort, 
      including negligence, or under any other theory of liability) for 
      any loss or damage of any kind or nature related to, arising under 
      or in connection with these materials, including for any direct, or 
      any indirect, special, incidental, or consequential loss or damage 
      (including loss of data, profits, goodwill, or any type of loss or 
      damage suffered as a result of any action brought by a third party) 
      even if such damage or loss was reasonably foreseeable or Xilinx 
      had been advised of the possibility of the same.

Critical Applications:

      Xilinx products are not designed or intended to be fail-safe, or 
      for use in any application requiring fail-safe performance, such as 
      life-support or safety devices or systems, Class III medical 
      devices, nuclear facilities, applications related to the deployment 
      of airbags, or any other applications that could lead to death, 
      personal injury, or severe property or environmental damage 
      (individually and collectively, "Critical Applications"). Customer 
      assumes the sole risk and liability of any use of Xilinx products 
      in Critical Applications, subject only to applicable laws and 
      regulations governing limitations on product liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS 
FILE AT ALL TIMES.

*************************************************************************

This readme file contains these sections:

1. REVISION HISTORY
2. OVERVIEW
3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
4. DESIGN FILE HIERARCHY
5. INSTALLATION AND OPERATING INSTRUCTIONS
6. OTHER INFORMATION (OPTIONAL)
7. SUPPORT


1. REVISION HISTORY 

            Readme  
Date        Version      Revision Description
=========================================================================
30APR2014   2014.1       Beta release
18JUN2014   2014.2       EA1 release, Upgraded TRD for Vivado 2014.2
                         added power monitoring feature
08OCT2014   2014.3       EA2 release, Upgraded TRD for Vivado 2014.3 
23FEB2015   2014.4.1     Upgraded TRD for Vivado 2014.4.1 
27APR2015   2015.1       Upgraded TRD for Vivado 2015.1
30JUN2015   2015.2       Upgraded TRD for Vivado 2015.2
30SEP2015   2015.3       Upgraded TRD for Vivado 2015.3
24NOV2015   2015.4       Upgraded TRD for Vivado 2015.4
18APR2016   2016.1       Upgraded TRD for Vivado 2016.1
08JUN2016   2016.2       Upgraded TRD for Vivado 2016.2
20OCT2016   2016.3       Upgraded TRD for Vivado 2016.3
14DEC2016   2016.4       Upgraded TRD for Vivado 2016.4
20APR2017   2017.1       Upgraded TRD for Vivado 2017.1
07JUL2017   2017.2       Upgraded TRD for Vivado 2017.2
12OCT2017   2017.3       Upgraded TRD for Vivado 2017.3
=========================================================================



2. OVERVIEW

This readme describes how to use the files that come with UG921

The 10GBASE-R Ethernet TRD targets the Kintex® UltraScale XCKU040-2FFVA1156 FPGA installed on the KCU105 Board. 
It demonstrates connectivity between 10G Ethernet PCS/PMA IP (10GBASE-R) and 10G Ethernet MAC IP and Traffic flow on this 
10G Ethernet Channel.


3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS

- Vivado® Design Suite 2017.3
- 10GBASE-R Ethernet targeted reference design files (rdf0308-kcu105-trd04-2017-3.zip)
- USB UART drivers (CP210x VCP drivers)
- Tera Term terminal emulator
- Java SE Runtime Environment 7
- Ethernet Controller application GUI (included in the reference design zip file)

Refer to Chapter 2, Set Up of the UG921 for details. 


4. DESIGN FILE HIERARCHY

    kcu105_10gbaser_trd : Main TRD folder
    |
    |--hardware : Design files and scripts for simulation & implementation
    |  |
    |  |---sources 
    |  |   |
    |  |   |----hdl: Verilog source files for the TRD
    |  |   |
    |  |   |----ip_packaged: Traffic Generator and Monitor block, packaged to be used in the IPI block design
    |  |   |
    |  |   |----constraints: xdc file constrainting the design IOs 
    |  |   |
    |  |   |----testbench: Verilog testbench file required to run Out of box simulation. 
    |  |
    |  |---vivado 
    |      |
    |      |----scripts : Scripts to set up a vivado project
    |      |
    |      |----runs : Output of Vivado simulation, synthesis and implementation runs
    |  
    |--software : 
    |  |
    |  |---sources : files to create the application to run on MicroBlaze
    |  |
    |  |---GUI : Executable to install Ethernet Controller on the Control PC. The Etherenet Controller is Java GUI/Driver
    |  |         which communicates with UART port of the KCU105 board 
    |
    |--ready_to_test  : bitfile for the TRD and a power point presentation
    |
    |--readme : This file 


5. INSTALLATION AND OPERATING INSTRUCTIONS 

Refer to UG921 for installation and operating instructions.
The User Guide - UG921 provides information on the following
- Design Overview
- Demo requirements & preliminary setup
- Design bringup on KCU105 Evaluation Board
- Implementing the design
- Simulating the design

6. OTHER INFORMATION 

Known issues
------------
a. If there is an issue with ETH PHY not linking up, make sure that the clock going to the design in 156.25 MHz.Program the Si570 clock 
   on the board via the System Controller. 
b. While using the Vivado tool on a Windows platform,the path length (on hierarchial expansion of IPs)should not exceed 260 bytes else an error occurs.The error is due to a Windows OS limitation. Windows has a 260 character limitation on the maximum length for a path. 
   Due to this limitation, if the path length is more than 260 characters, Vivado and its subsidiary tools might fail.To avoid this, copy the design to C:/ or the user specified path can be shortened as shown below by using the subst command to a virtual drive letter in Vivado's TCL console or in a script, for example :
      exec subst V: C:/Users/username/workspace/vivado_projects/kcu105_10gbaser_trd/hardware
  By doing the above, all further operations in Vivado will refer to V: instead of C:/Users/username/workspace/vivado_projects/kcu105_10gbaser_trd/hardware
   For more details,refer to AR 52787 in the link:
    http://www.xilinx.com/support/answers/52787.htm  

   
Other notes
-----------
a. The 10G Ethernet MAC IP core requires a license to build the design. The license can be obtainined by clicking on
   Evalaute or Order in the following page
   http://www.xilinx.com/products/intellectual-property/DO-DI-10GEMAC.htm


Programming Si570 chip on the KCU105 board
-------------------------------------------
a.  Install CP210x USB-UART driver from Silicon Labs
    http://www.xilinx.com/support/documentation/boards_and_kits/install/ug1033-cp210x-usb-uart-install.pdf
b.  Install a Terminal program to communicate over a COM port
    http://www.xilinx.com/support/documentation/boards_and_kits/install/ug1036-tera-term-install.pdf
c.  Connect a microB to Type-A USB cable between the KCU105 (J4)  and a host PC USB port
d.  Windows Device Manager indicates the Enhanced and Standard COM port numbers for the Dual CP210x USB to UART Bridge
    Enhanced COM Port:  System Controller
    Standard COM Port :  UltraScale FPGA
e.  Launch the terminal program (e.g. TeraTerm) and connect to the Enhanced COM port associated with the System Controller
    Baud Rate: 115200
    8 data bits, No parity, 1 Stop bit, No hardware flow control
f.  Connect the KCU105 12V power input (J15) to the power adapter
g.  Power-up the KCU105 by sliding SW1 to the ON position
    Observe the System Controller menu on the terminal window
    KCU105 System Controller v1.1a
          - Main Menu -
    -----------------------------
    1. CLOCK  Menu
    2. PMBUS  Menu
    3. SYSMON Menu
    4. FMC    Menu
    5. GPIO   Menu
    Select an option
h.  Enter 1 on the keyboard to select the CLOCK menu, the following menu appears
    KCU105 System Controller v1.1a
       - Clock Menu -
    -----------------------------
    1. Set KCU105 Si570   Frequency
    2. Set KCU105 Si5328  Frequency
    3. Set FMC XM101 Clocks
    4. Set FMC XM104 Clocks
    5. Set FMC XM105 Clocks
    6. Set FMC XM107 Clocks
    0. Return to Main Menu
    Select an option 
i.  Enter 1 on the keyboard to program Si570 chip, the following instruction appears
    Enter the Si570 frequency (10-810MHz):
j. Enter 156.26 on the keyboard to program Si570 chip. Ater the Si570 is programmed the following
    message appears 
    Freq:156.2500000000 HS_DIV=4 N1=8 DCO=5000.0 RFREQ=0x02BBFDDF9F
k.  Close the terminal program    
   

7. SUPPORT

To obtain technical support for this reference design, go to 
www.xilinx.com/support to locate answers to known issues in the Xilinx
Answers Database.  
