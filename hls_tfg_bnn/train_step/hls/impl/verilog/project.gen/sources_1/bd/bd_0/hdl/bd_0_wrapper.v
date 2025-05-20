//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Wed May 14 09:54:19 2025
//Host        : Yehoh running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (W1_out_address0,
    W1_out_address1,
    W1_out_ce0,
    W1_out_ce1,
    W1_out_d0,
    W1_out_d1,
    W1_out_we0,
    W1_out_we1,
    W2_out_address0,
    W2_out_ce0,
    W2_out_d0,
    W2_out_we0,
    ap_clk,
    ap_rst_n,
    interrupt,
    leds_port,
    leds_port_ap_vld,
    s_axi_CTRL_araddr,
    s_axi_CTRL_arready,
    s_axi_CTRL_arvalid,
    s_axi_CTRL_awaddr,
    s_axi_CTRL_awready,
    s_axi_CTRL_awvalid,
    s_axi_CTRL_bready,
    s_axi_CTRL_bresp,
    s_axi_CTRL_bvalid,
    s_axi_CTRL_rdata,
    s_axi_CTRL_rready,
    s_axi_CTRL_rresp,
    s_axi_CTRL_rvalid,
    s_axi_CTRL_wdata,
    s_axi_CTRL_wready,
    s_axi_CTRL_wstrb,
    s_axi_CTRL_wvalid);
  output [4:0]W1_out_address0;
  output [4:0]W1_out_address1;
  output W1_out_ce0;
  output W1_out_ce1;
  output [7:0]W1_out_d0;
  output [7:0]W1_out_d1;
  output W1_out_we0;
  output W1_out_we1;
  output [1:0]W2_out_address0;
  output W2_out_ce0;
  output [7:0]W2_out_d0;
  output W2_out_we0;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [3:0]leds_port;
  output leds_port_ap_vld;
  input [7:0]s_axi_CTRL_araddr;
  output s_axi_CTRL_arready;
  input s_axi_CTRL_arvalid;
  input [7:0]s_axi_CTRL_awaddr;
  output s_axi_CTRL_awready;
  input s_axi_CTRL_awvalid;
  input s_axi_CTRL_bready;
  output [1:0]s_axi_CTRL_bresp;
  output s_axi_CTRL_bvalid;
  output [31:0]s_axi_CTRL_rdata;
  input s_axi_CTRL_rready;
  output [1:0]s_axi_CTRL_rresp;
  output s_axi_CTRL_rvalid;
  input [31:0]s_axi_CTRL_wdata;
  output s_axi_CTRL_wready;
  input [3:0]s_axi_CTRL_wstrb;
  input s_axi_CTRL_wvalid;

  wire [4:0]W1_out_address0;
  wire [4:0]W1_out_address1;
  wire W1_out_ce0;
  wire W1_out_ce1;
  wire [7:0]W1_out_d0;
  wire [7:0]W1_out_d1;
  wire W1_out_we0;
  wire W1_out_we1;
  wire [1:0]W2_out_address0;
  wire W2_out_ce0;
  wire [7:0]W2_out_d0;
  wire W2_out_we0;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [3:0]leds_port;
  wire leds_port_ap_vld;
  wire [7:0]s_axi_CTRL_araddr;
  wire s_axi_CTRL_arready;
  wire s_axi_CTRL_arvalid;
  wire [7:0]s_axi_CTRL_awaddr;
  wire s_axi_CTRL_awready;
  wire s_axi_CTRL_awvalid;
  wire s_axi_CTRL_bready;
  wire [1:0]s_axi_CTRL_bresp;
  wire s_axi_CTRL_bvalid;
  wire [31:0]s_axi_CTRL_rdata;
  wire s_axi_CTRL_rready;
  wire [1:0]s_axi_CTRL_rresp;
  wire s_axi_CTRL_rvalid;
  wire [31:0]s_axi_CTRL_wdata;
  wire s_axi_CTRL_wready;
  wire [3:0]s_axi_CTRL_wstrb;
  wire s_axi_CTRL_wvalid;

  bd_0 bd_0_i
       (.W1_out_address0(W1_out_address0),
        .W1_out_address1(W1_out_address1),
        .W1_out_ce0(W1_out_ce0),
        .W1_out_ce1(W1_out_ce1),
        .W1_out_d0(W1_out_d0),
        .W1_out_d1(W1_out_d1),
        .W1_out_we0(W1_out_we0),
        .W1_out_we1(W1_out_we1),
        .W2_out_address0(W2_out_address0),
        .W2_out_ce0(W2_out_ce0),
        .W2_out_d0(W2_out_d0),
        .W2_out_we0(W2_out_we0),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .leds_port(leds_port),
        .leds_port_ap_vld(leds_port_ap_vld),
        .s_axi_CTRL_araddr(s_axi_CTRL_araddr),
        .s_axi_CTRL_arready(s_axi_CTRL_arready),
        .s_axi_CTRL_arvalid(s_axi_CTRL_arvalid),
        .s_axi_CTRL_awaddr(s_axi_CTRL_awaddr),
        .s_axi_CTRL_awready(s_axi_CTRL_awready),
        .s_axi_CTRL_awvalid(s_axi_CTRL_awvalid),
        .s_axi_CTRL_bready(s_axi_CTRL_bready),
        .s_axi_CTRL_bresp(s_axi_CTRL_bresp),
        .s_axi_CTRL_bvalid(s_axi_CTRL_bvalid),
        .s_axi_CTRL_rdata(s_axi_CTRL_rdata),
        .s_axi_CTRL_rready(s_axi_CTRL_rready),
        .s_axi_CTRL_rresp(s_axi_CTRL_rresp),
        .s_axi_CTRL_rvalid(s_axi_CTRL_rvalid),
        .s_axi_CTRL_wdata(s_axi_CTRL_wdata),
        .s_axi_CTRL_wready(s_axi_CTRL_wready),
        .s_axi_CTRL_wstrb(s_axi_CTRL_wstrb),
        .s_axi_CTRL_wvalid(s_axi_CTRL_wvalid));
endmodule
