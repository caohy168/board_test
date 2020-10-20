`ifndef AXIDMA_FIFO_VH
`define AXIDMA_FIFO_VH
`include "axi4mm_axi_bridge.vh"
//-----------------------------------------------------------------------------
// $Id: 
//-----------------------------------------------------------------------------
// axi_bridge.vh
//-----------------------------------------------------------------------------
// (c) Copyright 2010 - 2010 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and 
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename:        axi_bridge.vh
//
// Description:     
//                  
// This file needs to be included in all modules so that all the modules can commonly 
// reference state_transitions
//                   
//                  
// VHDL-Standard:   VHDL'93
//-----------------------------------------------------------------------------
// Structure:   
//              Include file
//
//-----------------------------------------------------------------------------
// Revision:        v1.05.a
// Date:            06/28/12
//
//-----------------------------------------------------------------------------



   //signal arid_dependencySM_cs : arid_dependencySM_STATES;
   //signal arid_dependencySM_ns : arid_dependencySM_STATES;
   module xdma_v1_0_1_BufferMem
   #(
     parameter TCQ = 1,
     parameter BUF_DATAWIDTH = 256,
     parameter BUF_WE = BUF_DATAWIDTH/8,
     parameter BUF_DEPTH = 512,
     parameter BUF_PTR = (BUF_DEPTH <=2) ? 1:
                           (BUF_DEPTH <=4)    ? 2:
                           (BUF_DEPTH <=8)    ? 3:
                           (BUF_DEPTH <=16)   ? 4:
                           (BUF_DEPTH <=32)   ? 5:
                           (BUF_DEPTH <=64)   ? 6:
                           (BUF_DEPTH <=128)   ? 7:
                           (BUF_DEPTH <=256)   ? 8:
                           (BUF_DEPTH <=512)   ? 9:
		           (BUF_DEPTH <=1024)   ? 10 : -1,
     parameter NO_OUTPUT_REG = 1
  ) 
  (
       input clkin,
       input reset_n,
       input wrEn,
       input [BUF_DATAWIDTH-1:0] DataIn,
       input [BUF_DATAWIDTH/8-1:0] EccIn,
       input [BUF_PTR-1:0] AddrIn,
       input [BUF_PTR-1:0] AddrOut,
       input rdEn,
       output [BUF_DATAWIDTH-1:0] DataOut,
       output [BUF_DATAWIDTH/8-1:0] EccOut
  );
  reg [BUF_DATAWIDTH-1:0] DataMem [BUF_DEPTH-1:0];
  reg [BUF_DATAWIDTH/8-1:0] EccMem [BUF_DEPTH-1:0];
   `XLREG_XDMA(clkin, reset_n) begin
       if (~reset_n) begin
       end 
       else if (wrEn) begin
           DataMem[AddrIn] <= DataIn;
           EccMem[AddrIn] <= EccIn;
       end
   end
  //wire [BUF_DATAWIDTH-1:0] BuftoMem;
  if(NO_OUTPUT_REG) begin: nooutput
     assign DataOut = DataMem[AddrOut];
     assign EccOut = EccMem[AddrOut];
  end
  else begin: outputStage
     reg [BUF_DATAWIDTH-1:0] BufDout;
     reg [BUF_DATAWIDTH/8-1:0] BufEccout;
     `XSRREG_AXIMM(clkin, reset_n, BufDout, rdEn ?DataMem[AddrOut]: BufDout, {BUF_DATAWIDTH{1'b0}})
     `XSRREG_AXIMM(clkin, reset_n, BufEccout, rdEn ?EccMem[AddrOut] : BufEccout, {(BUF_DATAWIDTH/8){1'b0}})
     assign DataOut = BufDout;
     assign EccOut = BufEccout;

  end

  endmodule // BufferMem
  module xdma_v1_0_1_GenericFIFO
    #(parameter BUF_DATAWIDTH = 256,
      parameter BUF_WE = BUF_DATAWIDTH/8,
      parameter BUF_DEPTH = 512,
      parameter BUF_PTR = (BUF_DEPTH <=2) ? 1:
                           (BUF_DEPTH <=4)    ? 2:
                           (BUF_DEPTH <=8)    ? 3:
                           (BUF_DEPTH <=16)   ? 4:
                           (BUF_DEPTH <=32)   ? 5:
                           (BUF_DEPTH <=64)   ? 6:
                           (BUF_DEPTH <=128)   ? 7:
                           (BUF_DEPTH <=256)   ? 8:
                           (BUF_DEPTH <=512)   ? 9:
		           (BUF_DEPTH <=1024)   ? 10 : -1,
      parameter AE_THRESHOLD = BUF_DEPTH >> 2,
      parameter AF_THRESHOLD = BUF_DEPTH - 2
    )
    (
        input clkin,
	input reset_n,
	input sync_reset_n,
        input [BUF_DATAWIDTH-1:0] DataIn,
        output [BUF_DATAWIDTH-1:0] DataOut,
	input WrEn,
	input RdEn,
	output almost_empty,
	output almost_full,
	output empty,
	output full
   );
(* ram_style = "DISTRIBUTED" *)
   reg [BUF_DATAWIDTH-1:0] MemArray [BUF_DEPTH-1:0];
   reg [BUF_PTR-1:0] WrPtr;
   reg [BUF_PTR-1:0] RdPtr;
   reg [BUF_PTR:0] FifoCntrWr;
   reg [BUF_PTR:0] FifoCntrRd;
   wire WriteQ, RdDeQ;
   reg almost_empty_ff;
   reg almost_full_ff;
   reg empty_ff;
   reg full_ff;
   assign WriteQ = WrEn;
   assign RdDeQ = RdEn;
   assign DataOut = MemArray[RdPtr];
   assign almost_empty = almost_empty_ff;
   assign almost_full = almost_full_ff;
   assign empty = empty_ff;
   assign full = full_ff;
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n || ~sync_reset_n) begin
	     WrPtr <= 'd0;
	end
        else if (WrEn) begin
	    WrPtr <= WrPtr + 'd1;
        end
    end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n || ~sync_reset_n) begin
	     RdPtr <= 'd0;
	end
        else if (RdEn) begin
	    RdPtr <= RdPtr + 'd1;
        end
    end

   always @ (posedge clkin) begin
	if (WrEn)
           MemArray[WrPtr] <= DataIn;
   end

   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n || ~sync_reset_n) begin
	     FifoCntrWr <= 'd0;
	end
        else if ((WrEn & RdDeQ) | (~WrEn & ~RdDeQ))begin
	    FifoCntrWr <= FifoCntrWr;
        end
	else if (WrEn) begin
	    FifoCntrWr <= FifoCntrWr +'d1;
	end
        else begin
	    FifoCntrWr <= FifoCntrWr -'d1;
	end
    end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n || ~sync_reset_n) begin
	     FifoCntrRd <= 'd0;
	end
        else if ((RdEn & WriteQ) | (~RdEn & ~WriteQ)) begin
	    FifoCntrRd <= FifoCntrRd;
        end
	else if (WriteQ) begin
	    FifoCntrRd <= FifoCntrRd +'d1;
	end
        else begin
	    FifoCntrRd <= FifoCntrRd -'d1;
	end
    end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n || ~sync_reset_n)
		empty_ff <= 1'b1;
	else if((FifoCntrRd==0) || ((FifoCntrRd==1) && RdEn))
		empty_ff <= 1'b1;
	else if(FifoCntrRd>0)
		empty_ff <= 1'b0;
   end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n || ~sync_reset_n)
		almost_empty_ff <= 1'b1;
	else if(FifoCntrRd>(AE_THRESHOLD))
		almost_empty_ff <= 1'b0;
	else if(FifoCntrRd<=(AE_THRESHOLD))
		almost_empty_ff <= 1'b1;
   end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n || ~sync_reset_n)
		full_ff <= 1'b0;
	else if((FifoCntrWr==(BUF_DEPTH)) || ((FifoCntrWr==(BUF_DEPTH-1)) && WriteQ))
		full_ff <= 1'b1;
	else if(FifoCntrWr<BUF_DEPTH)
		full_ff <= 1'b0;
   end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n || ~sync_reset_n)
		almost_full_ff <= 1'b0;
	else if(FifoCntrWr>(AF_THRESHOLD))
		almost_full_ff <= 1'b1;
	else if(FifoCntrWr<=(AF_THRESHOLD)) 
		almost_full_ff <= 1'b0;
   end
   endmodule

  module xdma_v1_0_1_GenericFIFOAsyncNoHead
    #(parameter BUF_DATAWIDTH = 256,
      parameter BUF_WE = BUF_DATAWIDTH/8,
      parameter BUF_DEPTH = 512,
      parameter BUF_PTR = (BUF_DEPTH <=2) ? 1:
                           (BUF_DEPTH <=4)    ? 2:
                           (BUF_DEPTH <=8)    ? 3:
                           (BUF_DEPTH <=16)   ? 4:
                           (BUF_DEPTH <=32)   ? 5:
                           (BUF_DEPTH <=64)   ? 6:
                           (BUF_DEPTH <=128)   ? 7:
                           (BUF_DEPTH <=256)   ? 8:
                           (BUF_DEPTH <=512)   ? 9:
		           (BUF_DEPTH <=1024)   ? 10 : -1
    )
    (
        input clkin,
	input reset_n,
	input clkout,
	input reseto_n,
        input [BUF_DATAWIDTH-1:0] DataIn,
        output [BUF_DATAWIDTH-1:0] DataOut,
	input WrEn,
	input RdEn,
	output almost_empty,
	output almost_full,
	output empty,
	output full
   );
