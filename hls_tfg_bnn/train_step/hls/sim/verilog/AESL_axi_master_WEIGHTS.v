// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_master_WEIGHTS (
    clk,
    reset,
    TRAN_WEIGHTS_AWVALID,
    TRAN_WEIGHTS_AWREADY,
    TRAN_WEIGHTS_AWADDR,
    TRAN_WEIGHTS_AWID,
    TRAN_WEIGHTS_AWLEN,
    TRAN_WEIGHTS_AWSIZE,
    TRAN_WEIGHTS_AWBURST,
    TRAN_WEIGHTS_AWLOCK,
    TRAN_WEIGHTS_AWCACHE,
    TRAN_WEIGHTS_AWPROT,
    TRAN_WEIGHTS_AWQOS,
    TRAN_WEIGHTS_AWREGION,
    TRAN_WEIGHTS_AWUSER,
    TRAN_WEIGHTS_WVALID,
    TRAN_WEIGHTS_WREADY,
    TRAN_WEIGHTS_WDATA,
    TRAN_WEIGHTS_WSTRB,
    TRAN_WEIGHTS_WLAST,
    TRAN_WEIGHTS_WID,
    TRAN_WEIGHTS_WUSER,
    TRAN_WEIGHTS_ARVALID,
    TRAN_WEIGHTS_ARREADY,
    TRAN_WEIGHTS_ARADDR,
    TRAN_WEIGHTS_ARID,
    TRAN_WEIGHTS_ARLEN,
    TRAN_WEIGHTS_ARSIZE,
    TRAN_WEIGHTS_ARBURST,
    TRAN_WEIGHTS_ARLOCK,
    TRAN_WEIGHTS_ARCACHE,
    TRAN_WEIGHTS_ARPROT,
    TRAN_WEIGHTS_ARQOS,
    TRAN_WEIGHTS_ARREGION,
    TRAN_WEIGHTS_ARUSER,
    TRAN_WEIGHTS_RVALID,
    TRAN_WEIGHTS_RREADY,
    TRAN_WEIGHTS_RDATA,
    TRAN_WEIGHTS_RLAST,
    TRAN_WEIGHTS_RID,
    TRAN_WEIGHTS_RUSER,
    TRAN_WEIGHTS_RRESP,
    TRAN_WEIGHTS_BVALID,
    TRAN_WEIGHTS_BREADY,
    TRAN_WEIGHTS_BRESP,
    TRAN_WEIGHTS_BID,
    TRAN_WEIGHTS_BUSER,
    ready,
    done
    );

//------------------------Parameter----------------------
`define TV_IN_WEIGHTS "../tv/cdatafile/c.train_step.autotvin_WEIGHTS.dat"
`define TV_OUT_WEIGHTS "../tv/rtldatafile/rtl.train_step.autotvout_WEIGHTS.dat"
 parameter WEIGHTS_ADDR_BITWIDTH = 32'd 64;
 parameter WEIGHTS_AWUSER_BITWIDTH = 32'd 1;
 parameter WEIGHTS_DATA_BITWIDTH = 32'd 32;
 parameter WEIGHTS_WUSER_BITWIDTH = 32'd 1;
 parameter WEIGHTS_ID_BITWIDTH = 32'd 1;
 parameter WEIGHTS_RUSER_BITWIDTH = 32'd 1;
 parameter WEIGHTS_BUSER_BITWIDTH = 32'd 1;
 parameter   FIFO_DEPTH            =   1 + 1;
 parameter   mem_page_num            =   32'd 3;
 parameter   FIFO_DEPTH_ADDR_WIDTH   =    32'd 32;
parameter WEIGHTS_C_DATA_BITWIDTH = 32'd 8;
parameter WEIGHTS_transaction_depth = 32'd 2368;
parameter WEIGHTS_mem_depth = 32'd 592;
parameter ReadReqLatency = 32'd 1;
parameter WriteReqLatency = 32'd 1;
// Input and Output
input clk;
input reset;
input  TRAN_WEIGHTS_AWVALID;
output  TRAN_WEIGHTS_AWREADY;
input [WEIGHTS_ADDR_BITWIDTH - 1 : 0] TRAN_WEIGHTS_AWADDR;
input [WEIGHTS_ID_BITWIDTH - 1 : 0] TRAN_WEIGHTS_AWID;
input [8 - 1 : 0] TRAN_WEIGHTS_AWLEN;
input [3 - 1 : 0] TRAN_WEIGHTS_AWSIZE;
input [2 - 1 : 0] TRAN_WEIGHTS_AWBURST;
input [2 - 1 : 0] TRAN_WEIGHTS_AWLOCK;
input [4 - 1 : 0] TRAN_WEIGHTS_AWCACHE;
input [3 - 1 : 0] TRAN_WEIGHTS_AWPROT;
input [4 - 1 : 0] TRAN_WEIGHTS_AWQOS;
input [4 - 1 : 0] TRAN_WEIGHTS_AWREGION;
input [WEIGHTS_AWUSER_BITWIDTH - 1 : 0] TRAN_WEIGHTS_AWUSER;
input  TRAN_WEIGHTS_WVALID;
output  TRAN_WEIGHTS_WREADY;
input [WEIGHTS_DATA_BITWIDTH - 1 : 0] TRAN_WEIGHTS_WDATA;
input [WEIGHTS_DATA_BITWIDTH/8 - 1 : 0] TRAN_WEIGHTS_WSTRB;
input  TRAN_WEIGHTS_WLAST;
input  TRAN_WEIGHTS_WID;
input [WEIGHTS_WUSER_BITWIDTH - 1 : 0] TRAN_WEIGHTS_WUSER;
input  TRAN_WEIGHTS_ARVALID;
output  TRAN_WEIGHTS_ARREADY;
input [WEIGHTS_ADDR_BITWIDTH - 1 : 0] TRAN_WEIGHTS_ARADDR;
input [WEIGHTS_ID_BITWIDTH - 1 : 0] TRAN_WEIGHTS_ARID;
input [8 - 1 : 0] TRAN_WEIGHTS_ARLEN;
input [3 - 1 : 0] TRAN_WEIGHTS_ARSIZE;
input [2 - 1 : 0] TRAN_WEIGHTS_ARBURST;
input [2 - 1 : 0] TRAN_WEIGHTS_ARLOCK;
input [4 - 1 : 0] TRAN_WEIGHTS_ARCACHE;
input [3 - 1 : 0] TRAN_WEIGHTS_ARPROT;
input [4 - 1 : 0] TRAN_WEIGHTS_ARQOS;
input [4 - 1 : 0] TRAN_WEIGHTS_ARREGION;
input  TRAN_WEIGHTS_ARUSER;
output  TRAN_WEIGHTS_RVALID;
input  TRAN_WEIGHTS_RREADY;
output [WEIGHTS_DATA_BITWIDTH - 1 : 0] TRAN_WEIGHTS_RDATA;
output  TRAN_WEIGHTS_RLAST;
output [WEIGHTS_ID_BITWIDTH - 1 : 0] TRAN_WEIGHTS_RID;
output [WEIGHTS_RUSER_BITWIDTH - 1 : 0] TRAN_WEIGHTS_RUSER;
output [2 - 1 : 0] TRAN_WEIGHTS_RRESP;
output  TRAN_WEIGHTS_BVALID;
input  TRAN_WEIGHTS_BREADY;
output [2 - 1 : 0] TRAN_WEIGHTS_BRESP;
output [WEIGHTS_ID_BITWIDTH - 1 : 0] TRAN_WEIGHTS_BID;
output [WEIGHTS_BUSER_BITWIDTH - 1 : 0] TRAN_WEIGHTS_BUSER;
input ready;
input done;

// Inner signals
// AW request fifo
reg    [WEIGHTS_ADDR_BITWIDTH - 1 : 0]         FIFO_AW_req_ADDR           [0 : FIFO_DEPTH - 1]; 
reg    [WEIGHTS_ADDR_BITWIDTH - 1 : 0]         FIFO_AW_req_ADDR_tmp; 
reg    [1 - 1 : 0]                     FIFO_AW_req_ID           [0 : FIFO_DEPTH - 1]; 
reg    [1 - 1 : 0]                     FIFO_AW_req_ID_tmp; 
reg    [8 - 1 : 0]                     FIFO_AW_req_LEN           [0 : FIFO_DEPTH - 1]; 
reg    [8 - 1 : 0]                     FIFO_AW_req_LEN_tmp; 
reg    [3 - 1 : 0]                     FIFO_AW_req_SIZE           [0 : FIFO_DEPTH - 1]; 
reg    [3 - 1 : 0]                     FIFO_AW_req_SIZE_tmp; 
reg    [2 - 1 : 0]                     FIFO_AW_req_BURST           [0 : FIFO_DEPTH - 1]; 
reg    [2 - 1 : 0]                     FIFO_AW_req_BURST_tmp; 
reg    [31  : 0]                     FIFO_AW_req_transaction_number [0 : FIFO_DEPTH - 1]; 
reg    [31  : 0]                     FIFO_AW_req_cycle_number [0 : FIFO_DEPTH - 1]; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_AW_req_ptr_r = 0; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_AW_req_ptr_r_tmp = 0; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_AW_req_ptr_w = 0; 
reg    FIFO_AW_req_flag    =   0;        // '0' for empty, '1' for full 
reg    FIFO_AW_req_empty = 1; 
reg    FIFO_AW_req_read = 0; 
reg    FIFO_AW_req_full = 0; 

