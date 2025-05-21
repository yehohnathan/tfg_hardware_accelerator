//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue May 20 21:05:42 2025
//Host        : Yehoh running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_rst_n,
    img_neg_address0,
    img_neg_ce0,
    img_neg_q0,
    img_pos_address0,
    img_pos_ce0,
    img_pos_q0,
    interrupt,
    m_axi_WEIGHTS_araddr,
    m_axi_WEIGHTS_arburst,
    m_axi_WEIGHTS_arcache,
    m_axi_WEIGHTS_arid,
    m_axi_WEIGHTS_arlen,
    m_axi_WEIGHTS_arlock,
    m_axi_WEIGHTS_arprot,
    m_axi_WEIGHTS_arqos,
    m_axi_WEIGHTS_arready,
    m_axi_WEIGHTS_arregion,
    m_axi_WEIGHTS_arsize,
    m_axi_WEIGHTS_arvalid,
    m_axi_WEIGHTS_awaddr,
    m_axi_WEIGHTS_awburst,
    m_axi_WEIGHTS_awcache,
    m_axi_WEIGHTS_awid,
    m_axi_WEIGHTS_awlen,
    m_axi_WEIGHTS_awlock,
    m_axi_WEIGHTS_awprot,
    m_axi_WEIGHTS_awqos,
    m_axi_WEIGHTS_awready,
    m_axi_WEIGHTS_awregion,
    m_axi_WEIGHTS_awsize,
    m_axi_WEIGHTS_awvalid,
    m_axi_WEIGHTS_bid,
    m_axi_WEIGHTS_bready,
    m_axi_WEIGHTS_bresp,
    m_axi_WEIGHTS_bvalid,
    m_axi_WEIGHTS_rdata,
    m_axi_WEIGHTS_rid,
    m_axi_WEIGHTS_rlast,
    m_axi_WEIGHTS_rready,
    m_axi_WEIGHTS_rresp,
    m_axi_WEIGHTS_rvalid,
    m_axi_WEIGHTS_wdata,
    m_axi_WEIGHTS_wid,
    m_axi_WEIGHTS_wlast,
    m_axi_WEIGHTS_wready,
    m_axi_WEIGHTS_wstrb,
    m_axi_WEIGHTS_wvalid,
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
    s_axi_CTRL_wvalid,
    s_axi_control_araddr,
    s_axi_control_arready,
    s_axi_control_arvalid,
    s_axi_control_awaddr,
    s_axi_control_awready,
    s_axi_control_awvalid,
    s_axi_control_bready,
    s_axi_control_bresp,
    s_axi_control_bvalid,
    s_axi_control_rdata,
    s_axi_control_rready,
    s_axi_control_rresp,
    s_axi_control_rvalid,
    s_axi_control_wdata,
    s_axi_control_wready,
    s_axi_control_wstrb,
    s_axi_control_wvalid);
  input ap_clk;
  input ap_rst_n;
  output [5:0]img_neg_address0;
  output img_neg_ce0;
  input [7:0]img_neg_q0;
  output [5:0]img_pos_address0;
  output img_pos_ce0;
  input [7:0]img_pos_q0;
  output interrupt;
  output [63:0]m_axi_WEIGHTS_araddr;
  output [1:0]m_axi_WEIGHTS_arburst;
  output [3:0]m_axi_WEIGHTS_arcache;
  output [0:0]m_axi_WEIGHTS_arid;
  output [7:0]m_axi_WEIGHTS_arlen;
  output [1:0]m_axi_WEIGHTS_arlock;
  output [2:0]m_axi_WEIGHTS_arprot;
  output [3:0]m_axi_WEIGHTS_arqos;
  input m_axi_WEIGHTS_arready;
  output [3:0]m_axi_WEIGHTS_arregion;
  output [2:0]m_axi_WEIGHTS_arsize;
  output m_axi_WEIGHTS_arvalid;
  output [63:0]m_axi_WEIGHTS_awaddr;
  output [1:0]m_axi_WEIGHTS_awburst;
  output [3:0]m_axi_WEIGHTS_awcache;
  output [0:0]m_axi_WEIGHTS_awid;
  output [7:0]m_axi_WEIGHTS_awlen;
  output [1:0]m_axi_WEIGHTS_awlock;
  output [2:0]m_axi_WEIGHTS_awprot;
  output [3:0]m_axi_WEIGHTS_awqos;
  input m_axi_WEIGHTS_awready;
  output [3:0]m_axi_WEIGHTS_awregion;
  output [2:0]m_axi_WEIGHTS_awsize;
  output m_axi_WEIGHTS_awvalid;
  input [0:0]m_axi_WEIGHTS_bid;
  output m_axi_WEIGHTS_bready;
  input [1:0]m_axi_WEIGHTS_bresp;
  input m_axi_WEIGHTS_bvalid;
  input [31:0]m_axi_WEIGHTS_rdata;
  input [0:0]m_axi_WEIGHTS_rid;
  input m_axi_WEIGHTS_rlast;
  output m_axi_WEIGHTS_rready;
  input [1:0]m_axi_WEIGHTS_rresp;
  input m_axi_WEIGHTS_rvalid;
  output [31:0]m_axi_WEIGHTS_wdata;
  output [0:0]m_axi_WEIGHTS_wid;
  output m_axi_WEIGHTS_wlast;
  input m_axi_WEIGHTS_wready;
  output [3:0]m_axi_WEIGHTS_wstrb;
  output m_axi_WEIGHTS_wvalid;
  input [4:0]s_axi_CTRL_araddr;
  output s_axi_CTRL_arready;
  input s_axi_CTRL_arvalid;
  input [4:0]s_axi_CTRL_awaddr;
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
  input [5:0]s_axi_control_araddr;
  output s_axi_control_arready;
  input s_axi_control_arvalid;
  input [5:0]s_axi_control_awaddr;
  output s_axi_control_awready;
  input s_axi_control_awvalid;
  input s_axi_control_bready;
  output [1:0]s_axi_control_bresp;
  output s_axi_control_bvalid;
  output [31:0]s_axi_control_rdata;
  input s_axi_control_rready;
  output [1:0]s_axi_control_rresp;
  output s_axi_control_rvalid;
  input [31:0]s_axi_control_wdata;
  output s_axi_control_wready;
  input [3:0]s_axi_control_wstrb;
  input s_axi_control_wvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [5:0]img_neg_address0;
  wire img_neg_ce0;
  wire [7:0]img_neg_q0;
  wire [5:0]img_pos_address0;
  wire img_pos_ce0;
  wire [7:0]img_pos_q0;
  wire interrupt;
  wire [63:0]m_axi_WEIGHTS_araddr;
  wire [1:0]m_axi_WEIGHTS_arburst;
  wire [3:0]m_axi_WEIGHTS_arcache;
  wire [0:0]m_axi_WEIGHTS_arid;
  wire [7:0]m_axi_WEIGHTS_arlen;
  wire [1:0]m_axi_WEIGHTS_arlock;
  wire [2:0]m_axi_WEIGHTS_arprot;
  wire [3:0]m_axi_WEIGHTS_arqos;
  wire m_axi_WEIGHTS_arready;
  wire [3:0]m_axi_WEIGHTS_arregion;
  wire [2:0]m_axi_WEIGHTS_arsize;
  wire m_axi_WEIGHTS_arvalid;
  wire [63:0]m_axi_WEIGHTS_awaddr;
  wire [1:0]m_axi_WEIGHTS_awburst;
  wire [3:0]m_axi_WEIGHTS_awcache;
  wire [0:0]m_axi_WEIGHTS_awid;
  wire [7:0]m_axi_WEIGHTS_awlen;
  wire [1:0]m_axi_WEIGHTS_awlock;
  wire [2:0]m_axi_WEIGHTS_awprot;
  wire [3:0]m_axi_WEIGHTS_awqos;
  wire m_axi_WEIGHTS_awready;
  wire [3:0]m_axi_WEIGHTS_awregion;
  wire [2:0]m_axi_WEIGHTS_awsize;
  wire m_axi_WEIGHTS_awvalid;
  wire [0:0]m_axi_WEIGHTS_bid;
  wire m_axi_WEIGHTS_bready;
  wire [1:0]m_axi_WEIGHTS_bresp;
  wire m_axi_WEIGHTS_bvalid;
  wire [31:0]m_axi_WEIGHTS_rdata;
  wire [0:0]m_axi_WEIGHTS_rid;
  wire m_axi_WEIGHTS_rlast;
  wire m_axi_WEIGHTS_rready;
  wire [1:0]m_axi_WEIGHTS_rresp;
  wire m_axi_WEIGHTS_rvalid;
  wire [31:0]m_axi_WEIGHTS_wdata;
  wire [0:0]m_axi_WEIGHTS_wid;
  wire m_axi_WEIGHTS_wlast;
  wire m_axi_WEIGHTS_wready;
  wire [3:0]m_axi_WEIGHTS_wstrb;
  wire m_axi_WEIGHTS_wvalid;
  wire [4:0]s_axi_CTRL_araddr;
  wire s_axi_CTRL_arready;
  wire s_axi_CTRL_arvalid;
  wire [4:0]s_axi_CTRL_awaddr;
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
  wire [5:0]s_axi_control_araddr;
  wire s_axi_control_arready;
  wire s_axi_control_arvalid;
  wire [5:0]s_axi_control_awaddr;
  wire s_axi_control_awready;
  wire s_axi_control_awvalid;
  wire s_axi_control_bready;
  wire [1:0]s_axi_control_bresp;
  wire s_axi_control_bvalid;
  wire [31:0]s_axi_control_rdata;
  wire s_axi_control_rready;
  wire [1:0]s_axi_control_rresp;
  wire s_axi_control_rvalid;
  wire [31:0]s_axi_control_wdata;
  wire s_axi_control_wready;
  wire [3:0]s_axi_control_wstrb;
  wire s_axi_control_wvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .img_neg_address0(img_neg_address0),
        .img_neg_ce0(img_neg_ce0),
        .img_neg_q0(img_neg_q0),
        .img_pos_address0(img_pos_address0),
        .img_pos_ce0(img_pos_ce0),
        .img_pos_q0(img_pos_q0),
        .interrupt(interrupt),
        .m_axi_WEIGHTS_araddr(m_axi_WEIGHTS_araddr),
        .m_axi_WEIGHTS_arburst(m_axi_WEIGHTS_arburst),
        .m_axi_WEIGHTS_arcache(m_axi_WEIGHTS_arcache),
        .m_axi_WEIGHTS_arid(m_axi_WEIGHTS_arid),
        .m_axi_WEIGHTS_arlen(m_axi_WEIGHTS_arlen),
        .m_axi_WEIGHTS_arlock(m_axi_WEIGHTS_arlock),
        .m_axi_WEIGHTS_arprot(m_axi_WEIGHTS_arprot),
        .m_axi_WEIGHTS_arqos(m_axi_WEIGHTS_arqos),
        .m_axi_WEIGHTS_arready(m_axi_WEIGHTS_arready),
        .m_axi_WEIGHTS_arregion(m_axi_WEIGHTS_arregion),
        .m_axi_WEIGHTS_arsize(m_axi_WEIGHTS_arsize),
        .m_axi_WEIGHTS_arvalid(m_axi_WEIGHTS_arvalid),
        .m_axi_WEIGHTS_awaddr(m_axi_WEIGHTS_awaddr),
        .m_axi_WEIGHTS_awburst(m_axi_WEIGHTS_awburst),
        .m_axi_WEIGHTS_awcache(m_axi_WEIGHTS_awcache),
        .m_axi_WEIGHTS_awid(m_axi_WEIGHTS_awid),
        .m_axi_WEIGHTS_awlen(m_axi_WEIGHTS_awlen),
        .m_axi_WEIGHTS_awlock(m_axi_WEIGHTS_awlock),
        .m_axi_WEIGHTS_awprot(m_axi_WEIGHTS_awprot),
        .m_axi_WEIGHTS_awqos(m_axi_WEIGHTS_awqos),
        .m_axi_WEIGHTS_awready(m_axi_WEIGHTS_awready),
        .m_axi_WEIGHTS_awregion(m_axi_WEIGHTS_awregion),
        .m_axi_WEIGHTS_awsize(m_axi_WEIGHTS_awsize),
        .m_axi_WEIGHTS_awvalid(m_axi_WEIGHTS_awvalid),
        .m_axi_WEIGHTS_bid(m_axi_WEIGHTS_bid),
        .m_axi_WEIGHTS_bready(m_axi_WEIGHTS_bready),
        .m_axi_WEIGHTS_bresp(m_axi_WEIGHTS_bresp),
        .m_axi_WEIGHTS_bvalid(m_axi_WEIGHTS_bvalid),
        .m_axi_WEIGHTS_rdata(m_axi_WEIGHTS_rdata),
        .m_axi_WEIGHTS_rid(m_axi_WEIGHTS_rid),
        .m_axi_WEIGHTS_rlast(m_axi_WEIGHTS_rlast),
        .m_axi_WEIGHTS_rready(m_axi_WEIGHTS_rready),
        .m_axi_WEIGHTS_rresp(m_axi_WEIGHTS_rresp),
        .m_axi_WEIGHTS_rvalid(m_axi_WEIGHTS_rvalid),
        .m_axi_WEIGHTS_wdata(m_axi_WEIGHTS_wdata),
        .m_axi_WEIGHTS_wid(m_axi_WEIGHTS_wid),
        .m_axi_WEIGHTS_wlast(m_axi_WEIGHTS_wlast),
        .m_axi_WEIGHTS_wready(m_axi_WEIGHTS_wready),
        .m_axi_WEIGHTS_wstrb(m_axi_WEIGHTS_wstrb),
        .m_axi_WEIGHTS_wvalid(m_axi_WEIGHTS_wvalid),
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
        .s_axi_CTRL_wvalid(s_axi_CTRL_wvalid),
        .s_axi_control_araddr(s_axi_control_araddr),
        .s_axi_control_arready(s_axi_control_arready),
        .s_axi_control_arvalid(s_axi_control_arvalid),
        .s_axi_control_awaddr(s_axi_control_awaddr),
        .s_axi_control_awready(s_axi_control_awready),
        .s_axi_control_awvalid(s_axi_control_awvalid),
        .s_axi_control_bready(s_axi_control_bready),
        .s_axi_control_bresp(s_axi_control_bresp),
        .s_axi_control_bvalid(s_axi_control_bvalid),
        .s_axi_control_rdata(s_axi_control_rdata),
        .s_axi_control_rready(s_axi_control_rready),
        .s_axi_control_rresp(s_axi_control_rresp),
        .s_axi_control_rvalid(s_axi_control_rvalid),
        .s_axi_control_wdata(s_axi_control_wdata),
        .s_axi_control_wready(s_axi_control_wready),
        .s_axi_control_wstrb(s_axi_control_wstrb),
        .s_axi_control_wvalid(s_axi_control_wvalid));
endmodule
