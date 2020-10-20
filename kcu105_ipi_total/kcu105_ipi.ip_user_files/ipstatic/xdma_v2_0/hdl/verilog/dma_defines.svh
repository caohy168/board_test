`ifndef DMA_DEFINES_SVH
`define DMA_DEFINES_SVH

`include "dma_defines.vh"


typedef struct packed {
	logic [`ADR_WIDTH-1:0] adr;
	logic [`RID_WIDTH-1:0] rid;
	logic [`LEN_WIDTH-1:0] byte_len;   // byte length
	logic [`DID_WIDTH-1:0] did;
} rrq_t;

typedef struct packed {
	logic			eop;
	logic			wbk;
	logic [4:0]		err;
	//logic [`DAT_WIDTH/32-1:0] wen; // dword write enable
	logic [`RID_WIDTH-1:0] rid;
	logic [`DID_WIDTH-1:0] did;
	logic [`DAT_WIDTH-1:0] dat;
} rcp_t;

typedef struct packed {
	logic [`ADR_WIDTH-1:0] adr;
	logic [`RID_WIDTH-1:0] rid;
	logic [`LEN_WIDTH-1:0] byte_len;   // byte length
	logic [5:0]  aln;		// Source alignment
	logic	eop;
	logic	eor;
} wrq_t;

typedef struct packed {
	logic [31:0]	dat;
} wbrq_t;

typedef struct packed {
	logic [3:0]		be;	
	logic			rd;
	logic			wr;
	logic [31:0] 		dat;
	logic [31:0]		adr;
} trq_t;

typedef struct packed {
	logic			vld;
	logic [31:0] 		dat;
} tcp_t;

typedef struct packed {
	logic			run;
	logic			c2h_wbk_ena;
	logic			noninc;
	logic [`ADR_WIDTH-1:0]	cdc_wbk_adr;
} creg_t;

`endif