// AR request fifo
reg    [WEIGHTS_ADDR_BITWIDTH - 1 : 0]         FIFO_AR_req_ADDR           [0 : FIFO_DEPTH - 1]; 
reg    [WEIGHTS_ADDR_BITWIDTH - 1 : 0]         FIFO_AR_req_ADDR_tmp; 
reg    [1 - 1 : 0]                     FIFO_AR_req_ID           [0 : FIFO_DEPTH - 1]; 
reg    [1 - 1 : 0]                     FIFO_AR_req_ID_tmp; 
reg    [8 - 1 : 0]                     FIFO_AR_req_LEN           [0 : FIFO_DEPTH - 1]; 
reg    [8 - 1 : 0]                     FIFO_AR_req_LEN_tmp; 
reg    [3 - 1 : 0]                     FIFO_AR_req_SIZE           [0 : FIFO_DEPTH - 1]; 
reg    [3 - 1 : 0]                     FIFO_AR_req_SIZE_tmp; 
reg    [2 - 1 : 0]                     FIFO_AR_req_BURST           [0 : FIFO_DEPTH - 1]; 
reg    [2 - 1 : 0]                     FIFO_AR_req_BURST_tmp; 
reg    [31  : 0]                     FIFO_AR_req_transaction_number [0 : FIFO_DEPTH - 1]; 
reg    [31  : 0]                     FIFO_AR_req_cycle_number [0 : FIFO_DEPTH - 1]; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_AR_req_ptr_r = 0; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_AR_req_ptr_r_tmp = 0; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_AR_req_ptr_w = 0; 
reg    FIFO_AR_req_flag    =   0;        // '0' for empty, '1' for full 
reg    FIFO_AR_req_empty = 1; 
reg    FIFO_AR_req_read = 0; 
reg    FIFO_AR_req_full = 0; 

// WDATA fifo
reg    [WEIGHTS_DATA_BITWIDTH - 1 : 0]         FIFO_WDATA           [0 : FIFO_DEPTH - 1]; 
reg    [WEIGHTS_DATA_BITWIDTH/8 - 1 : 0]       FIFO_WSTRB           [0 : FIFO_DEPTH - 1]; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_WDATA_req_ptr_r = 0; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_WDATA_req_ptr_w = 0; 
reg    FIFO_WDATA_req_flag    =   0;        // '0' for empty, '1' for full 
reg    FIFO_WDATA_req_empty = 1; 
reg    FIFO_WDATA_read = 0; 
reg    FIFO_WDATA_req_full = 0; 

// WDATA size fifo
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]         FIFO_WDATA_size           [0 : FIFO_DEPTH - 1]; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_WDATA_size_ptr_r = 0; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_WDATA_size_ptr_w = 0; 
reg    FIFO_WDATA_size_flag    =   0;        // '0' for empty, '1' for full 
reg    FIFO_WDATA_size_empty = 1; 
reg    FIFO_WDATA_size_read = 0; 
reg    FIFO_WDATA_size_full = 0; 
reg    [FIFO_DEPTH_ADDR_WIDTH : 0] WDATA_size = 0; 
reg    BRESP_tmp = 0;
reg    [WEIGHTS_ID_BITWIDTH - 1 : 0] BID_tmp = 0;
reg    send_one_BRESP = 0;
reg    [31 : 0] BRESP_counter = 0;

reg [WEIGHTS_DATA_BITWIDTH - 1:0] RDATA_tmp = 0;
reg [2 - 1:0] RRESP_tmp = 0;
reg RLAST_tmp = 0;
reg RVALID_tmp = 0;
reg [WEIGHTS_ID_BITWIDTH - 1 : 0] RID_tmp = 0;
reg [WEIGHTS_DATA_BITWIDTH - 1 : 0] WEIGHTS_mem_0 [0: WEIGHTS_mem_depth - 1] = '{default : 'h0}; 
reg [WEIGHTS_DATA_BITWIDTH - 1 : 0] WEIGHTS_mem_1 [0: WEIGHTS_mem_depth - 1] = '{default : 'h0}; 
reg [WEIGHTS_DATA_BITWIDTH - 1 : 0] WEIGHTS_mem_2 [0: WEIGHTS_mem_depth - 1] = '{default : 'h0}; 
reg [31 : 0] clk_counter ;
reg [31 : 0] current_AW_req_transaction = 0 ;
reg [31 : 0] current_AR_req_transaction = -1 ;
reg write_processing = 0;
reg [WEIGHTS_ADDR_BITWIDTH - 1 : 0] wr_processing_addr = 0;
reg [WEIGHTS_ADDR_BITWIDTH - 1 : 0] rd_processing_addr = 0;
reg [31 : 0] wr_processing_trans_num = 0;
reg [WEIGHTS_DATA_BITWIDTH - 1 : 0] wr_processing_data = 0;
assign TRAN_WEIGHTS_AWREADY    =    !FIFO_AW_req_full; 
assign TRAN_WEIGHTS_ARREADY    =    !FIFO_AR_req_full; 
assign TRAN_WEIGHTS_WREADY    =     !(FIFO_WDATA_req_full || FIFO_WDATA_size_full); 
assign TRAN_WEIGHTS_BVALID = (BRESP_counter == 0) ? 0 : 1;
assign TRAN_WEIGHTS_BRESP = BRESP_tmp;
assign TRAN_WEIGHTS_BID = BID_tmp;
assign TRAN_WEIGHTS_RDATA = RDATA_tmp;
assign TRAN_WEIGHTS_RRESP = RRESP_tmp;
assign TRAN_WEIGHTS_RLAST = RLAST_tmp;
assign TRAN_WEIGHTS_RID = RID_tmp;
assign TRAN_WEIGHTS_RVALID = RVALID_tmp;

initial begin : initialize_offset
  integer DATA_byte_num; 
  integer c_bitwidth;
  DATA_byte_num = 0; 
  c_bitwidth = WEIGHTS_C_DATA_BITWIDTH;
end

always @ (posedge clk or reset) begin 
    if(reset === 0) begin 
        clk_counter <= 0;
    end else begin
        clk_counter <= clk_counter + 1;
    end
end

// Generate "FIFO_req_empty" and "FIFO_req_full" 
always @ (FIFO_AW_req_ptr_r or FIFO_AW_req_ptr_w or FIFO_AW_req_flag) begin 
    if(FIFO_AW_req_ptr_r == FIFO_AW_req_ptr_w) begin 
        if(FIFO_AW_req_flag) begin 
            FIFO_AW_req_full   <= 1; 
            FIFO_AW_req_empty  <= 0; 
        end else begin 
            FIFO_AW_req_full   <= 0; 
            FIFO_AW_req_empty  <= 1; 
        end 
    end else begin 
        FIFO_AW_req_full     <= 0; 
        FIFO_AW_req_empty    <= 0; 
    end 
end 

always @ (done) begin 
    if (done == 1) begin
        current_AW_req_transaction <= current_AW_req_transaction + 1;
    end 
end 

always @ (FIFO_AR_req_ptr_r or FIFO_AR_req_ptr_w or FIFO_AR_req_flag) begin 
    if(FIFO_AR_req_ptr_r == FIFO_AR_req_ptr_w) begin 
        if(FIFO_AR_req_flag) begin 
            FIFO_AR_req_full   <= 1; 
            FIFO_AR_req_empty  <= 0; 
        end else begin 
            FIFO_AR_req_full   <= 0; 
            FIFO_AR_req_empty  <= 1; 
        end 
    end else begin 
        FIFO_AR_req_full     <= 0; 
        FIFO_AR_req_empty    <= 0; 
    end 
end 

always @ (ready) begin 
    if (ready == 1) begin
        current_AR_req_transaction <= current_AR_req_transaction + 1;
    end 
end 
 
