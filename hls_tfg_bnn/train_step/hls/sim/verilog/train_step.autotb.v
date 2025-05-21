// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      train_step
`define AUTOTB_DUT_INST AESL_inst_train_step
`define AUTOTB_TOP      apatb_train_step_top
`define AUTOTB_LAT_RESULT_FILE "train_step.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "train_step.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_train_step_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_WEIGHTS 1
`define AESL_MEM_img_pos AESL_automem_img_pos
`define AESL_MEM_INST_img_pos mem_inst_img_pos
`define AESL_MEM_img_neg AESL_automem_img_neg
`define AESL_MEM_INST_img_neg mem_inst_img_neg
`define AESL_DEPTH_sample_idx 1
`define AESL_DEPTH_W1 1
`define AESL_DEPTH_W2 1
`define AUTOTB_TVIN_WEIGHTS  "../tv/cdatafile/c.train_step.autotvin_WEIGHTS.dat"
`define AUTOTB_TVIN_img_pos  "../tv/cdatafile/c.train_step.autotvin_img_pos.dat"
`define AUTOTB_TVIN_img_neg  "../tv/cdatafile/c.train_step.autotvin_img_neg.dat"
`define AUTOTB_TVIN_W1  "../tv/cdatafile/c.train_step.autotvin_W1.dat"
`define AUTOTB_TVIN_W2  "../tv/cdatafile/c.train_step.autotvin_W2.dat"
`define AUTOTB_TVIN_WEIGHTS_out_wrapc  "../tv/rtldatafile/rtl.train_step.autotvin_WEIGHTS.dat"
`define AUTOTB_TVIN_img_pos_out_wrapc  "../tv/rtldatafile/rtl.train_step.autotvin_img_pos.dat"
`define AUTOTB_TVIN_img_neg_out_wrapc  "../tv/rtldatafile/rtl.train_step.autotvin_img_neg.dat"
`define AUTOTB_TVIN_W1_out_wrapc  "../tv/rtldatafile/rtl.train_step.autotvin_W1.dat"
`define AUTOTB_TVIN_W2_out_wrapc  "../tv/rtldatafile/rtl.train_step.autotvin_W2.dat"
`define AUTOTB_TVOUT_WEIGHTS  "../tv/cdatafile/c.train_step.autotvout_WEIGHTS.dat"
`define AUTOTB_TVOUT_WEIGHTS_out_wrapc  "../tv/rtldatafile/rtl.train_step.autotvout_WEIGHTS.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 50;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 8829;
parameter LENGTH_W1 = 1;
parameter LENGTH_W2 = 1;
parameter LENGTH_WEIGHTS = 2368;
parameter LENGTH_img_neg = 64;
parameter LENGTH_img_pos = 64;
parameter LENGTH_sample_idx = 1;