(* ram_style = "DISTRIBUTED" *)
   reg [BUF_DATAWIDTH-1:0] MemArray [BUF_DEPTH-1:0];
   reg [BUF_PTR-1:0] WrPtr;
   reg [BUF_PTR-1:0] RdPtr;
   reg [BUF_PTR:0] FifoCntrWr;
   reg [BUF_PTR:0] FifoCntrRd;
   wire WriteQ, RdDeQ;
   reg almost_empty_ff;
   reg almost_full_ff;
   reg empty_ff;
   reg full_ff;
   assign WriteQ = WrEn;
   assign RdDeQ = RdEn;

   assign DataOut = MemArray[RdPtr];

   assign almost_empty = almost_empty_ff;
   assign almost_full = almost_full_ff;
   assign empty = empty_ff;
   assign full = full_ff;
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
	     WrPtr <= 'd0;
	end
        else if (WrEn) begin
	    WrPtr <= WrPtr + 'd1;
        end
    end

    `XLREG_XDMA(clkin, reset_n) begin
     	if (~reset_n) begin
    		RdPtr <= 'd0;
	end else if (RdEn) begin
  		RdPtr <= RdPtr + 'd1;
	end
   end

   always @ (posedge clkin) begin
	if (WrEn)
            MemArray[WrPtr] <= DataIn;
   end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
	     FifoCntrWr <= 'd0;
	end
        else if ((WrEn & RdDeQ) | (~WrEn & ~RdDeQ))begin
	    FifoCntrWr <= FifoCntrWr;
        end
	else if (WrEn) begin
	    FifoCntrWr <= FifoCntrWr +'d1;
	end
        else begin
	    FifoCntrWr <= FifoCntrWr -'d1;
	end
    end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
	     FifoCntrRd <= 'd0;
	end
        else if ((RdEn & WriteQ) | (~RdEn & ~WriteQ)) begin
	    FifoCntrRd <= FifoCntrRd;
        end
	else if (WriteQ) begin
	    FifoCntrRd <= FifoCntrRd +'d1;
	end
        else begin
	    FifoCntrRd <= FifoCntrRd -'d1;
	end
    end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
		almost_empty_ff <= 1'b1;
		empty_ff <= 1'b1;
	end
	else begin
		if((FifoCntrRd==0) || ((FifoCntrRd==1) && RdEn)) begin
			empty_ff <= 1'b1;
		end 
		else if(FifoCntrRd>0) begin
			empty_ff <= 1'b0;
		end

		if((FifoCntrRd==0) || ((FifoCntrRd==1) && RdEn)) begin
			almost_empty_ff <= 1'b1;
		end
		else if(FifoCntrRd>(BUF_DEPTH>>2)) begin
			almost_empty_ff <= 1'b0;
		end
		else if(FifoCntrRd<=(BUF_DEPTH>>2)) begin
			almost_empty_ff <= 1'b1;
		end
	end
   end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
		almost_full_ff <= 1'b0;
		full_ff <= 1'b0;
	end
	else begin
		if((FifoCntrWr==(BUF_DEPTH)) || ((FifoCntrWr==(BUF_DEPTH-1)) && WriteQ)) begin
			full_ff <= 1'b1;
		end	 
		else if	(FifoCntrWr<BUF_DEPTH) begin
			full_ff <= 1'b0;
		end

		if((FifoCntrWr==(BUF_DEPTH)) || ((FifoCntrWr==(BUF_DEPTH-1)) && WriteQ)) begin
			almost_full_ff <= 1'b1;
		end
		else if(FifoCntrWr>(BUF_DEPTH-2)) begin
			almost_full_ff <= 1'b1;
		end
		else if(FifoCntrWr<=(BUF_DEPTH-2)) begin
			almost_full_ff <= 1'b0;
		end
	end
   end
   endmodule

  module xdma_v1_0_1_GenericFIFOAsync
    #(parameter BUF_DATAWIDTH = 256,
      parameter BUF_WE = BUF_DATAWIDTH/8,
      parameter BUF_DEPTH = 512,
      parameter BUF_PTR = (BUF_DEPTH <=2) ? 1:
                           (BUF_DEPTH <=4)    ? 2:
                           (BUF_DEPTH <=8)    ? 3:
                           (BUF_DEPTH <=16)   ? 4:
                           (BUF_DEPTH <=32)   ? 5:
                           (BUF_DEPTH <=64)   ? 6:
                           (BUF_DEPTH <=128)   ? 7:
                           (BUF_DEPTH <=256)   ? 8:
                           (BUF_DEPTH <=512)   ? 9:
		           (BUF_DEPTH <=1024)   ? 10 : -1,
      parameter AE_THRESHOLD = BUF_DEPTH >> 2,
      parameter AF_THRESHOLD = BUF_DEPTH - 2
    )
    (
        input clkin,
	input reset_n,
	input clkout,
	input reseto_n,
        input [BUF_DATAWIDTH-1:0] DataIn,
        output [BUF_DATAWIDTH-1:0] DataOut,
	input WrEn,
	input RdEn,
	output almost_empty,
	output almost_full,
	output empty,
	output full
   );

(* ram_style = "DISTRIBUTED" *)
   reg [BUF_DATAWIDTH-1:0] MemArray [BUF_DEPTH-1:0];
   reg [BUF_PTR-1:0] WrPtr;
   reg [BUF_PTR-1:0] RdPtr;
   reg [BUF_PTR:0] FifoCntrWr;
   reg [BUF_PTR:0] FifoCntrRd;
   wire WriteQ, RdDeQ;
   reg almost_empty_ff;
   reg almost_full_ff;
   reg empty_ff;
   reg full_ff;
   assign WriteQ = WrEn;
   assign RdDeQ = RdEn;

   reg [BUF_DATAWIDTH-1:0] Head;

   assign almost_empty = almost_empty_ff;
   assign almost_full = almost_full_ff;
   assign empty = empty_ff;
   assign full = full_ff;
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
	     WrPtr <= 'd0;
	end
        else if (WrEn) begin
	    WrPtr <= WrPtr + 'd1;
        end
    end

    `XLREG_XDMA(clkin, reset_n) begin
       	if (~reset_n) begin
     		RdPtr <= 'd0;
	end
       	else if ((RdEn && (FifoCntrRd>1) ) ||
 		(WrEn && (FifoCntrRd==0) ) ||
 		(RdEn && WrEn && (FifoCntrRd==1)))begin
   			RdPtr <= RdPtr + 'd1;
       	end
    end

   always @(posedge clkin) begin
	if (WrEn)
            MemArray[WrPtr] <= DataIn;
   end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
	     FifoCntrWr <= 'd0;
	end
        else if ((WrEn & RdDeQ) | (~WrEn & ~RdDeQ))begin
	    FifoCntrWr <= FifoCntrWr;
        end
	else if (WrEn) begin
	    FifoCntrWr <= FifoCntrWr +'d1;
	end
        else begin
	    FifoCntrWr <= FifoCntrWr -'d1;
	end
    end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
	     FifoCntrRd <= 'd0;
	end
        else if ((RdEn & WriteQ) | (~RdEn & ~WriteQ)) begin
	    FifoCntrRd <= FifoCntrRd;
        end
	else if (WriteQ) begin
	    FifoCntrRd <= FifoCntrRd +'d1;
	end
        else begin
	    FifoCntrRd <= FifoCntrRd -'d1;
	end
    end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
		almost_empty_ff <= 1'b1;
		empty_ff <= 1'b1;
	end
	else begin
		if((FifoCntrRd==0) || ((FifoCntrRd==1) && RdEn)) begin
			empty_ff <= 1'b1;
		end 
		else if(FifoCntrRd>0) begin
			empty_ff <= 1'b0;
		end

		if((FifoCntrRd==0) || ((FifoCntrRd==1) && RdEn)) begin
			almost_empty_ff <= 1'b1;
		end
		else if(FifoCntrRd>(AE_THRESHOLD)) begin
			almost_empty_ff <= 1'b0;
		end
		else if(FifoCntrRd<=(AE_THRESHOLD)) begin
			almost_empty_ff <= 1'b1;
		end
	end
   end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
		almost_full_ff <= 1'b0;
		full_ff <= 1'b0;
	end
	else begin
		if((FifoCntrWr==(BUF_DEPTH)) || ((FifoCntrWr==(BUF_DEPTH-1)) && WriteQ)) begin
			full_ff <= 1'b1;
		end	 
		else if	(FifoCntrWr<BUF_DEPTH) begin
			full_ff <= 1'b0;
		end

		if((FifoCntrWr==(BUF_DEPTH)) || ((FifoCntrWr==(BUF_DEPTH-1)) && WriteQ)) begin
			almost_full_ff <= 1'b1;
		end
		else if(FifoCntrWr>(AF_THRESHOLD)) begin
			almost_full_ff <= 1'b1;
		end
		else if(FifoCntrWr<=(AF_THRESHOLD)) begin
			almost_full_ff <= 1'b0;
		end
	end
   end

   `XLREG_XDMA(clkin, reset_n) begin
      	if (~reset_n) begin
		Head <= 1'b0;
	end 
	else begin
		if ((WrEn && (FifoCntrRd == 0)) || (WrEn && RdEn && (FifoCntrRd == 1)))
			Head <= DataIn;
		else if (RdEn || (FifoCntrRd == 0))
   			Head <= MemArray[RdPtr];
	end
    end
    assign DataOut = Head;

   endmodule

  module xdma_v1_0_1_GenericFIFOHead
    #(parameter BUF_DATAWIDTH = 256,
      parameter BUF_WE = BUF_DATAWIDTH/8,
      parameter BUF_DEPTH = 512,
      parameter BUF_PTR = (BUF_DEPTH <=2) ? 1:
                           (BUF_DEPTH <=4)    ? 2:
                           (BUF_DEPTH <=8)    ? 3:
                           (BUF_DEPTH <=16)   ? 4:
                           (BUF_DEPTH <=32)   ? 5:
                           (BUF_DEPTH <=64)   ? 6:
                           (BUF_DEPTH <=128)   ? 7:
                           (BUF_DEPTH <=256)   ? 8:
                           (BUF_DEPTH <=512)   ? 9:
		           (BUF_DEPTH <=1024)   ? 10 : -1,
      parameter AE_THRESHOLD = BUF_DEPTH >> 2,
      parameter AF_THRESHOLD = BUF_DEPTH - 2
    )
    (
        input clkin,
	input reset_n,
        input [BUF_DATAWIDTH-1:0] DataIn,
        output [BUF_DATAWIDTH-1:0] DataOut,
	input WrEn,
	input RdEn,
	output almost_empty,
	output almost_full,
	output empty,
	output full
   );

(* ram_style = "DISTRIBUTED" *)
   reg [BUF_DATAWIDTH-1:0] MemArray [BUF_DEPTH-1:0];
   reg [BUF_PTR-1:0] WrPtr;
   reg [BUF_PTR-1:0] RdPtr;
   reg [BUF_PTR:0] FifoCntrWr;
   reg [BUF_PTR:0] FifoCntrRd;
   wire WriteQ, RdDeQ;
   reg almost_empty_ff;
   reg almost_full_ff;
   reg empty_ff;
   reg full_ff;
   assign WriteQ = WrEn;
   assign RdDeQ = RdEn;

   reg [BUF_DATAWIDTH-1:0] Head;

   assign almost_empty = almost_empty_ff;
   assign almost_full = almost_full_ff;
   assign empty = empty_ff;
   assign full = full_ff;
   always @(posedge clkin) begin
        if (~reset_n) begin
	     WrPtr <= 'd0;
	end
        else if (WrEn) begin
	    WrPtr <= WrPtr + 'd1;
        end
    end

    always @(posedge clkin) begin
       	if (~reset_n) begin
     		RdPtr <= 'd0;
	end
       	else if ((RdEn && (FifoCntrRd>1) ) ||
 		(WrEn && (FifoCntrRd==0) ) ||
 		(RdEn && WrEn && (FifoCntrRd==1)))begin
   			RdPtr <= RdPtr + 'd1;
       	end
    end

   always @(posedge clkin) begin
	if (WrEn)
            MemArray[WrPtr] <= DataIn;
   end
   always @(posedge clkin) begin
        if (~reset_n) begin
	     FifoCntrWr <= 'd0;
	end
        else if ((WrEn & RdDeQ) | (~WrEn & ~RdDeQ))begin
	    FifoCntrWr <= FifoCntrWr;
        end
	else if (WrEn) begin
	    FifoCntrWr <= FifoCntrWr +'d1;
	end
        else begin
	    FifoCntrWr <= FifoCntrWr -'d1;
	end
    end
   always @(posedge clkin) begin
        if (~reset_n) begin
	     FifoCntrRd <= 'd0;
	end
        else if ((RdEn & WriteQ) | (~RdEn & ~WriteQ)) begin
	    FifoCntrRd <= FifoCntrRd;
        end
	else if (WriteQ) begin
	    FifoCntrRd <= FifoCntrRd +'d1;
	end
        else begin
	    FifoCntrRd <= FifoCntrRd -'d1;
	end
    end
   always @(posedge clkin) begin
        if (~reset_n) begin
		almost_empty_ff <= 1'b1;
		empty_ff <= 1'b1;
	end
	else begin
		if((FifoCntrRd==0) || ((FifoCntrRd==1) && RdEn)) begin
			empty_ff <= 1'b1;
		end 
		else if(FifoCntrRd>0) begin
			empty_ff <= 1'b0;
		end

		if((FifoCntrRd==0) || ((FifoCntrRd==1) && RdEn)) begin
			almost_empty_ff <= 1'b1;
		end
		else if(FifoCntrRd>(AE_THRESHOLD)) begin
			almost_empty_ff <= 1'b0;
		end
		else if(FifoCntrRd<=(AE_THRESHOLD)) begin
			almost_empty_ff <= 1'b1;
		end
	end
   end
   always @(posedge clkin) begin
        if (~reset_n) begin
		almost_full_ff <= 1'b0;
		full_ff <= 1'b0;
	end
	else begin
		if((FifoCntrWr==(BUF_DEPTH)) || ((FifoCntrWr==(BUF_DEPTH-1)) && WriteQ)) begin
			full_ff <= 1'b1;
		end	 
		else if	(FifoCntrWr<BUF_DEPTH) begin
			full_ff <= 1'b0;
		end

		if((FifoCntrWr==(BUF_DEPTH)) || ((FifoCntrWr==(BUF_DEPTH-1)) && WriteQ)) begin
			almost_full_ff <= 1'b1;
		end
		else if(FifoCntrWr>(AF_THRESHOLD)) begin
			almost_full_ff <= 1'b1;
		end
		else if(FifoCntrWr<=(AF_THRESHOLD)) begin
			almost_full_ff <= 1'b0;
		end
	end
   end

   always @(posedge clkin) begin
      	if (~reset_n) begin
		Head <= 1'b0;
	end 
	else begin
		if ((WrEn && (FifoCntrRd == 0)) || (WrEn && RdEn && (FifoCntrRd == 1)))
			Head <= DataIn;
		else if (RdEn || (FifoCntrRd == 0))
   			Head <= MemArray[RdPtr];
	end
    end
    assign DataOut = Head;

   endmodule
`endif // AXI_BRIDGE_VH