always @ (FIFO_WDATA_req_ptr_r or FIFO_WDATA_req_ptr_w or FIFO_WDATA_req_flag) begin 
    if(FIFO_WDATA_req_ptr_r == FIFO_WDATA_req_ptr_w) begin 
        if(FIFO_WDATA_req_flag) begin 
            FIFO_WDATA_req_full   <= 1; 
            FIFO_WDATA_req_empty  <= 0; 
        end else begin 
            FIFO_WDATA_req_full   <= 0; 
            FIFO_WDATA_req_empty  <= 1; 
        end 
    end else begin 
        FIFO_WDATA_req_full     <= 0; 
        FIFO_WDATA_req_empty    <= 0; 
    end 
end 
 
always @ (FIFO_WDATA_size_ptr_r or FIFO_WDATA_size_ptr_w or FIFO_WDATA_size_flag) begin 
    if(FIFO_WDATA_size_ptr_r == FIFO_WDATA_size_ptr_w) begin 
        if(FIFO_WDATA_size_flag) begin 
            FIFO_WDATA_size_full   <= 1; 
            FIFO_WDATA_size_empty  <= 0; 
        end else begin 
            FIFO_WDATA_size_full   <= 0; 
            FIFO_WDATA_size_empty  <= 1; 
        end 
    end else begin 
        FIFO_WDATA_size_full     <= 0; 
        FIFO_WDATA_size_empty    <= 0; 
    end 
end 
 
// Push RTL's req into FIFO_req 
always @ (posedge clk or reset) begin 
    if(reset === 0) begin 
        FIFO_AW_req_ptr_w <= 0; 
    end else begin 
        if(TRAN_WEIGHTS_AWREADY & TRAN_WEIGHTS_AWVALID ) begin    // RTL is sending a AW_request to the bus         
            FIFO_AW_req_SIZE [FIFO_AW_req_ptr_w]    =   TRAN_WEIGHTS_AWSIZE; 
            FIFO_AW_req_ADDR [FIFO_AW_req_ptr_w]    =   TRAN_WEIGHTS_AWADDR; 
            FIFO_AW_req_LEN  [FIFO_AW_req_ptr_w]    =   TRAN_WEIGHTS_AWLEN; 
            FIFO_AW_req_BURST[FIFO_AW_req_ptr_w]    =   TRAN_WEIGHTS_AWBURST; 
            FIFO_AW_req_ID[FIFO_AW_req_ptr_w]    =   TRAN_WEIGHTS_AWID; 
            FIFO_AW_req_transaction_number[FIFO_AW_req_ptr_w]    =   current_AW_req_transaction; 
            FIFO_AW_req_cycle_number[FIFO_AW_req_ptr_w]    =   clk_counter; 
            if(FIFO_AW_req_ptr_w != FIFO_DEPTH - 1) 
                FIFO_AW_req_ptr_w <= FIFO_AW_req_ptr_w + 1; 
            else 
                FIFO_AW_req_ptr_w <= 0; 
       end 
    end 
end 
 
always @ (posedge clk or reset) begin 
    if(reset === 0) begin 
        FIFO_AR_req_ptr_w <= 0; 
    end else begin 
        if(TRAN_WEIGHTS_ARREADY & TRAN_WEIGHTS_ARVALID ) begin    // RTL is sending a AR_request to the bus         
            FIFO_AR_req_SIZE [FIFO_AR_req_ptr_w]    =   TRAN_WEIGHTS_ARSIZE; 
            FIFO_AR_req_ADDR [FIFO_AR_req_ptr_w]    =   TRAN_WEIGHTS_ARADDR; 
            FIFO_AR_req_LEN  [FIFO_AR_req_ptr_w]    =   TRAN_WEIGHTS_ARLEN; 
            FIFO_AR_req_BURST[FIFO_AR_req_ptr_w]    =   TRAN_WEIGHTS_ARBURST; 
            FIFO_AR_req_ID[FIFO_AR_req_ptr_w]    =   TRAN_WEIGHTS_ARID; 
            FIFO_AR_req_transaction_number[FIFO_AR_req_ptr_w]    =   current_AR_req_transaction; 
            FIFO_AR_req_cycle_number[FIFO_AR_req_ptr_w]    =   clk_counter; 
            if(FIFO_AR_req_ptr_w != FIFO_DEPTH - 1) 
                FIFO_AR_req_ptr_w <= FIFO_AR_req_ptr_w + 1; 
            else 
                FIFO_AR_req_ptr_w <= 0; 
       end 
    end 
end

always @ (posedge clk or reset) begin 
    if(reset === 0) begin 
        FIFO_WDATA_req_ptr_w <= 0; 
    end else begin 
        if(TRAN_WEIGHTS_WREADY & TRAN_WEIGHTS_WVALID) begin    // RTL is sending a WDATA data 
            FIFO_WDATA [FIFO_WDATA_req_ptr_w]    <=   TRAN_WEIGHTS_WDATA; 
            FIFO_WSTRB [FIFO_WDATA_req_ptr_w]    <=   TRAN_WEIGHTS_WSTRB; 
            if(FIFO_WDATA_req_ptr_w != FIFO_DEPTH - 1) 
                FIFO_WDATA_req_ptr_w <= FIFO_WDATA_req_ptr_w + 1; 
            else 
                FIFO_WDATA_req_ptr_w <= 0; 
            if (TRAN_WEIGHTS_WLAST == 1 ) begin
                FIFO_WDATA_size [FIFO_WDATA_size_ptr_w] <= WDATA_size + 1;
                if(FIFO_WDATA_size_ptr_w != FIFO_DEPTH - 1) 
                    FIFO_WDATA_size_ptr_w <= FIFO_WDATA_size_ptr_w + 1; 
                else 
                    FIFO_WDATA_size_ptr_w <= 0; 
                WDATA_size <= 0;
            end else begin
                WDATA_size <= WDATA_size + 1;
            end
       end 
    end 
end

// Generate "FIFO_AW_req_flag" 
always @(posedge clk or reset) begin 
    if(reset === 0) begin 
      FIFO_AW_req_flag <= 0; 
    end else begin 
      if(TRAN_WEIGHTS_AWVALID && TRAN_WEIGHTS_AWREADY && ((FIFO_AW_req_ptr_w - FIFO_AW_req_ptr_r) % FIFO_DEPTH == FIFO_DEPTH - 1)) 
          FIFO_AW_req_flag <= 1; 
      # 0.4;
      if(FIFO_AW_req_read && !FIFO_AW_req_empty && (FIFO_AW_req_ptr_w - FIFO_AW_req_ptr_r == 0)) 
          FIFO_AW_req_flag <= 0; 
    end 
end 

// Generate "FIFO_AR_req_flag" 
always @(posedge clk or reset) begin 
    if(reset === 0) begin 
      FIFO_AR_req_flag <= 0; 
    end else begin 
      if(TRAN_WEIGHTS_ARVALID && TRAN_WEIGHTS_ARREADY && ((FIFO_AR_req_ptr_w - FIFO_AR_req_ptr_r) % FIFO_DEPTH == FIFO_DEPTH - 1)) 
          FIFO_AR_req_flag <= 1; 
      # 0.4;
      if(FIFO_AR_req_read && !FIFO_AR_req_empty && (FIFO_AR_req_ptr_w - FIFO_AR_req_ptr_r == 0)) 
          FIFO_AR_req_flag <= 0; 
    end 
end 

// Generate "FIFO_WDATA_req_flag" 
always @(posedge clk or reset) begin 
    if(reset === 0) begin 
      FIFO_WDATA_req_flag <= 0; 
    end else begin 
      if(TRAN_WEIGHTS_WVALID && TRAN_WEIGHTS_WREADY && ((FIFO_WDATA_req_ptr_w - FIFO_WDATA_req_ptr_r) % FIFO_DEPTH == FIFO_DEPTH - 1)) 
          FIFO_WDATA_req_flag <= 1; 
      # 0.4;
      if(FIFO_WDATA_read && !FIFO_WDATA_req_empty && (FIFO_WDATA_req_ptr_w - FIFO_WDATA_req_ptr_r == 0)) 
          FIFO_WDATA_req_flag <= 0; 
    end 
end 

// Generate "FIFO_WDATA_size_flag" 
always @(posedge clk or reset) begin 
    if(reset === 0) begin 
      FIFO_WDATA_size_flag <= 0; 
    end else begin 
      if(TRAN_WEIGHTS_WVALID && TRAN_WEIGHTS_WREADY && TRAN_WEIGHTS_WLAST && ((FIFO_WDATA_size_ptr_w - FIFO_WDATA_size_ptr_r) % FIFO_DEPTH == FIFO_DEPTH - 1)) 
          FIFO_WDATA_size_flag <= 1; 
      # 0.4;
      if(FIFO_WDATA_size_read && !FIFO_WDATA_size_empty && (FIFO_WDATA_size_ptr_w - FIFO_WDATA_size_ptr_r == 0)) 
          FIFO_WDATA_size_flag <= 0; 
    end