task read_token;
    input integer fp;
    output reg [199 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [4 : 0] CTRL_AWADDR;
wire  CTRL_AWVALID;
wire  CTRL_AWREADY;
wire  CTRL_WVALID;
wire  CTRL_WREADY;
wire [31 : 0] CTRL_WDATA;
wire [3 : 0] CTRL_WSTRB;
wire [4 : 0] CTRL_ARADDR;
wire  CTRL_ARVALID;
wire  CTRL_ARREADY;
wire  CTRL_RVALID;
wire  CTRL_RREADY;
wire [31 : 0] CTRL_RDATA;
wire [1 : 0] CTRL_RRESP;
wire  CTRL_BVALID;
wire  CTRL_BREADY;
wire [1 : 0] CTRL_BRESP;
wire  CTRL_INTERRUPT;
wire [5 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [5 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire  WEIGHTS_AWVALID;
wire  WEIGHTS_AWREADY;
wire [63 : 0] WEIGHTS_AWADDR;
wire [0 : 0] WEIGHTS_AWID;
wire [7 : 0] WEIGHTS_AWLEN;
wire [2 : 0] WEIGHTS_AWSIZE;
wire [1 : 0] WEIGHTS_AWBURST;
wire [1 : 0] WEIGHTS_AWLOCK;
wire [3 : 0] WEIGHTS_AWCACHE;
wire [2 : 0] WEIGHTS_AWPROT;
wire [3 : 0] WEIGHTS_AWQOS;
wire [3 : 0] WEIGHTS_AWREGION;
wire [0 : 0] WEIGHTS_AWUSER;
wire  WEIGHTS_WVALID;
wire  WEIGHTS_WREADY;
wire [31 : 0] WEIGHTS_WDATA;
wire [3 : 0] WEIGHTS_WSTRB;
wire  WEIGHTS_WLAST;
wire [0 : 0] WEIGHTS_WID;
wire [0 : 0] WEIGHTS_WUSER;
wire  WEIGHTS_ARVALID;
wire  WEIGHTS_ARREADY;
wire [63 : 0] WEIGHTS_ARADDR;
wire [0 : 0] WEIGHTS_ARID;
wire [7 : 0] WEIGHTS_ARLEN;
wire [2 : 0] WEIGHTS_ARSIZE;
wire [1 : 0] WEIGHTS_ARBURST;
wire [1 : 0] WEIGHTS_ARLOCK;
wire [3 : 0] WEIGHTS_ARCACHE;
wire [2 : 0] WEIGHTS_ARPROT;
wire [3 : 0] WEIGHTS_ARQOS;
wire [3 : 0] WEIGHTS_ARREGION;
wire [0 : 0] WEIGHTS_ARUSER;
wire  WEIGHTS_RVALID;
wire  WEIGHTS_RREADY;
wire [31 : 0] WEIGHTS_RDATA;
wire  WEIGHTS_RLAST;
wire [0 : 0] WEIGHTS_RID;
wire [0 : 0] WEIGHTS_RUSER;
wire [1 : 0] WEIGHTS_RRESP;
wire  WEIGHTS_BVALID;
wire  WEIGHTS_BREADY;
wire [1 : 0] WEIGHTS_BRESP;
wire [0 : 0] WEIGHTS_BID;
wire [0 : 0] WEIGHTS_BUSER;
wire [5 : 0] img_pos_address0;
wire  img_pos_ce0;
wire [7 : 0] img_pos_q0;
wire [5 : 0] img_neg_address0;
wire  img_neg_ce0;
wire [7 : 0] img_neg_q0;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire control_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_CTRL_AWADDR(CTRL_AWADDR),
    .s_axi_CTRL_AWVALID(CTRL_AWVALID),
    .s_axi_CTRL_AWREADY(CTRL_AWREADY),
    .s_axi_CTRL_WVALID(CTRL_WVALID),
    .s_axi_CTRL_WREADY(CTRL_WREADY),
    .s_axi_CTRL_WDATA(CTRL_WDATA),
    .s_axi_CTRL_WSTRB(CTRL_WSTRB),
    .s_axi_CTRL_ARADDR(CTRL_ARADDR),
    .s_axi_CTRL_ARVALID(CTRL_ARVALID),
    .s_axi_CTRL_ARREADY(CTRL_ARREADY),
    .s_axi_CTRL_RVALID(CTRL_RVALID),
    .s_axi_CTRL_RREADY(CTRL_RREADY),
    .s_axi_CTRL_RDATA(CTRL_RDATA),
    .s_axi_CTRL_RRESP(CTRL_RRESP),
    .s_axi_CTRL_BVALID(CTRL_BVALID),
    .s_axi_CTRL_BREADY(CTRL_BREADY),
    .s_axi_CTRL_BRESP(CTRL_BRESP),
    .interrupt(CTRL_INTERRUPT),
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_WEIGHTS_AWVALID(WEIGHTS_AWVALID),
    .m_axi_WEIGHTS_AWREADY(WEIGHTS_AWREADY),
    .m_axi_WEIGHTS_AWADDR(WEIGHTS_AWADDR),
    .m_axi_WEIGHTS_AWID(WEIGHTS_AWID),
    .m_axi_WEIGHTS_AWLEN(WEIGHTS_AWLEN),
    .m_axi_WEIGHTS_AWSIZE(WEIGHTS_AWSIZE),
    .m_axi_WEIGHTS_AWBURST(WEIGHTS_AWBURST),
    .m_axi_WEIGHTS_AWLOCK(WEIGHTS_AWLOCK),
    .m_axi_WEIGHTS_AWCACHE(WEIGHTS_AWCACHE),
    .m_axi_WEIGHTS_AWPROT(WEIGHTS_AWPROT),
    .m_axi_WEIGHTS_AWQOS(WEIGHTS_AWQOS),
    .m_axi_WEIGHTS_AWREGION(WEIGHTS_AWREGION),
    .m_axi_WEIGHTS_AWUSER(WEIGHTS_AWUSER),
    .m_axi_WEIGHTS_WVALID(WEIGHTS_WVALID),
    .m_axi_WEIGHTS_WREADY(WEIGHTS_WREADY),
    .m_axi_WEIGHTS_WDATA(WEIGHTS_WDATA),
    .m_axi_WEIGHTS_WSTRB(WEIGHTS_WSTRB),
    .m_axi_WEIGHTS_WLAST(WEIGHTS_WLAST),
    .m_axi_WEIGHTS_WID(WEIGHTS_WID),
    .m_axi_WEIGHTS_WUSER(WEIGHTS_WUSER),
    .m_axi_WEIGHTS_ARVALID(WEIGHTS_ARVALID),
    .m_axi_WEIGHTS_ARREADY(WEIGHTS_ARREADY),
    .m_axi_WEIGHTS_ARADDR(WEIGHTS_ARADDR),
    .m_axi_WEIGHTS_ARID(WEIGHTS_ARID),
    .m_axi_WEIGHTS_ARLEN(WEIGHTS_ARLEN),
    .m_axi_WEIGHTS_ARSIZE(WEIGHTS_ARSIZE),
    .m_axi_WEIGHTS_ARBURST(WEIGHTS_ARBURST),
    .m_axi_WEIGHTS_ARLOCK(WEIGHTS_ARLOCK),
    .m_axi_WEIGHTS_ARCACHE(WEIGHTS_ARCACHE),
    .m_axi_WEIGHTS_ARPROT(WEIGHTS_ARPROT),
    .m_axi_WEIGHTS_ARQOS(WEIGHTS_ARQOS),
    .m_axi_WEIGHTS_ARREGION(WEIGHTS_ARREGION),
    .m_axi_WEIGHTS_ARUSER(WEIGHTS_ARUSER),
    .m_axi_WEIGHTS_RVALID(WEIGHTS_RVALID),
    .m_axi_WEIGHTS_RREADY(WEIGHTS_RREADY),
    .m_axi_WEIGHTS_RDATA(WEIGHTS_RDATA),
    .m_axi_WEIGHTS_RLAST(WEIGHTS_RLAST),
    .m_axi_WEIGHTS_RID(WEIGHTS_RID),
    .m_axi_WEIGHTS_RUSER(WEIGHTS_RUSER),
    .m_axi_WEIGHTS_RRESP(WEIGHTS_RRESP),
    .m_axi_WEIGHTS_BVALID(WEIGHTS_BVALID),
    .m_axi_WEIGHTS_BREADY(WEIGHTS_BREADY),
    .m_axi_WEIGHTS_BRESP(WEIGHTS_BRESP),
    .m_axi_WEIGHTS_BID(WEIGHTS_BID),
    .m_axi_WEIGHTS_BUSER(WEIGHTS_BUSER),
    .img_pos_address0(img_pos_address0),
    .img_pos_ce0(img_pos_ce0),
    .img_pos_q0(img_pos_q0),
    .img_neg_address0(img_neg_address0),
    .img_neg_ce0(img_neg_ce0),
    .img_neg_q0(img_neg_q0));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & control_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end

//------------------------arrayimg_pos Instantiation--------------

// The input and output of arrayimg_pos
wire    arrayimg_pos_ce0, arrayimg_pos_ce1;
wire [1 - 1 : 0]    arrayimg_pos_we0, arrayimg_pos_we1;
wire    [5 : 0]    arrayimg_pos_address0, arrayimg_pos_address1;
wire    [7 : 0]    arrayimg_pos_din0, arrayimg_pos_din1;
wire    [7 : 0]    arrayimg_pos_dout0, arrayimg_pos_dout1;
wire    arrayimg_pos_ready;
wire    arrayimg_pos_done;

`AESL_MEM_img_pos `AESL_MEM_INST_img_pos(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimg_pos_ce0),
    .we0        (arrayimg_pos_we0),
    .address0   (arrayimg_pos_address0),
    .din0       (arrayimg_pos_din0),
    .dout0      (arrayimg_pos_dout0),
    .ce1        (arrayimg_pos_ce1),
    .we1        (arrayimg_pos_we1),
    .address1   (arrayimg_pos_address1),
    .din1       (arrayimg_pos_din1),
    .dout1      (arrayimg_pos_dout1),
    .ready      (arrayimg_pos_ready),
    .done    (arrayimg_pos_done)
);

// Assignment between dut and arrayimg_pos
assign arrayimg_pos_address0 = img_pos_address0;
assign arrayimg_pos_ce0 = img_pos_ce0;
assign img_pos_q0 = arrayimg_pos_dout0;
assign arrayimg_pos_we0 = 0;
assign arrayimg_pos_din0 = 0;
assign arrayimg_pos_we1 = 0;
assign arrayimg_pos_din1 = 0;
assign arrayimg_pos_ready=    ready;
assign arrayimg_pos_done = 0;


//------------------------arrayimg_neg Instantiation--------------

// The input and output of arrayimg_neg
wire    arrayimg_neg_ce0, arrayimg_neg_ce1;
wire [1 - 1 : 0]    arrayimg_neg_we0, arrayimg_neg_we1;
wire    [5 : 0]    arrayimg_neg_address0, arrayimg_neg_address1;
wire    [7 : 0]    arrayimg_neg_din0, arrayimg_neg_din1;
wire    [7 : 0]    arrayimg_neg_dout0, arrayimg_neg_dout1;
wire    arrayimg_neg_ready;
wire    arrayimg_neg_done;

`AESL_MEM_img_neg `AESL_MEM_INST_img_neg(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimg_neg_ce0),
    .we0        (arrayimg_neg_we0),
    .address0   (arrayimg_neg_address0),
    .din0       (arrayimg_neg_din0),
    .dout0      (arrayimg_neg_dout0),
    .ce1        (arrayimg_neg_ce1),
    .we1        (arrayimg_neg_we1),
    .address1   (arrayimg_neg_address1),
    .din1       (arrayimg_neg_din1),
    .dout1      (arrayimg_neg_dout1),
    .ready      (arrayimg_neg_ready),
    .done    (arrayimg_neg_done)
);

