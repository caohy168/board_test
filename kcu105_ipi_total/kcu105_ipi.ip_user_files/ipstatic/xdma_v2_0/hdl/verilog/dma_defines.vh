`ifndef DMA_DEFINES_VH
`define DMA_DEFINES_VH

`define DAT_WIDTH 256
`define ADR_WIDTH 64
`define ALN_WIDTH 4	// Bits used for subbeat dword alignment 
`define LEN_WIDTH 28
`define RID_WIDTH 9
`define DID_WIDTH 9

`define H2C_TAR_ID 0
`define C2H_TAR_ID 1
`define IRQ_TAR_ID 2
`define CFG_TAR_ID 3
`define DSC_H2C_TAR_ID 4
`define DSC_C2H_TAR_ID 5
`define DSC_TAR_ID 6
`define MSIX_TAR_ID 8

`define MSIX_PBA_OFFSET 12'hfe0
`endif