end 

always @(posedge clk or reset) begin 
    if(reset === 0) begin 
        FIFO_AW_req_read <= 0;
        FIFO_AW_req_ptr_r <= 0;
    end else begin 
        #0.2;
        if (FIFO_AW_req_ptr_r_tmp > FIFO_AW_req_ptr_r) begin
            FIFO_AW_req_read <= 1;
            FIFO_AW_req_ptr_r <= FIFO_AW_req_ptr_r + 1;
        end else if (FIFO_AW_req_ptr_r_tmp == 0 && FIFO_AW_req_ptr_r == FIFO_DEPTH - 1) begin
            FIFO_AW_req_read <= 1;
            FIFO_AW_req_ptr_r <= 0;
        end else begin 
            FIFO_AW_req_read <= 0;
        end
    end 
end

always @(posedge clk or reset) begin 
    if(reset === 0) begin 
        BRESP_counter <= 0;
        BRESP_tmp <= 0;
    end else begin
        if ( send_one_BRESP == 'b1 && !(BRESP_counter != 32'h0 && TRAN_WEIGHTS_BREADY) ) begin
            BRESP_counter <= BRESP_counter + 1;
        end else if (send_one_BRESP != 'b1 && (BRESP_counter != 32'h0 && TRAN_WEIGHTS_BREADY)) begin
            BRESP_counter <= BRESP_counter - 1;
        end
    end
end

initial begin : AW_request_proc
    integer counter;
    integer i;
    integer j;
    integer data_byte_size;
    integer output_length;
    integer FIFO_AW_req_transaction_tmp;
    integer FIFO_AW_req_clk_tmp;
    integer WDATA_size_tmp;
    reg [WEIGHTS_DATA_BITWIDTH - 1 : 0] FIFO_WDATA_tmp;
    reg [WEIGHTS_DATA_BITWIDTH - 1 : 0] WDATA_tmp;
    reg [WEIGHTS_DATA_BITWIDTH/8 - 1 : 0] FIFO_WSTRB_tmp;
    @(posedge clk);

    while (1) begin
        if (FIFO_AW_req_empty === 1 || BRESP_counter == 32) begin
            @(posedge clk);
        end else begin
            if(FIFO_AW_req_ptr_r_tmp != FIFO_DEPTH - 1)
                FIFO_AW_req_ptr_r_tmp = FIFO_AW_req_ptr_r_tmp + 1;
            else
                FIFO_AW_req_ptr_r_tmp = 0;

            FIFO_AW_req_ADDR_tmp    =  FIFO_AW_req_ADDR   [FIFO_AW_req_ptr_r]  ;
            FIFO_AW_req_SIZE_tmp    =  FIFO_AW_req_SIZE   [FIFO_AW_req_ptr_r]  ;
            FIFO_AW_req_LEN_tmp     =  FIFO_AW_req_LEN    [FIFO_AW_req_ptr_r]  ; 
            FIFO_AW_req_BURST_tmp   =  FIFO_AW_req_BURST  [FIFO_AW_req_ptr_r]  ;
            FIFO_AW_req_ID_tmp      =  FIFO_AW_req_ID  [FIFO_AW_req_ptr_r]  ;
            FIFO_AW_req_transaction_tmp   =  FIFO_AW_req_transaction_number[FIFO_AW_req_ptr_r]  ;
            FIFO_AW_req_clk_tmp     =  FIFO_AW_req_cycle_number[FIFO_AW_req_ptr_r]  ;
            
            while (clk_counter < FIFO_AW_req_clk_tmp + WriteReqLatency ) begin
                @(posedge clk);
            end
            
            data_byte_size = 1;
            for (i=0;i<FIFO_AW_req_SIZE_tmp; i=i+1) begin
                data_byte_size = data_byte_size * 2;
            end
            
            if (FIFO_AW_req_ADDR_tmp/data_byte_size > WEIGHTS_mem_depth) begin
                $display ("D:/Proyectos/tfg_hardware_accelerator/hls_tfg_bnn/train_step/hls/sim/verilog/AESL_axi_master_WEIGHTS.v: Write request address %d exceed AXI master WEIGHTS array depth: %d",FIFO_AW_req_ADDR_tmp/data_byte_size, WEIGHTS_mem_depth); 
                $finish;
            end
            
            if (FIFO_AW_req_BURST_tmp === 1) begin
                counter = 0;
                output_length = FIFO_AW_req_LEN_tmp;
                while (counter != output_length + 1) begin
                    if (FIFO_WDATA_req_empty != 1) begin 
                        FIFO_WDATA_read <= 1;
                        if(FIFO_WDATA_req_ptr_r != FIFO_DEPTH - 1)
                            FIFO_WDATA_req_ptr_r <= FIFO_WDATA_req_ptr_r + 1;
                        else
                            FIFO_WDATA_req_ptr_r <= 0;
                        FIFO_WDATA_tmp = FIFO_WDATA [FIFO_WDATA_req_ptr_r];
                        FIFO_WSTRB_tmp = FIFO_WSTRB [FIFO_WDATA_req_ptr_r];
                        for (i = 0 ; i < data_byte_size; i = i + 1) begin
                            if (FIFO_WSTRB_tmp[i] == 1) begin 
                                for (j=(i*8); j< (i+1)*8 ; j= j+1) begin
                                    WDATA_tmp[j] = FIFO_WDATA_tmp[j];
                                end
                            end else begin
                                for (j=(i*8); j< (i+1)*8 ; j= j+1) begin
                                    case(FIFO_AW_req_transaction_tmp % mem_page_num)
                                        0 : WDATA_tmp[j] = WEIGHTS_mem_0[FIFO_AW_req_ADDR_tmp / data_byte_size + counter][j];
                                        1 : WDATA_tmp[j] = WEIGHTS_mem_1[FIFO_AW_req_ADDR_tmp / data_byte_size + counter][j];
                                        2 : WDATA_tmp[j] = WEIGHTS_mem_2[FIFO_AW_req_ADDR_tmp / data_byte_size + counter][j];
                                        default: $display("The page_num of AXI write is not valid!");
                                    endcase
                                end
                            end
                        end
                        wr_processing_trans_num = FIFO_AW_req_transaction_tmp;
                        wr_processing_addr = FIFO_AW_req_ADDR_tmp/data_byte_size + counter;
                        write_processing = 1;
                        wr_processing_data = WDATA_tmp;
                        case(FIFO_AW_req_transaction_tmp % mem_page_num)
                            0 : WEIGHTS_mem_0[FIFO_AW_req_ADDR_tmp / data_byte_size + counter] <= WDATA_tmp;
                            1 : WEIGHTS_mem_1[FIFO_AW_req_ADDR_tmp / data_byte_size + counter] <= WDATA_tmp;
                            2 : WEIGHTS_mem_2[FIFO_AW_req_ADDR_tmp / data_byte_size + counter] <= WDATA_tmp;
                            default: $display("The page_num of AXI write is not valid!");
                        endcase
                        if (counter === output_length && FIFO_WDATA_size_empty != 1 ) begin
                            FIFO_WDATA_size_read <= 1;
                            if(FIFO_WDATA_size_ptr_r != FIFO_DEPTH - 1)
                                FIFO_WDATA_size_ptr_r <= FIFO_WDATA_size_ptr_r + 1;
                            else
                                FIFO_WDATA_size_ptr_r <= 0;
                            WDATA_size_tmp = FIFO_WDATA_size [FIFO_WDATA_size_ptr_r];
                            if (WDATA_size_tmp !== output_length + 1) begin
                                $display ("Burst output data size incorrect.");
                                $finish;
                            end    
                            send_one_BRESP <= 1;
                            BID_tmp <= FIFO_AW_req_ID_tmp;
                        end   
                        counter = counter + 1;
                    end 
                    @(posedge clk);
                    send_one_BRESP <= 0;
                    FIFO_WDATA_read <= 0;
                    FIFO_WDATA_size_read <= 0;
                    write_processing = 0;
                end
            end else begin
                counter = 0;
                output_length = FIFO_AW_req_LEN_tmp;
                while (counter != output_length + 1) begin
                    if (FIFO_WDATA_req_empty != 1) begin 
                        FIFO_WDATA_read <= 1;
                        if(FIFO_WDATA_req_ptr_r != FIFO_DEPTH - 1)
                            FIFO_WDATA_req_ptr_r <= FIFO_WDATA_req_ptr_r + 1;
                        else
                            FIFO_WDATA_req_ptr_r <= 0;
                        FIFO_WDATA_tmp = FIFO_WDATA [FIFO_WDATA_req_ptr_r];
                        FIFO_WSTRB_tmp = FIFO_WSTRB [FIFO_WDATA_req_ptr_r];
                        for (i = 0 ; i < data_byte_size; i = i + 1) begin
                            if (FIFO_WSTRB_tmp[i] == 1) begin 
                                for (j=(i*8); j< (i+1)*8 ; j= j+1) begin
                                    WDATA_tmp[j] = FIFO_WDATA_tmp[j];
                                end
                            end else begin
                                for (j=(i*8); j< (i+1)*8 ; j= j+1) begin
                                    case(FIFO_AW_req_transaction_tmp % mem_page_num)
                                        0 : WDATA_tmp[j] = WEIGHTS_mem_0[FIFO_AW_req_ADDR_tmp / data_byte_size][j];
                                        1 : WDATA_tmp[j] = WEIGHTS_mem_1[FIFO_AW_req_ADDR_tmp / data_byte_size][j];
                                        2 : WDATA_tmp[j] = WEIGHTS_mem_2[FIFO_AW_req_ADDR_tmp / data_byte_size][j];
                                        default: $display("The page_num of AXI write is not valid!");
                                    endcase
                                end
                            end
                        end
                        wr_processing_trans_num = FIFO_AW_req_transaction_tmp;
                        wr_processing_addr = FIFO_AW_req_ADDR_tmp/data_byte_size;
                        write_processing = 1;
                        wr_processing_data = WDATA_tmp;
                        case(FIFO_AW_req_transaction_tmp % mem_page_num)
                            0 : WEIGHTS_mem_0[FIFO_AW_req_ADDR_tmp / data_byte_size] <= WDATA_tmp;
                            1 : WEIGHTS_mem_1[FIFO_AW_req_ADDR_tmp / data_byte_size] <= WDATA_tmp;
                            2 : WEIGHTS_mem_2[FIFO_AW_req_ADDR_tmp / data_byte_size] <= WDATA_tmp;
                            default: $display("The page_num of AXI write is not valid!");
                        endcase
                        if (FIFO_WDATA_size_empty != 1 ) begin
                            FIFO_WDATA_size_read <= 1;
                            if(FIFO_WDATA_size_ptr_r != FIFO_DEPTH - 1)
                                FIFO_WDATA_size_ptr_r <= FIFO_WDATA_size_ptr_r + 1;
                            else
                                FIFO_WDATA_size_ptr_r <= 0;
                            WDATA_size_tmp = FIFO_WDATA_size [FIFO_WDATA_size_ptr_r];
                            if (WDATA_size_tmp !== output_length + 1) begin
                                $display ("Burst output data size incorrect.");
                                $finish;
                            end    
                        end    
                        send_one_BRESP <= 1;
                        counter = counter + 1;
                    end 
                    @(posedge clk);
                    send_one_BRESP <= 0;
                    FIFO_WDATA_read <= 0;
                    FIFO_WDATA_size_read <= 0;
                    write_processing = 0;
                end
            end   
        end
    end