// Assignment between dut and arrayimg_neg
assign arrayimg_neg_address0 = img_neg_address0;
assign arrayimg_neg_ce0 = img_neg_ce0;
assign img_neg_q0 = arrayimg_neg_dout0;
assign arrayimg_neg_we0 = 0;
assign arrayimg_neg_din0 = 0;
assign arrayimg_neg_we1 = 0;
assign arrayimg_neg_din1 = 0;
assign arrayimg_neg_ready=    ready;
assign arrayimg_neg_done = 0;





wire    AESL_axi_master_WEIGHTS_ready;
wire    AESL_axi_master_WEIGHTS_done;
AESL_axi_master_WEIGHTS AESL_AXI_MASTER_WEIGHTS(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_WEIGHTS_AWVALID (WEIGHTS_AWVALID),
    .TRAN_WEIGHTS_AWREADY (WEIGHTS_AWREADY),
    .TRAN_WEIGHTS_AWADDR (WEIGHTS_AWADDR),
    .TRAN_WEIGHTS_AWID (WEIGHTS_AWID),
    .TRAN_WEIGHTS_AWLEN (WEIGHTS_AWLEN),
    .TRAN_WEIGHTS_AWSIZE (WEIGHTS_AWSIZE),
    .TRAN_WEIGHTS_AWBURST (WEIGHTS_AWBURST),
    .TRAN_WEIGHTS_AWLOCK (WEIGHTS_AWLOCK),
    .TRAN_WEIGHTS_AWCACHE (WEIGHTS_AWCACHE),
    .TRAN_WEIGHTS_AWPROT (WEIGHTS_AWPROT),
    .TRAN_WEIGHTS_AWQOS (WEIGHTS_AWQOS),
    .TRAN_WEIGHTS_AWREGION (WEIGHTS_AWREGION),
    .TRAN_WEIGHTS_AWUSER (WEIGHTS_AWUSER),
    .TRAN_WEIGHTS_WVALID (WEIGHTS_WVALID),
    .TRAN_WEIGHTS_WREADY (WEIGHTS_WREADY),
    .TRAN_WEIGHTS_WDATA (WEIGHTS_WDATA),
    .TRAN_WEIGHTS_WSTRB (WEIGHTS_WSTRB),
    .TRAN_WEIGHTS_WLAST (WEIGHTS_WLAST),
    .TRAN_WEIGHTS_WID (WEIGHTS_WID),
    .TRAN_WEIGHTS_WUSER (WEIGHTS_WUSER),
    .TRAN_WEIGHTS_ARVALID (WEIGHTS_ARVALID),
    .TRAN_WEIGHTS_ARREADY (WEIGHTS_ARREADY),
    .TRAN_WEIGHTS_ARADDR (WEIGHTS_ARADDR),
    .TRAN_WEIGHTS_ARID (WEIGHTS_ARID),
    .TRAN_WEIGHTS_ARLEN (WEIGHTS_ARLEN),
    .TRAN_WEIGHTS_ARSIZE (WEIGHTS_ARSIZE),
    .TRAN_WEIGHTS_ARBURST (WEIGHTS_ARBURST),
    .TRAN_WEIGHTS_ARLOCK (WEIGHTS_ARLOCK),
    .TRAN_WEIGHTS_ARCACHE (WEIGHTS_ARCACHE),
    .TRAN_WEIGHTS_ARPROT (WEIGHTS_ARPROT),
    .TRAN_WEIGHTS_ARQOS (WEIGHTS_ARQOS),
    .TRAN_WEIGHTS_ARREGION (WEIGHTS_ARREGION),
    .TRAN_WEIGHTS_ARUSER (WEIGHTS_ARUSER),
    .TRAN_WEIGHTS_RVALID (WEIGHTS_RVALID),
    .TRAN_WEIGHTS_RREADY (WEIGHTS_RREADY),
    .TRAN_WEIGHTS_RDATA (WEIGHTS_RDATA),
    .TRAN_WEIGHTS_RLAST (WEIGHTS_RLAST),
    .TRAN_WEIGHTS_RID (WEIGHTS_RID),
    .TRAN_WEIGHTS_RUSER (WEIGHTS_RUSER),
    .TRAN_WEIGHTS_RRESP (WEIGHTS_RRESP),
    .TRAN_WEIGHTS_BVALID (WEIGHTS_BVALID),
    .TRAN_WEIGHTS_BREADY (WEIGHTS_BREADY),
    .TRAN_WEIGHTS_BRESP (WEIGHTS_BRESP),
    .TRAN_WEIGHTS_BID (WEIGHTS_BID),
    .TRAN_WEIGHTS_BUSER (WEIGHTS_BUSER),
    .ready (AESL_axi_master_WEIGHTS_ready),
    .done  (AESL_axi_master_WEIGHTS_done)
);
assign    AESL_axi_master_WEIGHTS_ready    =   ready;
assign    AESL_axi_master_WEIGHTS_done    =   AESL_done_delay;

AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_write_data_finish(control_write_data_finish),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_in (AESL_slave_output_done),
    .TRAN_control_idle_in (AESL_idle),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);
AESL_axi_slave_CTRL AESL_AXI_SLAVE_CTRL(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_CTRL_AWADDR (CTRL_AWADDR),
    .TRAN_s_axi_CTRL_AWVALID (CTRL_AWVALID),
    .TRAN_s_axi_CTRL_AWREADY (CTRL_AWREADY),
    .TRAN_s_axi_CTRL_WVALID (CTRL_WVALID),
    .TRAN_s_axi_CTRL_WREADY (CTRL_WREADY),
    .TRAN_s_axi_CTRL_WDATA (CTRL_WDATA),
    .TRAN_s_axi_CTRL_WSTRB (CTRL_WSTRB),
    .TRAN_s_axi_CTRL_ARADDR (CTRL_ARADDR),
    .TRAN_s_axi_CTRL_ARVALID (CTRL_ARVALID),
    .TRAN_s_axi_CTRL_ARREADY (CTRL_ARREADY),
    .TRAN_s_axi_CTRL_RVALID (CTRL_RVALID),
    .TRAN_s_axi_CTRL_RREADY (CTRL_RREADY),
    .TRAN_s_axi_CTRL_RDATA (CTRL_RDATA),
    .TRAN_s_axi_CTRL_RRESP (CTRL_RRESP),
    .TRAN_s_axi_CTRL_BVALID (CTRL_BVALID),
    .TRAN_s_axi_CTRL_BREADY (CTRL_BREADY),
    .TRAN_s_axi_CTRL_BRESP (CTRL_BRESP),
    .TRAN_CTRL_interrupt (CTRL_INTERRUPT),
    .TRAN_CTRL_ready_out (AESL_ready),
    .TRAN_CTRL_ready_in (AESL_slave_ready),
    .TRAN_CTRL_done_out (AESL_slave_output_done),
    .TRAN_CTRL_idle_out (AESL_idle),
    .TRAN_CTRL_write_start_in     (AESL_slave_write_start_in),
    .TRAN_CTRL_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_CTRL_transaction_done_in (AESL_done_delay),
    .TRAN_CTRL_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_WEIGHTS;
reg [31:0] size_WEIGHTS;
reg [31:0] size_WEIGHTS_backup;
reg end_img_pos;
reg [31:0] size_img_pos;
reg [31:0] size_img_pos_backup;
reg end_img_neg;
reg [31:0] size_img_neg;
reg [31:0] size_img_neg_backup;
reg end_W1;
reg [31:0] size_W1;
reg [31:0] size_W1_backup;
reg end_W2;
reg [31:0] size_W2;
reg [31:0] size_W2_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    # 0.1;
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    # 0.1;
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
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

reg dump_tvout_finish_WEIGHTS;

initial begin : dump_tvout_runtime_sign_WEIGHTS
    integer fp;
    dump_tvout_finish_WEIGHTS = 0;
    fp = $fopen(`AUTOTB_TVOUT_WEIGHTS_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_WEIGHTS_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_WEIGHTS_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_WEIGHTS_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_WEIGHTS = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