end

always @(posedge clk or reset) begin 
    if(reset === 0) begin 
        FIFO_AR_req_read <= 0;
        FIFO_AR_req_ptr_r <= 0;
    end else begin 
        #0.2;
        if (FIFO_AR_req_ptr_r_tmp > FIFO_AR_req_ptr_r) begin
            FIFO_AR_req_read <= 1;
            FIFO_AR_req_ptr_r <= FIFO_AR_req_ptr_r + 1;
        end else if (FIFO_AR_req_ptr_r_tmp == 0 && FIFO_AR_req_ptr_r == FIFO_DEPTH - 1) begin
            FIFO_AR_req_read <= 1;
            FIFO_AR_req_ptr_r <= 0;
        end else begin 
            FIFO_AR_req_read <= 0;
        end
    end 
end

initial begin : AR_request_proc
    integer counter;
    integer i;
    integer data_byte_size;
    integer input_length;
    integer FIFO_AR_req_transaction_tmp;
    integer FIFO_AR_req_clk_tmp;
    @(posedge clk);

    while (1) begin
        RVALID_tmp <= 0;
        RID_tmp <= 0;
        if (FIFO_AR_req_empty) begin
            @(posedge clk);
        end else begin
            if(FIFO_AR_req_ptr_r_tmp != FIFO_DEPTH - 1)
                FIFO_AR_req_ptr_r_tmp = FIFO_AR_req_ptr_r_tmp + 1;
            else
                FIFO_AR_req_ptr_r_tmp = 0;

            FIFO_AR_req_ADDR_tmp    =  FIFO_AR_req_ADDR [FIFO_AR_req_ptr_r]  ;
            FIFO_AR_req_SIZE_tmp    =  FIFO_AR_req_SIZE [FIFO_AR_req_ptr_r]  ;
            FIFO_AR_req_LEN_tmp     =  FIFO_AR_req_LEN  [FIFO_AR_req_ptr_r]  ; 
            FIFO_AR_req_BURST_tmp   =  FIFO_AR_req_BURST[FIFO_AR_req_ptr_r]  ;
            FIFO_AR_req_ID_tmp      =  FIFO_AR_req_ID[FIFO_AR_req_ptr_r]  ;
            FIFO_AR_req_transaction_tmp   =  FIFO_AR_req_transaction_number[FIFO_AR_req_ptr_r]  ;
            FIFO_AR_req_clk_tmp     =  FIFO_AR_req_cycle_number[FIFO_AR_req_ptr_r]  ;
            while (clk_counter < FIFO_AR_req_clk_tmp + ReadReqLatency ) begin
                @(posedge clk);
            end

            data_byte_size = 1;
            for (i=0;i<FIFO_AR_req_SIZE_tmp; i=i+1) begin
                data_byte_size = data_byte_size * 2;
            end

            if (FIFO_AR_req_ADDR_tmp/data_byte_size > WEIGHTS_mem_depth) begin
                $display ("D:/Proyectos/tfg_hardware_accelerator/hls_tfg_bnn/train_step/hls/sim/verilog/AESL_axi_master_WEIGHTS.v: Read request address %d exceed AXI master WEIGHTS array depth: %d",FIFO_AR_req_ADDR_tmp/data_byte_size, WEIGHTS_mem_depth); 
                $finish;
            end

            if (FIFO_AR_req_BURST_tmp === 1) begin
                counter = 0;
                RLAST_tmp <= 0;
                input_length = FIFO_AR_req_LEN_tmp;
                while (counter != input_length + 1) begin
                    @(negedge clk);
                    rd_processing_addr = FIFO_AR_req_ADDR_tmp/data_byte_size + counter;
                    if ((write_processing == 1) && (wr_processing_addr == rd_processing_addr) && (wr_processing_trans_num == FIFO_AR_req_transaction_tmp))
                        RDATA_tmp <= wr_processing_data;
                    else
                        case(FIFO_AR_req_transaction_tmp % mem_page_num)
                            0 : RDATA_tmp <= WEIGHTS_mem_0[FIFO_AR_req_ADDR_tmp / data_byte_size +   counter] ;
                            1 : RDATA_tmp <= WEIGHTS_mem_1[FIFO_AR_req_ADDR_tmp / data_byte_size +   counter] ;
                            2 : RDATA_tmp <= WEIGHTS_mem_2[FIFO_AR_req_ADDR_tmp / data_byte_size +   counter] ;
                            default: $display("The page_num of AXI read is not valid!");
                        endcase
                    RVALID_tmp <= 1;
                    RID_tmp <= FIFO_AR_req_ID_tmp;
                    RRESP_tmp <= 0;
                    if (counter === input_length ) begin
                        RLAST_tmp <= 1;
                    end else begin
                        RLAST_tmp <= 0;
                    end
                        
                    @(posedge clk);
                    if (RVALID_tmp && TRAN_WEIGHTS_RREADY) begin
                        counter = counter + 1;
                    end 
                end
                RVALID_tmp <= 0;
                RLAST_tmp <= 0;
            end else begin
                counter = 0;
                RLAST_tmp <= 0;
                input_length = FIFO_AR_req_LEN_tmp;
                while (counter != input_length + 1) begin
                    @(negedge clk);
                    rd_processing_addr = FIFO_AR_req_ADDR_tmp/data_byte_size;
                    if ((write_processing == 1) && (wr_processing_addr == rd_processing_addr) && (wr_processing_trans_num == FIFO_AR_req_transaction_tmp))
                        RDATA_tmp <= wr_processing_data;
                    else
                        case(FIFO_AR_req_transaction_tmp % mem_page_num)
                            0 : RDATA_tmp <= WEIGHTS_mem_0[FIFO_AR_req_ADDR_tmp / data_byte_size ] ;
                            1 : RDATA_tmp <= WEIGHTS_mem_1[FIFO_AR_req_ADDR_tmp / data_byte_size ] ;
                            2 : RDATA_tmp <= WEIGHTS_mem_2[FIFO_AR_req_ADDR_tmp / data_byte_size ] ;
                            default: $display("The page_num of AXI read is not valid!");
                        endcase
                    RVALID_tmp <= 1;
                    RRESP_tmp <= 0;
                    RLAST_tmp <= 1;
                    @(posedge clk);
                    if (RVALID_tmp && TRAN_WEIGHTS_RREADY) begin
                        counter = counter + 1;
                    end 
                end
                RVALID_tmp <= 0;
                RLAST_tmp <= 0;
            end    
        end
    end
end

//------------------------Task and function--------------


 function is_blank_char(input [7:0] in_char);
     if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
         is_blank_char = 1;
     end else begin
         is_blank_char = 0;
     end
 endfunction

    function [127:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction

 function [127:0] rm_0x(input [127:0] token);
     reg [127:0] token_tmp;
     integer i;
     begin
         token_tmp = "";
         for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
             token_tmp = (token[7:0] << (8 * i)) | token_tmp;
             i = i + 1;
         end
         rm_0x = token_tmp;
     end
 endfunction

task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

integer WEIGHTS_port0_fresh_depth[0:50];
integer WEIGHTS_port0_blank_depth[0:50];
integer WEIGHTS_port1_fresh_depth[0:50];
integer WEIGHTS_port1_blank_depth[0:50];

initial begin : runtime_depth_init_process
    WEIGHTS_port0_fresh_depth[0] = 2048;
    WEIGHTS_port0_blank_depth[0] = 0;
    WEIGHTS_port0_fresh_depth[1] = 2048;
    WEIGHTS_port0_blank_depth[1] = 0;
    WEIGHTS_port0_fresh_depth[2] = 2048;
    WEIGHTS_port0_blank_depth[2] = 0;
    WEIGHTS_port0_fresh_depth[3] = 2048;
    WEIGHTS_port0_blank_depth[3] = 0;
    WEIGHTS_port0_fresh_depth[4] = 2048;
    WEIGHTS_port0_blank_depth[4] = 0;
    WEIGHTS_port0_fresh_depth[5] = 2048;
    WEIGHTS_port0_blank_depth[5] = 0;
    WEIGHTS_port0_fresh_depth[6] = 2048;
    WEIGHTS_port0_blank_depth[6] = 0;
    WEIGHTS_port0_fresh_depth[7] = 2048;
    WEIGHTS_port0_blank_depth[7] = 0;
    WEIGHTS_port0_fresh_depth[8] = 2048;
    WEIGHTS_port0_blank_depth[8] = 0;
    WEIGHTS_port0_fresh_depth[9] = 2048;
    WEIGHTS_port0_blank_depth[9] = 0;
    WEIGHTS_port0_fresh_depth[10] = 2048;
    WEIGHTS_port0_blank_depth[10] = 0;
    WEIGHTS_port0_fresh_depth[11] = 2048;
    WEIGHTS_port0_blank_depth[11] = 0;
    WEIGHTS_port0_fresh_depth[12] = 2048;
    WEIGHTS_port0_blank_depth[12] = 0;
    WEIGHTS_port0_fresh_depth[13] = 2048;
    WEIGHTS_port0_blank_depth[13] = 0;
    WEIGHTS_port0_fresh_depth[14] = 2048;
    WEIGHTS_port0_blank_depth[14] = 0;
    WEIGHTS_port0_fresh_depth[15] = 2048;
    WEIGHTS_port0_blank_depth[15] = 0;
    WEIGHTS_port0_fresh_depth[16] = 2048;
    WEIGHTS_port0_blank_depth[16] = 0;
    WEIGHTS_port0_fresh_depth[17] = 2048;
    WEIGHTS_port0_blank_depth[17] = 0;
    WEIGHTS_port0_fresh_depth[18] = 2048;
    WEIGHTS_port0_blank_depth[18] = 0;
    WEIGHTS_port0_fresh_depth[19] = 2048;
    WEIGHTS_port0_blank_depth[19] = 0;
    WEIGHTS_port0_fresh_depth[20] = 2048;
    WEIGHTS_port0_blank_depth[20] = 0;
    WEIGHTS_port0_fresh_depth[21] = 2048;
    WEIGHTS_port0_blank_depth[21] = 0;
    WEIGHTS_port0_fresh_depth[22] = 2048;
    WEIGHTS_port0_blank_depth[22] = 0;
    WEIGHTS_port0_fresh_depth[23] = 2048;
    WEIGHTS_port0_blank_depth[23] = 0;
    WEIGHTS_port0_fresh_depth[24] = 2048;
    WEIGHTS_port0_blank_depth[24] = 0;
    WEIGHTS_port0_fresh_depth[25] = 2048;
    WEIGHTS_port0_blank_depth[25] = 0;
    WEIGHTS_port0_fresh_depth[26] = 2048;
    WEIGHTS_port0_blank_depth[26] = 0;
    WEIGHTS_port0_fresh_depth[27] = 2048;
    WEIGHTS_port0_blank_depth[27] = 0;
    WEIGHTS_port0_fresh_depth[28] = 2048;
    WEIGHTS_port0_blank_depth[28] = 0;
    WEIGHTS_port0_fresh_depth[29] = 2048;
    WEIGHTS_port0_blank_depth[29] = 0;
    WEIGHTS_port0_fresh_depth[30] = 2048;
    WEIGHTS_port0_blank_depth[30] = 0;
    WEIGHTS_port0_fresh_depth[31] = 2048;
    WEIGHTS_port0_blank_depth[31] = 0;
    WEIGHTS_port0_fresh_depth[32] = 2048;
    WEIGHTS_port0_blank_depth[32] = 0;
    WEIGHTS_port0_fresh_depth[33] = 2048;
    WEIGHTS_port0_blank_depth[33] = 0;
    WEIGHTS_port0_fresh_depth[34] = 2048;
    WEIGHTS_port0_blank_depth[34] = 0;
    WEIGHTS_port0_fresh_depth[35] = 2048;
    WEIGHTS_port0_blank_depth[35] = 0;
    WEIGHTS_port0_fresh_depth[36] = 2048;
    WEIGHTS_port0_blank_depth[36] = 0;
    WEIGHTS_port0_fresh_depth[37] = 2048;
    WEIGHTS_port0_blank_depth[37] = 0;
    WEIGHTS_port0_fresh_depth[38] = 2048;
    WEIGHTS_port0_blank_depth[38] = 0;
    WEIGHTS_port0_fresh_depth[39] = 2048;
    WEIGHTS_port0_blank_depth[39] = 0;
    WEIGHTS_port0_fresh_depth[40] = 2048;
    WEIGHTS_port0_blank_depth[40] = 0;
    WEIGHTS_port0_fresh_depth[41] = 2048;
    WEIGHTS_port0_blank_depth[41] = 0;
    WEIGHTS_port0_fresh_depth[42] = 2048;
    WEIGHTS_port0_blank_depth[42] = 0;
    WEIGHTS_port0_fresh_depth[43] = 2048;
    WEIGHTS_port0_blank_depth[43] = 0;
    WEIGHTS_port0_fresh_depth[44] = 2048;
    WEIGHTS_port0_blank_depth[44] = 0;
    WEIGHTS_port0_fresh_depth[45] = 2048;
    WEIGHTS_port0_blank_depth[45] = 0;
    WEIGHTS_port0_fresh_depth[46] = 2048;
    WEIGHTS_port0_blank_depth[46] = 0;
    WEIGHTS_port0_fresh_depth[47] = 2048;
    WEIGHTS_port0_blank_depth[47] = 0;
    WEIGHTS_port0_fresh_depth[48] = 2048;
    WEIGHTS_port0_blank_depth[48] = 0;
    WEIGHTS_port0_fresh_depth[49] = 2048;
    WEIGHTS_port0_blank_depth[49] = 0;
    WEIGHTS_port1_fresh_depth[0] = 320;
    WEIGHTS_port1_blank_depth[0] = 0;
    WEIGHTS_port1_fresh_depth[1] = 320;
    WEIGHTS_port1_blank_depth[1] = 0;
    WEIGHTS_port1_fresh_depth[2] = 320;
    WEIGHTS_port1_blank_depth[2] = 0;
    WEIGHTS_port1_fresh_depth[3] = 320;
    WEIGHTS_port1_blank_depth[3] = 0;
    WEIGHTS_port1_fresh_depth[4] = 320;
    WEIGHTS_port1_blank_depth[4] = 0;
    WEIGHTS_port1_fresh_depth[5] = 320;
    WEIGHTS_port1_blank_depth[5] = 0;
    WEIGHTS_port1_fresh_depth[6] = 320;
    WEIGHTS_port1_blank_depth[6] = 0;
    WEIGHTS_port1_fresh_depth[7] = 320;
    WEIGHTS_port1_blank_depth[7] = 0;
    WEIGHTS_port1_fresh_depth[8] = 320;
    WEIGHTS_port1_blank_depth[8] = 0;
    WEIGHTS_port1_fresh_depth[9] = 320;
    WEIGHTS_port1_blank_depth[9] = 0;
    WEIGHTS_port1_fresh_depth[10] = 320;
    WEIGHTS_port1_blank_depth[10] = 0;
    WEIGHTS_port1_fresh_depth[11] = 320;
    WEIGHTS_port1_blank_depth[11] = 0;
    WEIGHTS_port1_fresh_depth[12] = 320;
    WEIGHTS_port1_blank_depth[12] = 0;
    WEIGHTS_port1_fresh_depth[13] = 320;
    WEIGHTS_port1_blank_depth[13] = 0;
    WEIGHTS_port1_fresh_depth[14] = 320;
    WEIGHTS_port1_blank_depth[14] = 0;
    WEIGHTS_port1_fresh_depth[15] = 320;
    WEIGHTS_port1_blank_depth[15] = 0;
    WEIGHTS_port1_fresh_depth[16] = 320;
    WEIGHTS_port1_blank_depth[16] = 0;
    WEIGHTS_port1_fresh_depth[17] = 320;
    WEIGHTS_port1_blank_depth[17] = 0;
    WEIGHTS_port1_fresh_depth[18] = 320;
    WEIGHTS_port1_blank_depth[18] = 0;
    WEIGHTS_port1_fresh_depth[19] = 320;
    WEIGHTS_port1_blank_depth[19] = 0;
    WEIGHTS_port1_fresh_depth[20] = 320;
    WEIGHTS_port1_blank_depth[20] = 0;
    WEIGHTS_port1_fresh_depth[21] = 320;
    WEIGHTS_port1_blank_depth[21] = 0;
    WEIGHTS_port1_fresh_depth[22] = 320;
    WEIGHTS_port1_blank_depth[22] = 0;
    WEIGHTS_port1_fresh_depth[23] = 320;
    WEIGHTS_port1_blank_depth[23] = 0;
    WEIGHTS_port1_fresh_depth[24] = 320;
    WEIGHTS_port1_blank_depth[24] = 0;
    WEIGHTS_port1_fresh_depth[25] = 320;
    WEIGHTS_port1_blank_depth[25] = 0;
    WEIGHTS_port1_fresh_depth[26] = 320;
    WEIGHTS_port1_blank_depth[26] = 0;
    WEIGHTS_port1_fresh_depth[27] = 320;
    WEIGHTS_port1_blank_depth[27] = 0;
    WEIGHTS_port1_fresh_depth[28] = 320;
    WEIGHTS_port1_blank_depth[28] = 0;
    WEIGHTS_port1_fresh_depth[29] = 320;
    WEIGHTS_port1_blank_depth[29] = 0;
    WEIGHTS_port1_fresh_depth[30] = 320;
    WEIGHTS_port1_blank_depth[30] = 0;
    WEIGHTS_port1_fresh_depth[31] = 320;
    WEIGHTS_port1_blank_depth[31] = 0;
    WEIGHTS_port1_fresh_depth[32] = 320;
    WEIGHTS_port1_blank_depth[32] = 0;
    WEIGHTS_port1_fresh_depth[33] = 320;
    WEIGHTS_port1_blank_depth[33] = 0;
    WEIGHTS_port1_fresh_depth[34] = 320;
    WEIGHTS_port1_blank_depth[34] = 0;
    WEIGHTS_port1_fresh_depth[35] = 320;
    WEIGHTS_port1_blank_depth[35] = 0;
    WEIGHTS_port1_fresh_depth[36] = 320;
    WEIGHTS_port1_blank_depth[36] = 0;
    WEIGHTS_port1_fresh_depth[37] = 320;
    WEIGHTS_port1_blank_depth[37] = 0;
    WEIGHTS_port1_fresh_depth[38] = 320;
    WEIGHTS_port1_blank_depth[38] = 0;
    WEIGHTS_port1_fresh_depth[39] = 320;
    WEIGHTS_port1_blank_depth[39] = 0;
    WEIGHTS_port1_fresh_depth[40] = 320;
    WEIGHTS_port1_blank_depth[40] = 0;
    WEIGHTS_port1_fresh_depth[41] = 320;
    WEIGHTS_port1_blank_depth[41] = 0;
    WEIGHTS_port1_fresh_depth[42] = 320;
    WEIGHTS_port1_blank_depth[42] = 0;
    WEIGHTS_port1_fresh_depth[43] = 320;
    WEIGHTS_port1_blank_depth[43] = 0;
    WEIGHTS_port1_fresh_depth[44] = 320;
    WEIGHTS_port1_blank_depth[44] = 0;
    WEIGHTS_port1_fresh_depth[45] = 320;
    WEIGHTS_port1_blank_depth[45] = 0;
    WEIGHTS_port1_fresh_depth[46] = 320;
    WEIGHTS_port1_blank_depth[46] = 0;
    WEIGHTS_port1_fresh_depth[47] = 320;
    WEIGHTS_port1_blank_depth[47] = 0;
    WEIGHTS_port1_fresh_depth[48] = 320;
    WEIGHTS_port1_blank_depth[48] = 0;
    WEIGHTS_port1_fresh_depth[49] = 320;
    WEIGHTS_port1_blank_depth[49] = 0;
end
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_file_process 
  integer fp; 
  reg [ 100*8 : 1] str;
  reg [63:0] trans_depth;
  integer err; 
  integer ret; 
  integer transaction_num; 
  integer read_idx;
  integer port_idx;
  integer mem_page; 
  reg [8 - 1 : 0] token_tmp; 
  reg [WEIGHTS_DATA_BITWIDTH - 1 : 0] mem_tmp; 
  integer i; 
  reg [2 - 1 : 0] port_read_done;
  reg [2 - 1 : 0] port_fill_done;
  transaction_num = 0;
  port_read_done = 'd0;
  port_fill_done = 'd0;
  fp = $fopen(`TV_IN_WEIGHTS,"rb"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_WEIGHTS); 
      $finish; 
  end 
  ret = $fread(trans_depth,fp);
  while (trans_depth != 64'h5a5aa5a50f0ff0f0)  begin
      @(posedge clk);
      # 0.2;
      while(ready !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      mem_page = transaction_num % mem_page_num ;
      mem_tmp[WEIGHTS_DATA_BITWIDTH - 1: 0] = 0;
      read_idx = 0;
      port_idx = 0;
      for(i = 0; i < WEIGHTS_transaction_depth; i = i + 1) begin 
              if (port_idx == 0) begin
                  if (port_read_done[port_idx] == 1'b0 && read_idx == WEIGHTS_port0_fresh_depth[transaction_num]) begin
                      port_read_done[port_idx] = 1'b1;
                      read_idx = 0;
                  end
                  if (port_read_done[port_idx] == 1'b0 && read_idx < WEIGHTS_port0_fresh_depth[transaction_num]) begin
          ret = $fread(token_tmp,fp);
                      read_idx = read_idx + 1;
                  end
                  if (port_fill_done[port_idx] == 1'b0 && port_read_done[port_idx] == 1'b1 && read_idx == WEIGHTS_port0_blank_depth[transaction_num]) begin
                      port_fill_done[port_idx] = 1'b1;
                      port_idx = port_idx + 1;
                      read_idx = 0;
                  end
                  if (port_fill_done[port_idx] == 1'b0 && port_read_done[port_idx] == 1'b1 && read_idx < WEIGHTS_port0_blank_depth[transaction_num]) begin
                      token_tmp = 'd0;
                      read_idx = read_idx + 1;
                  end
              end
              if (port_idx == 1) begin
                  if (port_read_done[port_idx] == 1'b0 && read_idx == WEIGHTS_port1_fresh_depth[transaction_num]) begin
                      port_read_done[port_idx] = 1'b1;
                      read_idx = 0;
                  end
                  if (port_read_done[port_idx] == 1'b0 && read_idx < WEIGHTS_port1_fresh_depth[transaction_num]) begin
          ret = $fread(token_tmp,fp);
                      read_idx = read_idx + 1;
                  end
                  if (port_fill_done[port_idx] == 1'b0 && port_read_done[port_idx] == 1'b1 && read_idx == WEIGHTS_port1_blank_depth[transaction_num]) begin
                      port_fill_done[port_idx] = 1'b1;
                      port_idx = port_idx + 1;
                      read_idx = 0;
                  end
                  if (port_fill_done[port_idx] == 1'b0 && port_read_done[port_idx] == 1'b1 && read_idx < WEIGHTS_port1_blank_depth[transaction_num]) begin
                      token_tmp = 'd0;
                      read_idx = read_idx + 1;
                  end
              end
          if (i%4 == 0) begin
              mem_tmp[7 : 0] = token_tmp;
          end
          else if (i%4 == 1) begin
              mem_tmp[15 : 8] = token_tmp;
          end
          else if (i%4 == 2) begin
              mem_tmp[23 : 16] = token_tmp;
          end
          else if (i%4 == 3) begin
              mem_tmp[31 : 24] = token_tmp;
          end
          if (i%4 == 3) begin
              case(mem_page)
                  0 : WEIGHTS_mem_0[i/4] = mem_tmp;
                  1 : WEIGHTS_mem_1[i/4] = mem_tmp;
                  2 : WEIGHTS_mem_2[i/4] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
              mem_tmp[WEIGHTS_DATA_BITWIDTH - 1 : 0] = 0;
          end
      end 
      ret = $fread(trans_depth,fp);
      transaction_num = transaction_num + 1;
      port_read_done = 'd0;
      port_fill_done = 'd0;
  end 
  $fclose(fp); 
end 
 
integer WEIGHTS_cur_trans_depth[0:50];

initial begin : out_depth_init_process
    WEIGHTS_cur_trans_depth[0] = 2368;
    WEIGHTS_cur_trans_depth[1] = 2368;
    WEIGHTS_cur_trans_depth[2] = 2368;
    WEIGHTS_cur_trans_depth[3] = 2368;
    WEIGHTS_cur_trans_depth[4] = 2368;
    WEIGHTS_cur_trans_depth[5] = 2368;
    WEIGHTS_cur_trans_depth[6] = 2368;
    WEIGHTS_cur_trans_depth[7] = 2368;
    WEIGHTS_cur_trans_depth[8] = 2368;
    WEIGHTS_cur_trans_depth[9] = 2368;
    WEIGHTS_cur_trans_depth[10] = 2368;
    WEIGHTS_cur_trans_depth[11] = 2368;
    WEIGHTS_cur_trans_depth[12] = 2368;
    WEIGHTS_cur_trans_depth[13] = 2368;
    WEIGHTS_cur_trans_depth[14] = 2368;
    WEIGHTS_cur_trans_depth[15] = 2368;
    WEIGHTS_cur_trans_depth[16] = 2368;
    WEIGHTS_cur_trans_depth[17] = 2368;
    WEIGHTS_cur_trans_depth[18] = 2368;
    WEIGHTS_cur_trans_depth[19] = 2368;
    WEIGHTS_cur_trans_depth[20] = 2368;
    WEIGHTS_cur_trans_depth[21] = 2368;
    WEIGHTS_cur_trans_depth[22] = 2368;
    WEIGHTS_cur_trans_depth[23] = 2368;
    WEIGHTS_cur_trans_depth[24] = 2368;
    WEIGHTS_cur_trans_depth[25] = 2368;
    WEIGHTS_cur_trans_depth[26] = 2368;
    WEIGHTS_cur_trans_depth[27] = 2368;
    WEIGHTS_cur_trans_depth[28] = 2368;
    WEIGHTS_cur_trans_depth[29] = 2368;
    WEIGHTS_cur_trans_depth[30] = 2368;
    WEIGHTS_cur_trans_depth[31] = 2368;
    WEIGHTS_cur_trans_depth[32] = 2368;
    WEIGHTS_cur_trans_depth[33] = 2368;
    WEIGHTS_cur_trans_depth[34] = 2368;
    WEIGHTS_cur_trans_depth[35] = 2368;
    WEIGHTS_cur_trans_depth[36] = 2368;
    WEIGHTS_cur_trans_depth[37] = 2368;
    WEIGHTS_cur_trans_depth[38] = 2368;
    WEIGHTS_cur_trans_depth[39] = 2368;
    WEIGHTS_cur_trans_depth[40] = 2368;
    WEIGHTS_cur_trans_depth[41] = 2368;
    WEIGHTS_cur_trans_depth[42] = 2368;
    WEIGHTS_cur_trans_depth[43] = 2368;
    WEIGHTS_cur_trans_depth[44] = 2368;
    WEIGHTS_cur_trans_depth[45] = 2368;
    WEIGHTS_cur_trans_depth[46] = 2368;
    WEIGHTS_cur_trans_depth[47] = 2368;
    WEIGHTS_cur_trans_depth[48] = 2368;
    WEIGHTS_cur_trans_depth[49] = 2368;
end
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_file_proc 
  integer fp; 
  reg [ 100*8 : 1] str;
  integer transaction_num; 
  integer i; 
  integer j; 
  integer port_idx;
  integer write_idx;
  integer mem_page; 
  reg [WEIGHTS_C_DATA_BITWIDTH - 1 : 0] mem_tmp; 
  reg [WEIGHTS_DATA_BITWIDTH - 1 : 0] tmp_data;
  reg write_ready;
  reg [63:0] bin_data;
  reg [2 - 1 : 0] port_write_done;
  reg [2 - 1 : 0] port_fill_done;
  transaction_num = 0; 
  while(1) begin 
      @(posedge clk);
      while(done !== 1) begin
          @(posedge clk);
      end
      mem_page = transaction_num % mem_page_num ;
      # 0.1;
      write_idx = 0;
      port_idx = 0;
      port_write_done = 'd0;
      port_fill_done = 'd0;
      write_ready = 1'b1;
      fp = $fopen(`TV_OUT_WEIGHTS, "ab"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_WEIGHTS); 
          $finish; 
      end 
      bin_data = WEIGHTS_cur_trans_depth[transaction_num];
      write_binary(fp,bin_data,64);
      for(i = 0; i < WEIGHTS_mem_depth; i = i + 1) begin 
          case(mem_page)
              0 : tmp_data = WEIGHTS_mem_0[i];
              1 : tmp_data = WEIGHTS_mem_1[i];
              2 : tmp_data = WEIGHTS_mem_2[i];
              default: $display("The page_num of write file is not valid!");
          endcase
          
          for (j=0;j<4;j=j+1) begin
              case(j%4)
                  0: mem_tmp = tmp_data[7:0];
                  1: mem_tmp = tmp_data[15:8];
                  2: mem_tmp = tmp_data[23:16];
                  3: mem_tmp = tmp_data[31:24];
              endcase
              if (port_idx == 0) begin
                  if (port_write_done[port_idx] == 1'b0 && write_idx == WEIGHTS_port0_fresh_depth[transaction_num]) begin
                      port_write_done[port_idx] = 1'b1;
                      write_idx = 0;
                      write_ready = 1'b0;
                  end
                  if (port_write_done[port_idx] == 1'b0 && write_idx < WEIGHTS_port0_fresh_depth[transaction_num]) begin
                      write_idx = write_idx + 1;
                      write_ready = 1'b1;
                  end
                  if (port_fill_done[port_idx] == 1'b0 && port_write_done[port_idx] == 1'b1 && write_idx == WEIGHTS_port0_blank_depth[transaction_num]) begin
                      write_idx = 0;
                      port_fill_done[port_idx] = 1'b1;
                      port_idx = port_idx + 1;
                  end
                  if (port_fill_done[port_idx] == 1'b0 && port_write_done[port_idx] == 1'b1 && write_idx < WEIGHTS_port0_blank_depth[transaction_num]) begin
                      write_idx = write_idx + 1;
                  end
              end
              if (port_idx == 1) begin
                  if (port_write_done[port_idx] == 1'b0 && write_idx == WEIGHTS_port1_fresh_depth[transaction_num]) begin
                      port_write_done[port_idx] = 1'b1;
                      write_idx = 0;
                      write_ready = 1'b0;
                  end
                  if (port_write_done[port_idx] == 1'b0 && write_idx < WEIGHTS_port1_fresh_depth[transaction_num]) begin
                      write_idx = write_idx + 1;
                      write_ready = 1'b1;
                  end
                  if (port_fill_done[port_idx] == 1'b0 && port_write_done[port_idx] == 1'b1 && write_idx == WEIGHTS_port1_blank_depth[transaction_num]) begin
                      write_idx = 0;
                      port_fill_done[port_idx] = 1'b1;
                      port_idx = port_idx + 1;
                  end
                  if (port_fill_done[port_idx] == 1'b0 && port_write_done[port_idx] == 1'b1 && write_idx < WEIGHTS_port1_blank_depth[transaction_num]) begin
                      write_idx = write_idx + 1;
                  end
              end
              if (write_ready == 1'b1) begin
              bin_data = mem_tmp;
              write_binary(fp,bin_data,8);
          end
      end
      end
      
      
      transaction_num = transaction_num + 1;
      $fclose(fp); 
  end 
end 
endmodule
