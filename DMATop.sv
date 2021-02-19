module AXI4LiteCSR( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [31:0] io_ctl_aw_awaddr, // @[:@6.4]
  input         io_ctl_aw_awvalid, // @[:@6.4]
  output        io_ctl_aw_awready, // @[:@6.4]
  input  [31:0] io_ctl_w_wdata, // @[:@6.4]
  input         io_ctl_w_wvalid, // @[:@6.4]
  output        io_ctl_w_wready, // @[:@6.4]
  output        io_ctl_b_bvalid, // @[:@6.4]
  input         io_ctl_b_bready, // @[:@6.4]
  input  [31:0] io_ctl_ar_araddr, // @[:@6.4]
  input         io_ctl_ar_arvalid, // @[:@6.4]
  output        io_ctl_ar_arready, // @[:@6.4]
  output [31:0] io_ctl_r_rdata, // @[:@6.4]
  output        io_ctl_r_rvalid, // @[:@6.4]
  input         io_ctl_r_rready, // @[:@6.4]
  output [3:0]  io_bus_addr, // @[:@6.4]
  output [31:0] io_bus_dataOut, // @[:@6.4]
  input  [31:0] io_bus_dataIn, // @[:@6.4]
  output        io_bus_write, // @[:@6.4]
  output        io_bus_read // @[:@6.4]
);
  reg [2:0] state; // @[AXI4LiteCSR.scala 39:22:@8.4]
  reg [31:0] _RAND_0;
  reg  awready; // @[AXI4LiteCSR.scala 41:24:@9.4]
  reg [31:0] _RAND_1;
  reg  wready; // @[AXI4LiteCSR.scala 42:23:@10.4]
  reg [31:0] _RAND_2;
  reg  bvalid; // @[AXI4LiteCSR.scala 43:23:@11.4]
  reg [31:0] _RAND_3;
  reg  arready; // @[AXI4LiteCSR.scala 46:24:@14.4]
  reg [31:0] _RAND_4;
  reg  rvalid; // @[AXI4LiteCSR.scala 47:23:@15.4]
  reg [31:0] _RAND_5;
  reg [31:0] addr; // @[AXI4LiteCSR.scala 50:21:@18.4]
  reg [31:0] _RAND_6;
  wire  _T_110; // @[AXI4LiteCSR.scala 64:34:@28.4]
  wire  _T_111; // @[AXI4LiteCSR.scala 65:35:@30.4]
  wire  _T_112; // @[Conditional.scala 37:30:@33.4]
  wire [3:0] _T_113; // @[AXI4LiteCSR.scala 72:33:@37.8]
  wire [3:0] _T_115; // @[AXI4LiteCSR.scala 77:33:@44.10]
  wire [2:0] _GEN_0; // @[AXI4LiteCSR.scala 75:36:@42.8]
  wire [31:0] _GEN_1; // @[AXI4LiteCSR.scala 75:36:@42.8]
  wire  _GEN_2; // @[AXI4LiteCSR.scala 75:36:@42.8]
  wire [2:0] _GEN_3; // @[AXI4LiteCSR.scala 70:30:@35.6]
  wire [31:0] _GEN_4; // @[AXI4LiteCSR.scala 70:30:@35.6]
  wire  _GEN_5; // @[AXI4LiteCSR.scala 70:30:@35.6]
  wire  _GEN_6; // @[AXI4LiteCSR.scala 70:30:@35.6]
  wire  _T_117; // @[Conditional.scala 37:30:@50.6]
  wire  _T_118; // @[AXI4LiteCSR.scala 82:30:@52.8]
  wire [2:0] _GEN_7; // @[AXI4LiteCSR.scala 82:41:@53.8]
  wire  _GEN_8; // @[AXI4LiteCSR.scala 82:41:@53.8]
  wire  _GEN_9; // @[AXI4LiteCSR.scala 82:41:@53.8]
  wire  _T_121; // @[Conditional.scala 37:30:@60.8]
  wire [2:0] _GEN_10; // @[AXI4LiteCSR.scala 89:38:@63.10]
  wire  _GEN_11; // @[AXI4LiteCSR.scala 89:38:@63.10]
  wire  _T_124; // @[Conditional.scala 37:30:@69.10]
  wire  _T_125; // @[AXI4LiteCSR.scala 95:30:@71.12]
  wire [2:0] _GEN_12; // @[AXI4LiteCSR.scala 95:41:@72.12]
  wire  _GEN_13; // @[AXI4LiteCSR.scala 95:41:@72.12]
  wire  _GEN_14; // @[AXI4LiteCSR.scala 95:41:@72.12]
  wire  _T_128; // @[Conditional.scala 37:30:@79.12]
  wire [2:0] _GEN_15; // @[AXI4LiteCSR.scala 102:38:@82.14]
  wire  _GEN_16; // @[AXI4LiteCSR.scala 102:38:@82.14]
  wire  _GEN_17; // @[AXI4LiteCSR.scala 102:38:@82.14]
  wire  _T_132; // @[Conditional.scala 37:30:@89.14]
  wire  _T_133; // @[AXI4LiteCSR.scala 109:28:@91.16]
  wire [2:0] _GEN_18; // @[AXI4LiteCSR.scala 109:38:@92.16]
  wire  _GEN_19; // @[AXI4LiteCSR.scala 109:38:@92.16]
  wire [2:0] _GEN_20; // @[Conditional.scala 39:67:@90.14]
  wire  _GEN_21; // @[Conditional.scala 39:67:@90.14]
  wire [2:0] _GEN_22; // @[Conditional.scala 39:67:@80.12]
  wire  _GEN_23; // @[Conditional.scala 39:67:@80.12]
  wire  _GEN_24; // @[Conditional.scala 39:67:@80.12]
  wire [2:0] _GEN_25; // @[Conditional.scala 39:67:@70.10]
  wire  _GEN_26; // @[Conditional.scala 39:67:@70.10]
  wire  _GEN_27; // @[Conditional.scala 39:67:@70.10]
  wire  _GEN_28; // @[Conditional.scala 39:67:@70.10]
  wire [2:0] _GEN_29; // @[Conditional.scala 39:67:@61.8]
  wire  _GEN_30; // @[Conditional.scala 39:67:@61.8]
  wire  _GEN_31; // @[Conditional.scala 39:67:@61.8]
  wire  _GEN_32; // @[Conditional.scala 39:67:@61.8]
  wire  _GEN_33; // @[Conditional.scala 39:67:@61.8]
  wire [2:0] _GEN_34; // @[Conditional.scala 39:67:@51.6]
  wire  _GEN_35; // @[Conditional.scala 39:67:@51.6]
  wire  _GEN_36; // @[Conditional.scala 39:67:@51.6]
  wire  _GEN_37; // @[Conditional.scala 39:67:@51.6]
  wire  _GEN_38; // @[Conditional.scala 39:67:@51.6]
  wire  _GEN_39; // @[Conditional.scala 39:67:@51.6]
  wire [2:0] _GEN_40; // @[Conditional.scala 40:58:@34.4]
  wire [31:0] _GEN_41; // @[Conditional.scala 40:58:@34.4]
  wire  _GEN_42; // @[Conditional.scala 40:58:@34.4]
  wire  _GEN_43; // @[Conditional.scala 40:58:@34.4]
  wire  _GEN_44; // @[Conditional.scala 40:58:@34.4]
  wire  _GEN_45; // @[Conditional.scala 40:58:@34.4]
  wire  _GEN_46; // @[Conditional.scala 40:58:@34.4]
  assign _T_110 = io_ctl_r_rready & rvalid; // @[AXI4LiteCSR.scala 64:34:@28.4]
  assign _T_111 = io_ctl_w_wvalid & wready; // @[AXI4LiteCSR.scala 65:35:@30.4]
  assign _T_112 = 3'h0 == state; // @[Conditional.scala 37:30:@33.4]
  assign _T_113 = io_ctl_aw_awaddr[5:2]; // @[AXI4LiteCSR.scala 72:33:@37.8]
  assign _T_115 = io_ctl_ar_araddr[5:2]; // @[AXI4LiteCSR.scala 77:33:@44.10]
  assign _GEN_0 = io_ctl_ar_arvalid ? 3'h1 : state; // @[AXI4LiteCSR.scala 75:36:@42.8]
  assign _GEN_1 = io_ctl_ar_arvalid ? {{28'd0}, _T_115} : addr; // @[AXI4LiteCSR.scala 75:36:@42.8]
  assign _GEN_2 = io_ctl_ar_arvalid ? 1'h1 : arready; // @[AXI4LiteCSR.scala 75:36:@42.8]
  assign _GEN_3 = io_ctl_aw_awvalid ? 3'h3 : _GEN_0; // @[AXI4LiteCSR.scala 70:30:@35.6]
  assign _GEN_4 = io_ctl_aw_awvalid ? {{28'd0}, _T_113} : _GEN_1; // @[AXI4LiteCSR.scala 70:30:@35.6]
  assign _GEN_5 = io_ctl_aw_awvalid ? 1'h1 : awready; // @[AXI4LiteCSR.scala 70:30:@35.6]
  assign _GEN_6 = io_ctl_aw_awvalid ? arready : _GEN_2; // @[AXI4LiteCSR.scala 70:30:@35.6]
  assign _T_117 = 3'h1 == state; // @[Conditional.scala 37:30:@50.6]
  assign _T_118 = io_ctl_ar_arvalid & arready; // @[AXI4LiteCSR.scala 82:30:@52.8]
  assign _GEN_7 = _T_118 ? 3'h2 : state; // @[AXI4LiteCSR.scala 82:41:@53.8]
  assign _GEN_8 = _T_118 ? 1'h0 : arready; // @[AXI4LiteCSR.scala 82:41:@53.8]
  assign _GEN_9 = _T_118 ? 1'h1 : rvalid; // @[AXI4LiteCSR.scala 82:41:@53.8]
  assign _T_121 = 3'h2 == state; // @[Conditional.scala 37:30:@60.8]
  assign _GEN_10 = _T_110 ? 3'h0 : state; // @[AXI4LiteCSR.scala 89:38:@63.10]
  assign _GEN_11 = _T_110 ? 1'h0 : rvalid; // @[AXI4LiteCSR.scala 89:38:@63.10]
  assign _T_124 = 3'h3 == state; // @[Conditional.scala 37:30:@69.10]
  assign _T_125 = io_ctl_aw_awvalid & awready; // @[AXI4LiteCSR.scala 95:30:@71.12]
  assign _GEN_12 = _T_125 ? 3'h4 : state; // @[AXI4LiteCSR.scala 95:41:@72.12]
  assign _GEN_13 = _T_125 ? 1'h0 : awready; // @[AXI4LiteCSR.scala 95:41:@72.12]
  assign _GEN_14 = _T_125 ? 1'h1 : wready; // @[AXI4LiteCSR.scala 95:41:@72.12]
  assign _T_128 = 3'h4 == state; // @[Conditional.scala 37:30:@79.12]
  assign _GEN_15 = _T_111 ? 3'h5 : state; // @[AXI4LiteCSR.scala 102:38:@82.14]
  assign _GEN_16 = _T_111 ? 1'h0 : wready; // @[AXI4LiteCSR.scala 102:38:@82.14]
  assign _GEN_17 = _T_111 ? 1'h1 : bvalid; // @[AXI4LiteCSR.scala 102:38:@82.14]
  assign _T_132 = 3'h5 == state; // @[Conditional.scala 37:30:@89.14]
  assign _T_133 = io_ctl_b_bready & bvalid; // @[AXI4LiteCSR.scala 109:28:@91.16]
  assign _GEN_18 = _T_133 ? 3'h0 : state; // @[AXI4LiteCSR.scala 109:38:@92.16]
  assign _GEN_19 = _T_133 ? 1'h0 : bvalid; // @[AXI4LiteCSR.scala 109:38:@92.16]
  assign _GEN_20 = _T_132 ? _GEN_18 : state; // @[Conditional.scala 39:67:@90.14]
  assign _GEN_21 = _T_132 ? _GEN_19 : bvalid; // @[Conditional.scala 39:67:@90.14]
  assign _GEN_22 = _T_128 ? _GEN_15 : _GEN_20; // @[Conditional.scala 39:67:@80.12]
  assign _GEN_23 = _T_128 ? _GEN_16 : wready; // @[Conditional.scala 39:67:@80.12]
  assign _GEN_24 = _T_128 ? _GEN_17 : _GEN_21; // @[Conditional.scala 39:67:@80.12]
  assign _GEN_25 = _T_124 ? _GEN_12 : _GEN_22; // @[Conditional.scala 39:67:@70.10]
  assign _GEN_26 = _T_124 ? _GEN_13 : awready; // @[Conditional.scala 39:67:@70.10]
  assign _GEN_27 = _T_124 ? _GEN_14 : _GEN_23; // @[Conditional.scala 39:67:@70.10]
  assign _GEN_28 = _T_124 ? bvalid : _GEN_24; // @[Conditional.scala 39:67:@70.10]
  assign _GEN_29 = _T_121 ? _GEN_10 : _GEN_25; // @[Conditional.scala 39:67:@61.8]
  assign _GEN_30 = _T_121 ? _GEN_11 : rvalid; // @[Conditional.scala 39:67:@61.8]
  assign _GEN_31 = _T_121 ? awready : _GEN_26; // @[Conditional.scala 39:67:@61.8]
  assign _GEN_32 = _T_121 ? wready : _GEN_27; // @[Conditional.scala 39:67:@61.8]
  assign _GEN_33 = _T_121 ? bvalid : _GEN_28; // @[Conditional.scala 39:67:@61.8]
  assign _GEN_34 = _T_117 ? _GEN_7 : _GEN_29; // @[Conditional.scala 39:67:@51.6]
  assign _GEN_35 = _T_117 ? _GEN_8 : arready; // @[Conditional.scala 39:67:@51.6]
  assign _GEN_36 = _T_117 ? _GEN_9 : _GEN_30; // @[Conditional.scala 39:67:@51.6]
  assign _GEN_37 = _T_117 ? awready : _GEN_31; // @[Conditional.scala 39:67:@51.6]
  assign _GEN_38 = _T_117 ? wready : _GEN_32; // @[Conditional.scala 39:67:@51.6]
  assign _GEN_39 = _T_117 ? bvalid : _GEN_33; // @[Conditional.scala 39:67:@51.6]
  assign _GEN_40 = _T_112 ? _GEN_3 : _GEN_34; // @[Conditional.scala 40:58:@34.4]
  assign _GEN_41 = _T_112 ? _GEN_4 : addr; // @[Conditional.scala 40:58:@34.4]
  assign _GEN_42 = _T_112 ? _GEN_5 : _GEN_37; // @[Conditional.scala 40:58:@34.4]
  assign _GEN_43 = _T_112 ? _GEN_6 : _GEN_35; // @[Conditional.scala 40:58:@34.4]
  assign _GEN_44 = _T_112 ? rvalid : _GEN_36; // @[Conditional.scala 40:58:@34.4]
  assign _GEN_45 = _T_112 ? wready : _GEN_38; // @[Conditional.scala 40:58:@34.4]
  assign _GEN_46 = _T_112 ? bvalid : _GEN_39; // @[Conditional.scala 40:58:@34.4]
  assign io_ctl_aw_awready = awready; // @[AXI4LiteCSR.scala 55:21:@21.4]
  assign io_ctl_w_wready = wready; // @[AXI4LiteCSR.scala 56:19:@22.4]
  assign io_ctl_b_bvalid = bvalid; // @[AXI4LiteCSR.scala 57:19:@23.4]
  assign io_ctl_ar_arready = arready; // @[AXI4LiteCSR.scala 60:21:@25.4]
  assign io_ctl_r_rdata = io_bus_dataIn; // @[AXI4LiteCSR.scala 52:18:@19.4]
  assign io_ctl_r_rvalid = rvalid; // @[AXI4LiteCSR.scala 61:19:@26.4]
  assign io_bus_addr = addr[3:0]; // @[AXI4LiteCSR.scala 66:15:@32.4]
  assign io_bus_dataOut = io_ctl_w_wdata; // @[AXI4LiteCSR.scala 53:18:@20.4]
  assign io_bus_write = io_ctl_w_wvalid & wready; // @[AXI4LiteCSR.scala 65:16:@31.4]
  assign io_bus_read = io_ctl_r_rready & rvalid; // @[AXI4LiteCSR.scala 64:15:@29.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  awready = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  wready = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  bvalid = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  arready = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  rvalid = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  addr = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_112) begin
        if (io_ctl_aw_awvalid) begin
          state <= 3'h3;
        end else begin
          if (io_ctl_ar_arvalid) begin
            state <= 3'h1;
          end
        end
      end else begin
        if (_T_117) begin
          if (_T_118) begin
            state <= 3'h2;
          end
        end else begin
          if (_T_121) begin
            if (_T_110) begin
              state <= 3'h0;
            end
          end else begin
            if (_T_124) begin
              if (_T_125) begin
                state <= 3'h4;
              end
            end else begin
              if (_T_128) begin
                if (_T_111) begin
                  state <= 3'h5;
                end
              end else begin
                if (_T_132) begin
                  if (_T_133) begin
                    state <= 3'h0;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      awready <= 1'h0;
    end else begin
      if (_T_112) begin
        if (io_ctl_aw_awvalid) begin
          awready <= 1'h1;
        end
      end else begin
        if (!(_T_117)) begin
          if (!(_T_121)) begin
            if (_T_124) begin
              if (_T_125) begin
                awready <= 1'h0;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      wready <= 1'h0;
    end else begin
      if (!(_T_112)) begin
        if (!(_T_117)) begin
          if (!(_T_121)) begin
            if (_T_124) begin
              if (_T_125) begin
                wready <= 1'h1;
              end
            end else begin
              if (_T_128) begin
                if (_T_111) begin
                  wready <= 1'h0;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      bvalid <= 1'h0;
    end else begin
      if (!(_T_112)) begin
        if (!(_T_117)) begin
          if (!(_T_121)) begin
            if (!(_T_124)) begin
              if (_T_128) begin
                if (_T_111) begin
                  bvalid <= 1'h1;
                end
              end else begin
                if (_T_132) begin
                  if (_T_133) begin
                    bvalid <= 1'h0;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      arready <= 1'h0;
    end else begin
      if (_T_112) begin
        if (!(io_ctl_aw_awvalid)) begin
          if (io_ctl_ar_arvalid) begin
            arready <= 1'h1;
          end
        end
      end else begin
        if (_T_117) begin
          if (_T_118) begin
            arready <= 1'h0;
          end
        end
      end
    end
    if (reset) begin
      rvalid <= 1'h0;
    end else begin
      if (!(_T_112)) begin
        if (_T_117) begin
          if (_T_118) begin
            rvalid <= 1'h1;
          end
        end else begin
          if (_T_121) begin
            if (_T_110) begin
              rvalid <= 1'h0;
            end
          end
        end
      end
    end
    if (reset) begin
      addr <= 32'h0;
    end else begin
      if (_T_112) begin
        if (io_ctl_aw_awvalid) begin
          addr <= {{28'd0}, _T_113};
        end else begin
          if (io_ctl_ar_arvalid) begin
            addr <= {{28'd0}, _T_115};
          end
        end
      end
    end
  end
endmodule
module AXI4Reader( // @[:@98.2]
  input         clock, // @[:@99.4]
  input         reset, // @[:@100.4]
  output [31:0] io_bus_ar_araddr, // @[:@101.4]
  output [7:0]  io_bus_ar_arlen, // @[:@101.4]
  output        io_bus_ar_arvalid, // @[:@101.4]
  input         io_bus_ar_arready, // @[:@101.4]
  input  [31:0] io_bus_r_rdata, // @[:@101.4]
  input         io_bus_r_rlast, // @[:@101.4]
  input         io_bus_r_rvalid, // @[:@101.4]
  output        io_bus_r_rready, // @[:@101.4]
  input         io_dataOut_ready, // @[:@101.4]
  output        io_dataOut_valid, // @[:@101.4]
  output [31:0] io_dataOut_bits, // @[:@101.4]
  output        io_xfer_done, // @[:@101.4]
  input  [31:0] io_xfer_address, // @[:@101.4]
  input  [31:0] io_xfer_length, // @[:@101.4]
  input         io_xfer_valid // @[:@101.4]
);
  reg [1:0] state; // @[AXI4Reader.scala 42:22:@103.4]
  reg [31:0] _RAND_0;
  reg  done; // @[AXI4Reader.scala 44:21:@104.4]
  reg [31:0] _RAND_1;
  reg  enable; // @[AXI4Reader.scala 45:23:@105.4]
  reg [31:0] _RAND_2;
  reg [31:0] araddr; // @[AXI4Reader.scala 47:23:@107.4]
  reg [31:0] _RAND_3;
  reg [7:0] arlen; // @[AXI4Reader.scala 48:22:@108.4]
  reg [31:0] _RAND_4;
  reg  arvalid; // @[AXI4Reader.scala 49:24:@109.4]
  reg [31:0] _RAND_5;
  wire  ready; // @[AXI4Reader.scala 52:41:@112.4]
  wire  valid; // @[AXI4Reader.scala 53:40:@115.4]
  wire  _T_231; // @[Conditional.scala 37:30:@189.4]
  wire [32:0] _T_235; // @[AXI4Reader.scala 72:33:@196.8]
  wire [32:0] _T_236; // @[AXI4Reader.scala 72:33:@197.8]
  wire [31:0] _T_237; // @[AXI4Reader.scala 72:33:@198.8]
  wire [1:0] _GEN_0; // @[AXI4Reader.scala 68:26:@192.6]
  wire  _GEN_1; // @[AXI4Reader.scala 68:26:@192.6]
  wire [31:0] _GEN_2; // @[AXI4Reader.scala 68:26:@192.6]
  wire [31:0] _GEN_3; // @[AXI4Reader.scala 68:26:@192.6]
  wire  _T_238; // @[Conditional.scala 37:30:@203.6]
  wire  _T_239; // @[AXI4Reader.scala 76:20:@205.8]
  wire [1:0] _GEN_4; // @[AXI4Reader.scala 76:41:@206.8]
  wire  _GEN_5; // @[AXI4Reader.scala 76:41:@206.8]
  wire  _GEN_6; // @[AXI4Reader.scala 76:41:@206.8]
  wire  _T_242; // @[Conditional.scala 37:30:@213.8]
  wire  _T_243; // @[AXI4Reader.scala 83:18:@215.10]
  wire [1:0] _GEN_7; // @[AXI4Reader.scala 84:29:@217.12]
  wire  _GEN_8; // @[AXI4Reader.scala 84:29:@217.12]
  wire [1:0] _GEN_9; // @[AXI4Reader.scala 83:27:@216.10]
  wire  _GEN_10; // @[AXI4Reader.scala 83:27:@216.10]
  wire  _T_245; // @[Conditional.scala 37:30:@224.10]
  wire  _GEN_11; // @[Conditional.scala 39:67:@225.10]
  wire [1:0] _GEN_12; // @[Conditional.scala 39:67:@225.10]
  wire [1:0] _GEN_13; // @[Conditional.scala 39:67:@214.8]
  wire  _GEN_14; // @[Conditional.scala 39:67:@214.8]
  wire  _GEN_15; // @[Conditional.scala 39:67:@214.8]
  wire [1:0] _GEN_16; // @[Conditional.scala 39:67:@204.6]
  wire  _GEN_17; // @[Conditional.scala 39:67:@204.6]
  wire  _GEN_18; // @[Conditional.scala 39:67:@204.6]
  wire  _GEN_19; // @[Conditional.scala 39:67:@204.6]
  wire  _GEN_20; // @[Conditional.scala 40:58:@190.4]
  wire [1:0] _GEN_21; // @[Conditional.scala 40:58:@190.4]
  wire  _GEN_22; // @[Conditional.scala 40:58:@190.4]
  wire [31:0] _GEN_23; // @[Conditional.scala 40:58:@190.4]
  wire [31:0] _GEN_24; // @[Conditional.scala 40:58:@190.4]
  wire  _GEN_25; // @[Conditional.scala 40:58:@190.4]
  assign ready = io_dataOut_ready & enable; // @[AXI4Reader.scala 52:41:@112.4]
  assign valid = io_bus_r_rvalid & enable; // @[AXI4Reader.scala 53:40:@115.4]
  assign _T_231 = 2'h0 == state; // @[Conditional.scala 37:30:@189.4]
  assign _T_235 = io_xfer_length - 32'h1; // @[AXI4Reader.scala 72:33:@196.8]
  assign _T_236 = $unsigned(_T_235); // @[AXI4Reader.scala 72:33:@197.8]
  assign _T_237 = _T_236[31:0]; // @[AXI4Reader.scala 72:33:@198.8]
  assign _GEN_0 = io_xfer_valid ? 2'h1 : state; // @[AXI4Reader.scala 68:26:@192.6]
  assign _GEN_1 = io_xfer_valid ? 1'h1 : arvalid; // @[AXI4Reader.scala 68:26:@192.6]
  assign _GEN_2 = io_xfer_valid ? io_xfer_address : araddr; // @[AXI4Reader.scala 68:26:@192.6]
  assign _GEN_3 = io_xfer_valid ? _T_237 : {{24'd0}, arlen}; // @[AXI4Reader.scala 68:26:@192.6]
  assign _T_238 = 2'h1 == state; // @[Conditional.scala 37:30:@203.6]
  assign _T_239 = arvalid & io_bus_ar_arready; // @[AXI4Reader.scala 76:20:@205.8]
  assign _GEN_4 = _T_239 ? 2'h2 : state; // @[AXI4Reader.scala 76:41:@206.8]
  assign _GEN_5 = _T_239 ? 1'h0 : arvalid; // @[AXI4Reader.scala 76:41:@206.8]
  assign _GEN_6 = _T_239 ? 1'h1 : enable; // @[AXI4Reader.scala 76:41:@206.8]
  assign _T_242 = 2'h2 == state; // @[Conditional.scala 37:30:@213.8]
  assign _T_243 = ready & valid; // @[AXI4Reader.scala 83:18:@215.10]
  assign _GEN_7 = io_bus_r_rlast ? 2'h3 : state; // @[AXI4Reader.scala 84:29:@217.12]
  assign _GEN_8 = io_bus_r_rlast ? 1'h0 : enable; // @[AXI4Reader.scala 84:29:@217.12]
  assign _GEN_9 = _T_243 ? _GEN_7 : state; // @[AXI4Reader.scala 83:27:@216.10]
  assign _GEN_10 = _T_243 ? _GEN_8 : enable; // @[AXI4Reader.scala 83:27:@216.10]
  assign _T_245 = 2'h3 == state; // @[Conditional.scala 37:30:@224.10]
  assign _GEN_11 = _T_245 ? 1'h1 : done; // @[Conditional.scala 39:67:@225.10]
  assign _GEN_12 = _T_245 ? 2'h0 : state; // @[Conditional.scala 39:67:@225.10]
  assign _GEN_13 = _T_242 ? _GEN_9 : _GEN_12; // @[Conditional.scala 39:67:@214.8]
  assign _GEN_14 = _T_242 ? _GEN_10 : enable; // @[Conditional.scala 39:67:@214.8]
  assign _GEN_15 = _T_242 ? done : _GEN_11; // @[Conditional.scala 39:67:@214.8]
  assign _GEN_16 = _T_238 ? _GEN_4 : _GEN_13; // @[Conditional.scala 39:67:@204.6]
  assign _GEN_17 = _T_238 ? _GEN_5 : arvalid; // @[Conditional.scala 39:67:@204.6]
  assign _GEN_18 = _T_238 ? _GEN_6 : _GEN_14; // @[Conditional.scala 39:67:@204.6]
  assign _GEN_19 = _T_238 ? done : _GEN_15; // @[Conditional.scala 39:67:@204.6]
  assign _GEN_20 = _T_231 ? 1'h0 : _GEN_19; // @[Conditional.scala 40:58:@190.4]
  assign _GEN_21 = _T_231 ? _GEN_0 : _GEN_16; // @[Conditional.scala 40:58:@190.4]
  assign _GEN_22 = _T_231 ? _GEN_1 : _GEN_17; // @[Conditional.scala 40:58:@190.4]
  assign _GEN_23 = _T_231 ? _GEN_2 : araddr; // @[Conditional.scala 40:58:@190.4]
  assign _GEN_24 = _T_231 ? _GEN_3 : {{24'd0}, arlen}; // @[Conditional.scala 40:58:@190.4]
  assign _GEN_25 = _T_231 ? enable : _GEN_18; // @[Conditional.scala 40:58:@190.4]
  assign io_bus_ar_araddr = araddr; // @[AXI4Reader.scala 58:13:@176.4]
  assign io_bus_ar_arlen = arlen; // @[AXI4Reader.scala 58:13:@175.4]
  assign io_bus_ar_arvalid = arvalid; // @[AXI4Reader.scala 58:13:@168.4]
  assign io_bus_r_rready = io_dataOut_ready & enable; // @[AXI4Reader.scala 59:12:@180.4]
  assign io_dataOut_valid = io_bus_r_rvalid & enable; // @[AXI4Reader.scala 61:20:@186.4]
  assign io_dataOut_bits = io_bus_r_rdata; // @[AXI4Reader.scala 62:19:@187.4]
  assign io_xfer_done = done; // @[AXI4Reader.scala 63:16:@188.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  done = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  enable = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  araddr = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  arlen = _RAND_4[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  arvalid = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 2'h0;
    end else begin
      if (_T_231) begin
        if (io_xfer_valid) begin
          state <= 2'h1;
        end
      end else begin
        if (_T_238) begin
          if (_T_239) begin
            state <= 2'h2;
          end
        end else begin
          if (_T_242) begin
            if (_T_243) begin
              if (io_bus_r_rlast) begin
                state <= 2'h3;
              end
            end
          end else begin
            if (_T_245) begin
              state <= 2'h0;
            end
          end
        end
      end
    end
    if (reset) begin
      done <= 1'h0;
    end else begin
      if (_T_231) begin
        done <= 1'h0;
      end else begin
        if (!(_T_238)) begin
          if (!(_T_242)) begin
            if (_T_245) begin
              done <= 1'h1;
            end
          end
        end
      end
    end
    if (reset) begin
      enable <= 1'h0;
    end else begin
      if (!(_T_231)) begin
        if (_T_238) begin
          if (_T_239) begin
            enable <= 1'h1;
          end
        end else begin
          if (_T_242) begin
            if (_T_243) begin
              if (io_bus_r_rlast) begin
                enable <= 1'h0;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      araddr <= 32'h0;
    end else begin
      if (_T_231) begin
        if (io_xfer_valid) begin
          araddr <= io_xfer_address;
        end
      end
    end
    if (reset) begin
      arlen <= 8'h0;
    end else begin
      arlen <= _GEN_24[7:0];
    end
    if (reset) begin
      arvalid <= 1'h0;
    end else begin
      if (_T_231) begin
        if (io_xfer_valid) begin
          arvalid <= 1'h1;
        end
      end else begin
        if (_T_238) begin
          if (_T_239) begin
            arvalid <= 1'h0;
          end
        end
      end
    end
  end
endmodule
module AXIStreamMaster( // @[:@230.2]
  input         clock, // @[:@231.4]
  input         reset, // @[:@232.4]
  output [31:0] io_bus_tdata, // @[:@233.4]
  output        io_bus_tvalid, // @[:@233.4]
  input         io_bus_tready, // @[:@233.4]
  output        io_bus_tuser, // @[:@233.4]
  output        io_bus_tlast, // @[:@233.4]
  output        io_dataIn_ready, // @[:@233.4]
  input         io_dataIn_valid, // @[:@233.4]
  input  [31:0] io_dataIn_bits, // @[:@233.4]
  output        io_xfer_done, // @[:@233.4]
  input  [31:0] io_xfer_length, // @[:@233.4]
  input         io_xfer_valid, // @[:@233.4]
  input         io_xfer_first // @[:@233.4]
);
  reg [1:0] state; // @[AXIStreamMaster.scala 42:22:@235.4]
  reg [31:0] _RAND_0;
  reg  done; // @[AXIStreamMaster.scala 44:21:@236.4]
  reg [31:0] _RAND_1;
  reg  enable; // @[AXIStreamMaster.scala 46:23:@237.4]
  reg [31:0] _RAND_2;
  reg  user; // @[AXIStreamMaster.scala 48:21:@240.4]
  reg [31:0] _RAND_3;
  reg [31:0] length; // @[AXIStreamMaster.scala 50:23:@241.4]
  reg [31:0] _RAND_4;
  wire  ready; // @[AXIStreamMaster.scala 52:38:@242.4]
  wire  valid; // @[AXIStreamMaster.scala 53:40:@245.4]
  wire  last; // @[AXIStreamMaster.scala 64:18:@254.4]
  wire  _T_66; // @[Conditional.scala 37:30:@256.4]
  wire  _GEN_0; // @[AXIStreamMaster.scala 71:26:@260.6]
  wire [1:0] _GEN_1; // @[AXIStreamMaster.scala 71:26:@260.6]
  wire [31:0] _GEN_2; // @[AXIStreamMaster.scala 71:26:@260.6]
  wire  _T_70; // @[Conditional.scala 37:30:@268.6]
  wire  _T_71; // @[AXIStreamMaster.scala 79:18:@270.8]
  wire [32:0] _T_74; // @[AXIStreamMaster.scala 81:26:@273.10]
  wire [32:0] _T_75; // @[AXIStreamMaster.scala 81:26:@274.10]
  wire [31:0] _T_76; // @[AXIStreamMaster.scala 81:26:@275.10]
  wire [1:0] _GEN_4; // @[AXIStreamMaster.scala 82:29:@278.10]
  wire  _GEN_5; // @[AXIStreamMaster.scala 82:29:@278.10]
  wire  _GEN_6; // @[AXIStreamMaster.scala 79:27:@271.8]
  wire [31:0] _GEN_7; // @[AXIStreamMaster.scala 79:27:@271.8]
  wire [1:0] _GEN_8; // @[AXIStreamMaster.scala 79:27:@271.8]
  wire  _GEN_9; // @[AXIStreamMaster.scala 79:27:@271.8]
  wire  _T_80; // @[Conditional.scala 37:30:@285.8]
  wire [1:0] _GEN_10; // @[Conditional.scala 39:67:@286.8]
  wire  _GEN_11; // @[Conditional.scala 39:67:@286.8]
  wire  _GEN_12; // @[Conditional.scala 39:67:@269.6]
  wire [31:0] _GEN_13; // @[Conditional.scala 39:67:@269.6]
  wire [1:0] _GEN_14; // @[Conditional.scala 39:67:@269.6]
  wire  _GEN_15; // @[Conditional.scala 39:67:@269.6]
  wire  _GEN_16; // @[Conditional.scala 39:67:@269.6]
  wire  _GEN_17; // @[Conditional.scala 40:58:@257.4]
  wire  _GEN_18; // @[Conditional.scala 40:58:@257.4]
  wire  _GEN_19; // @[Conditional.scala 40:58:@257.4]
  wire [1:0] _GEN_20; // @[Conditional.scala 40:58:@257.4]
  wire [31:0] _GEN_21; // @[Conditional.scala 40:58:@257.4]
  assign ready = io_bus_tready & enable; // @[AXIStreamMaster.scala 52:38:@242.4]
  assign valid = io_dataIn_valid & enable; // @[AXIStreamMaster.scala 53:40:@245.4]
  assign last = length == 32'h1; // @[AXIStreamMaster.scala 64:18:@254.4]
  assign _T_66 = 2'h0 == state; // @[Conditional.scala 37:30:@256.4]
  assign _GEN_0 = io_xfer_valid ? io_xfer_first : user; // @[AXIStreamMaster.scala 71:26:@260.6]
  assign _GEN_1 = io_xfer_valid ? 2'h1 : state; // @[AXIStreamMaster.scala 71:26:@260.6]
  assign _GEN_2 = io_xfer_valid ? io_xfer_length : length; // @[AXIStreamMaster.scala 71:26:@260.6]
  assign _T_70 = 2'h1 == state; // @[Conditional.scala 37:30:@268.6]
  assign _T_71 = ready & valid; // @[AXIStreamMaster.scala 79:18:@270.8]
  assign _T_74 = length - 32'h1; // @[AXIStreamMaster.scala 81:26:@273.10]
  assign _T_75 = $unsigned(_T_74); // @[AXIStreamMaster.scala 81:26:@274.10]
  assign _T_76 = _T_75[31:0]; // @[AXIStreamMaster.scala 81:26:@275.10]
  assign _GEN_4 = last ? 2'h2 : state; // @[AXIStreamMaster.scala 82:29:@278.10]
  assign _GEN_5 = last ? 1'h0 : enable; // @[AXIStreamMaster.scala 82:29:@278.10]
  assign _GEN_6 = _T_71 ? 1'h0 : user; // @[AXIStreamMaster.scala 79:27:@271.8]
  assign _GEN_7 = _T_71 ? _T_76 : length; // @[AXIStreamMaster.scala 79:27:@271.8]
  assign _GEN_8 = _T_71 ? _GEN_4 : state; // @[AXIStreamMaster.scala 79:27:@271.8]
  assign _GEN_9 = _T_71 ? _GEN_5 : enable; // @[AXIStreamMaster.scala 79:27:@271.8]
  assign _T_80 = 2'h2 == state; // @[Conditional.scala 37:30:@285.8]
  assign _GEN_10 = _T_80 ? 2'h0 : state; // @[Conditional.scala 39:67:@286.8]
  assign _GEN_11 = _T_80 ? 1'h1 : done; // @[Conditional.scala 39:67:@286.8]
  assign _GEN_12 = _T_70 ? _GEN_6 : user; // @[Conditional.scala 39:67:@269.6]
  assign _GEN_13 = _T_70 ? _GEN_7 : length; // @[Conditional.scala 39:67:@269.6]
  assign _GEN_14 = _T_70 ? _GEN_8 : _GEN_10; // @[Conditional.scala 39:67:@269.6]
  assign _GEN_15 = _T_70 ? _GEN_9 : enable; // @[Conditional.scala 39:67:@269.6]
  assign _GEN_16 = _T_70 ? done : _GEN_11; // @[Conditional.scala 39:67:@269.6]
  assign _GEN_17 = _T_66 ? 1'h0 : _GEN_16; // @[Conditional.scala 40:58:@257.4]
  assign _GEN_18 = _T_66 ? io_xfer_valid : _GEN_15; // @[Conditional.scala 40:58:@257.4]
  assign _GEN_19 = _T_66 ? _GEN_0 : _GEN_12; // @[Conditional.scala 40:58:@257.4]
  assign _GEN_20 = _T_66 ? _GEN_1 : _GEN_14; // @[Conditional.scala 40:58:@257.4]
  assign _GEN_21 = _T_66 ? _GEN_2 : _GEN_13; // @[Conditional.scala 40:58:@257.4]
  assign io_bus_tdata = io_dataIn_bits; // @[AXIStreamMaster.scala 58:16:@250.4]
  assign io_bus_tvalid = io_dataIn_valid & enable; // @[AXIStreamMaster.scala 55:17:@248.4]
  assign io_bus_tuser = user; // @[AXIStreamMaster.scala 60:16:@252.4]
  assign io_bus_tlast = length == 32'h1; // @[AXIStreamMaster.scala 59:16:@251.4]
  assign io_dataIn_ready = io_bus_tready & enable; // @[AXIStreamMaster.scala 56:19:@249.4]
  assign io_xfer_done = done; // @[AXIStreamMaster.scala 62:16:@253.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  done = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  enable = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  user = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  length = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 2'h0;
    end else begin
      if (_T_66) begin
        if (io_xfer_valid) begin
          state <= 2'h1;
        end
      end else begin
        if (_T_70) begin
          if (_T_71) begin
            if (last) begin
              state <= 2'h2;
            end
          end
        end else begin
          if (_T_80) begin
            state <= 2'h0;
          end
        end
      end
    end
    if (reset) begin
      done <= 1'h0;
    end else begin
      if (_T_66) begin
        done <= 1'h0;
      end else begin
        if (!(_T_70)) begin
          if (_T_80) begin
            done <= 1'h1;
          end
        end
      end
    end
    if (reset) begin
      enable <= 1'h0;
    end else begin
      if (_T_66) begin
        enable <= io_xfer_valid;
      end else begin
        if (_T_70) begin
          if (_T_71) begin
            if (last) begin
              enable <= 1'h0;
            end
          end
        end
      end
    end
    if (reset) begin
      user <= 1'h0;
    end else begin
      if (_T_66) begin
        if (io_xfer_valid) begin
          user <= io_xfer_first;
        end
      end else begin
        if (_T_70) begin
          if (_T_71) begin
            user <= 1'h0;
          end
        end
      end
    end
    if (reset) begin
      length <= 32'h0;
    end else begin
      if (_T_66) begin
        if (io_xfer_valid) begin
          length <= io_xfer_length;
        end
      end else begin
        if (_T_70) begin
          if (_T_71) begin
            length <= _T_76;
          end
        end
      end
    end
  end
endmodule
module CSR( // @[:@291.2]
  output [31:0] io_csr_0_dataOut, // @[:@294.4]
  output        io_csr_0_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_0_dataIn, // @[:@294.4]
  input  [31:0] io_csr_1_dataIn, // @[:@294.4]
  output [31:0] io_csr_2_dataOut, // @[:@294.4]
  output        io_csr_2_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_2_dataIn, // @[:@294.4]
  output [31:0] io_csr_3_dataOut, // @[:@294.4]
  output        io_csr_3_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_3_dataIn, // @[:@294.4]
  output [31:0] io_csr_4_dataOut, // @[:@294.4]
  output        io_csr_4_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_4_dataIn, // @[:@294.4]
  output [31:0] io_csr_5_dataOut, // @[:@294.4]
  output        io_csr_5_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_5_dataIn, // @[:@294.4]
  output [31:0] io_csr_6_dataOut, // @[:@294.4]
  output        io_csr_6_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_6_dataIn, // @[:@294.4]
  output [31:0] io_csr_7_dataOut, // @[:@294.4]
  output        io_csr_7_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_7_dataIn, // @[:@294.4]
  output [31:0] io_csr_8_dataOut, // @[:@294.4]
  output        io_csr_8_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_8_dataIn, // @[:@294.4]
  output [31:0] io_csr_9_dataOut, // @[:@294.4]
  output        io_csr_9_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_9_dataIn, // @[:@294.4]
  output [31:0] io_csr_10_dataOut, // @[:@294.4]
  output        io_csr_10_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_10_dataIn, // @[:@294.4]
  output [31:0] io_csr_11_dataOut, // @[:@294.4]
  output        io_csr_11_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_11_dataIn, // @[:@294.4]
  output [31:0] io_csr_12_dataOut, // @[:@294.4]
  output        io_csr_12_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_12_dataIn, // @[:@294.4]
  output [31:0] io_csr_13_dataOut, // @[:@294.4]
  output        io_csr_13_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_13_dataIn, // @[:@294.4]
  output [31:0] io_csr_14_dataOut, // @[:@294.4]
  output        io_csr_14_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_14_dataIn, // @[:@294.4]
  output [31:0] io_csr_15_dataOut, // @[:@294.4]
  output        io_csr_15_dataWrite, // @[:@294.4]
  input  [31:0] io_csr_15_dataIn, // @[:@294.4]
  input  [3:0]  io_bus_addr, // @[:@294.4]
  input  [31:0] io_bus_dataOut, // @[:@294.4]
  output [31:0] io_bus_dataIn, // @[:@294.4]
  input         io_bus_write, // @[:@294.4]
  input         io_bus_read // @[:@294.4]
);
  wire  _T_178; // @[CSR.scala 40:22:@299.4]
  wire  _T_179; // @[CSR.scala 40:30:@300.4]
  wire [31:0] _GEN_0; // @[CSR.scala 40:45:@301.4]
  wire  _T_184; // @[CSR.scala 47:30:@309.4]
  wire  _T_189; // @[CSR.scala 40:22:@318.4]
  wire  _T_190; // @[CSR.scala 40:30:@319.4]
  wire [31:0] _GEN_4; // @[CSR.scala 40:45:@320.4]
  wire  _T_200; // @[CSR.scala 40:22:@337.4]
  wire  _T_201; // @[CSR.scala 40:30:@338.4]
  wire [31:0] _GEN_8; // @[CSR.scala 40:45:@339.4]
  wire  _T_206; // @[CSR.scala 47:30:@347.4]
  wire  _T_211; // @[CSR.scala 40:22:@356.4]
  wire  _T_212; // @[CSR.scala 40:30:@357.4]
  wire [31:0] _GEN_12; // @[CSR.scala 40:45:@358.4]
  wire  _T_217; // @[CSR.scala 47:30:@366.4]
  wire  _T_222; // @[CSR.scala 40:22:@375.4]
  wire  _T_223; // @[CSR.scala 40:30:@376.4]
  wire [31:0] _GEN_16; // @[CSR.scala 40:45:@377.4]
  wire  _T_228; // @[CSR.scala 47:30:@385.4]
  wire  _T_233; // @[CSR.scala 40:22:@394.4]
  wire  _T_234; // @[CSR.scala 40:30:@395.4]
  wire [31:0] _GEN_20; // @[CSR.scala 40:45:@396.4]
  wire  _T_239; // @[CSR.scala 47:30:@404.4]
  wire  _T_244; // @[CSR.scala 40:22:@413.4]
  wire  _T_245; // @[CSR.scala 40:30:@414.4]
  wire [31:0] _GEN_24; // @[CSR.scala 40:45:@415.4]
  wire  _T_250; // @[CSR.scala 47:30:@423.4]
  wire  _T_255; // @[CSR.scala 40:22:@432.4]
  wire  _T_256; // @[CSR.scala 40:30:@433.4]
  wire [31:0] _GEN_28; // @[CSR.scala 40:45:@434.4]
  wire  _T_261; // @[CSR.scala 47:30:@442.4]
  wire  _T_266; // @[CSR.scala 40:22:@451.4]
  wire  _T_267; // @[CSR.scala 40:30:@452.4]
  wire [31:0] _GEN_32; // @[CSR.scala 40:45:@453.4]
  wire  _T_272; // @[CSR.scala 47:30:@461.4]
  wire  _T_277; // @[CSR.scala 40:22:@470.4]
  wire  _T_278; // @[CSR.scala 40:30:@471.4]
  wire [31:0] _GEN_36; // @[CSR.scala 40:45:@472.4]
  wire  _T_283; // @[CSR.scala 47:30:@480.4]
  wire  _T_288; // @[CSR.scala 40:22:@489.4]
  wire  _T_289; // @[CSR.scala 40:30:@490.4]
  wire [31:0] _GEN_40; // @[CSR.scala 40:45:@491.4]
  wire  _T_294; // @[CSR.scala 47:30:@499.4]
  wire  _T_299; // @[CSR.scala 40:22:@508.4]
  wire  _T_300; // @[CSR.scala 40:30:@509.4]
  wire [31:0] _GEN_44; // @[CSR.scala 40:45:@510.4]
  wire  _T_305; // @[CSR.scala 47:30:@518.4]
  wire  _T_310; // @[CSR.scala 40:22:@527.4]
  wire  _T_311; // @[CSR.scala 40:30:@528.4]
  wire [31:0] _GEN_48; // @[CSR.scala 40:45:@529.4]
  wire  _T_316; // @[CSR.scala 47:30:@537.4]
  wire  _T_321; // @[CSR.scala 40:22:@546.4]
  wire  _T_322; // @[CSR.scala 40:30:@547.4]
  wire [31:0] _GEN_52; // @[CSR.scala 40:45:@548.4]
  wire  _T_327; // @[CSR.scala 47:30:@556.4]
  wire  _T_332; // @[CSR.scala 40:22:@565.4]
  wire  _T_333; // @[CSR.scala 40:30:@566.4]
  wire [31:0] _GEN_56; // @[CSR.scala 40:45:@567.4]
  wire  _T_338; // @[CSR.scala 47:30:@575.4]
  wire  _T_343; // @[CSR.scala 40:22:@584.4]
  wire  _T_344; // @[CSR.scala 40:30:@585.4]
  wire  _T_349; // @[CSR.scala 47:30:@594.4]
  assign _T_178 = io_bus_addr == 4'h0; // @[CSR.scala 40:22:@299.4]
  assign _T_179 = _T_178 & io_bus_read; // @[CSR.scala 40:30:@300.4]
  assign _GEN_0 = _T_179 ? io_csr_0_dataIn : 32'h0; // @[CSR.scala 40:45:@301.4]
  assign _T_184 = _T_178 & io_bus_write; // @[CSR.scala 47:30:@309.4]
  assign _T_189 = io_bus_addr == 4'h1; // @[CSR.scala 40:22:@318.4]
  assign _T_190 = _T_189 & io_bus_read; // @[CSR.scala 40:30:@319.4]
  assign _GEN_4 = _T_190 ? io_csr_1_dataIn : _GEN_0; // @[CSR.scala 40:45:@320.4]
  assign _T_200 = io_bus_addr == 4'h2; // @[CSR.scala 40:22:@337.4]
  assign _T_201 = _T_200 & io_bus_read; // @[CSR.scala 40:30:@338.4]
  assign _GEN_8 = _T_201 ? io_csr_2_dataIn : _GEN_4; // @[CSR.scala 40:45:@339.4]
  assign _T_206 = _T_200 & io_bus_write; // @[CSR.scala 47:30:@347.4]
  assign _T_211 = io_bus_addr == 4'h3; // @[CSR.scala 40:22:@356.4]
  assign _T_212 = _T_211 & io_bus_read; // @[CSR.scala 40:30:@357.4]
  assign _GEN_12 = _T_212 ? io_csr_3_dataIn : _GEN_8; // @[CSR.scala 40:45:@358.4]
  assign _T_217 = _T_211 & io_bus_write; // @[CSR.scala 47:30:@366.4]
  assign _T_222 = io_bus_addr == 4'h4; // @[CSR.scala 40:22:@375.4]
  assign _T_223 = _T_222 & io_bus_read; // @[CSR.scala 40:30:@376.4]
  assign _GEN_16 = _T_223 ? io_csr_4_dataIn : _GEN_12; // @[CSR.scala 40:45:@377.4]
  assign _T_228 = _T_222 & io_bus_write; // @[CSR.scala 47:30:@385.4]
  assign _T_233 = io_bus_addr == 4'h5; // @[CSR.scala 40:22:@394.4]
  assign _T_234 = _T_233 & io_bus_read; // @[CSR.scala 40:30:@395.4]
  assign _GEN_20 = _T_234 ? io_csr_5_dataIn : _GEN_16; // @[CSR.scala 40:45:@396.4]
  assign _T_239 = _T_233 & io_bus_write; // @[CSR.scala 47:30:@404.4]
  assign _T_244 = io_bus_addr == 4'h6; // @[CSR.scala 40:22:@413.4]
  assign _T_245 = _T_244 & io_bus_read; // @[CSR.scala 40:30:@414.4]
  assign _GEN_24 = _T_245 ? io_csr_6_dataIn : _GEN_20; // @[CSR.scala 40:45:@415.4]
  assign _T_250 = _T_244 & io_bus_write; // @[CSR.scala 47:30:@423.4]
  assign _T_255 = io_bus_addr == 4'h7; // @[CSR.scala 40:22:@432.4]
  assign _T_256 = _T_255 & io_bus_read; // @[CSR.scala 40:30:@433.4]
  assign _GEN_28 = _T_256 ? io_csr_7_dataIn : _GEN_24; // @[CSR.scala 40:45:@434.4]
  assign _T_261 = _T_255 & io_bus_write; // @[CSR.scala 47:30:@442.4]
  assign _T_266 = io_bus_addr == 4'h8; // @[CSR.scala 40:22:@451.4]
  assign _T_267 = _T_266 & io_bus_read; // @[CSR.scala 40:30:@452.4]
  assign _GEN_32 = _T_267 ? io_csr_8_dataIn : _GEN_28; // @[CSR.scala 40:45:@453.4]
  assign _T_272 = _T_266 & io_bus_write; // @[CSR.scala 47:30:@461.4]
  assign _T_277 = io_bus_addr == 4'h9; // @[CSR.scala 40:22:@470.4]
  assign _T_278 = _T_277 & io_bus_read; // @[CSR.scala 40:30:@471.4]
  assign _GEN_36 = _T_278 ? io_csr_9_dataIn : _GEN_32; // @[CSR.scala 40:45:@472.4]
  assign _T_283 = _T_277 & io_bus_write; // @[CSR.scala 47:30:@480.4]
  assign _T_288 = io_bus_addr == 4'ha; // @[CSR.scala 40:22:@489.4]
  assign _T_289 = _T_288 & io_bus_read; // @[CSR.scala 40:30:@490.4]
  assign _GEN_40 = _T_289 ? io_csr_10_dataIn : _GEN_36; // @[CSR.scala 40:45:@491.4]
  assign _T_294 = _T_288 & io_bus_write; // @[CSR.scala 47:30:@499.4]
  assign _T_299 = io_bus_addr == 4'hb; // @[CSR.scala 40:22:@508.4]
  assign _T_300 = _T_299 & io_bus_read; // @[CSR.scala 40:30:@509.4]
  assign _GEN_44 = _T_300 ? io_csr_11_dataIn : _GEN_40; // @[CSR.scala 40:45:@510.4]
  assign _T_305 = _T_299 & io_bus_write; // @[CSR.scala 47:30:@518.4]
  assign _T_310 = io_bus_addr == 4'hc; // @[CSR.scala 40:22:@527.4]
  assign _T_311 = _T_310 & io_bus_read; // @[CSR.scala 40:30:@528.4]
  assign _GEN_48 = _T_311 ? io_csr_12_dataIn : _GEN_44; // @[CSR.scala 40:45:@529.4]
  assign _T_316 = _T_310 & io_bus_write; // @[CSR.scala 47:30:@537.4]
  assign _T_321 = io_bus_addr == 4'hd; // @[CSR.scala 40:22:@546.4]
  assign _T_322 = _T_321 & io_bus_read; // @[CSR.scala 40:30:@547.4]
  assign _GEN_52 = _T_322 ? io_csr_13_dataIn : _GEN_48; // @[CSR.scala 40:45:@548.4]
  assign _T_327 = _T_321 & io_bus_write; // @[CSR.scala 47:30:@556.4]
  assign _T_332 = io_bus_addr == 4'he; // @[CSR.scala 40:22:@565.4]
  assign _T_333 = _T_332 & io_bus_read; // @[CSR.scala 40:30:@566.4]
  assign _GEN_56 = _T_333 ? io_csr_14_dataIn : _GEN_52; // @[CSR.scala 40:45:@567.4]
  assign _T_338 = _T_332 & io_bus_write; // @[CSR.scala 47:30:@575.4]
  assign _T_343 = io_bus_addr == 4'hf; // @[CSR.scala 40:22:@584.4]
  assign _T_344 = _T_343 & io_bus_read; // @[CSR.scala 40:30:@585.4]
  assign _T_349 = _T_343 & io_bus_write; // @[CSR.scala 47:30:@594.4]
  assign io_csr_0_dataOut = _T_184 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@311.6 CSR.scala 52:25:@316.6]
  assign io_csr_0_dataWrite = _T_178 & io_bus_write; // @[CSR.scala 49:27:@312.6 CSR.scala 51:27:@315.6]
  assign io_csr_2_dataOut = _T_206 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@349.6 CSR.scala 52:25:@354.6]
  assign io_csr_2_dataWrite = _T_200 & io_bus_write; // @[CSR.scala 49:27:@350.6 CSR.scala 51:27:@353.6]
  assign io_csr_3_dataOut = _T_217 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@368.6 CSR.scala 52:25:@373.6]
  assign io_csr_3_dataWrite = _T_211 & io_bus_write; // @[CSR.scala 49:27:@369.6 CSR.scala 51:27:@372.6]
  assign io_csr_4_dataOut = _T_228 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@387.6 CSR.scala 52:25:@392.6]
  assign io_csr_4_dataWrite = _T_222 & io_bus_write; // @[CSR.scala 49:27:@388.6 CSR.scala 51:27:@391.6]
  assign io_csr_5_dataOut = _T_239 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@406.6 CSR.scala 52:25:@411.6]
  assign io_csr_5_dataWrite = _T_233 & io_bus_write; // @[CSR.scala 49:27:@407.6 CSR.scala 51:27:@410.6]
  assign io_csr_6_dataOut = _T_250 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@425.6 CSR.scala 52:25:@430.6]
  assign io_csr_6_dataWrite = _T_244 & io_bus_write; // @[CSR.scala 49:27:@426.6 CSR.scala 51:27:@429.6]
  assign io_csr_7_dataOut = _T_261 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@444.6 CSR.scala 52:25:@449.6]
  assign io_csr_7_dataWrite = _T_255 & io_bus_write; // @[CSR.scala 49:27:@445.6 CSR.scala 51:27:@448.6]
  assign io_csr_8_dataOut = _T_272 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@463.6 CSR.scala 52:25:@468.6]
  assign io_csr_8_dataWrite = _T_266 & io_bus_write; // @[CSR.scala 49:27:@464.6 CSR.scala 51:27:@467.6]
  assign io_csr_9_dataOut = _T_283 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@482.6 CSR.scala 52:25:@487.6]
  assign io_csr_9_dataWrite = _T_277 & io_bus_write; // @[CSR.scala 49:27:@483.6 CSR.scala 51:27:@486.6]
  assign io_csr_10_dataOut = _T_294 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@501.6 CSR.scala 52:25:@506.6]
  assign io_csr_10_dataWrite = _T_288 & io_bus_write; // @[CSR.scala 49:27:@502.6 CSR.scala 51:27:@505.6]
  assign io_csr_11_dataOut = _T_305 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@520.6 CSR.scala 52:25:@525.6]
  assign io_csr_11_dataWrite = _T_299 & io_bus_write; // @[CSR.scala 49:27:@521.6 CSR.scala 51:27:@524.6]
  assign io_csr_12_dataOut = _T_316 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@539.6 CSR.scala 52:25:@544.6]
  assign io_csr_12_dataWrite = _T_310 & io_bus_write; // @[CSR.scala 49:27:@540.6 CSR.scala 51:27:@543.6]
  assign io_csr_13_dataOut = _T_327 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@558.6 CSR.scala 52:25:@563.6]
  assign io_csr_13_dataWrite = _T_321 & io_bus_write; // @[CSR.scala 49:27:@559.6 CSR.scala 51:27:@562.6]
  assign io_csr_14_dataOut = _T_338 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@577.6 CSR.scala 52:25:@582.6]
  assign io_csr_14_dataWrite = _T_332 & io_bus_write; // @[CSR.scala 49:27:@578.6 CSR.scala 51:27:@581.6]
  assign io_csr_15_dataOut = _T_349 ? io_bus_dataOut : 32'h0; // @[CSR.scala 48:25:@596.6 CSR.scala 52:25:@601.6]
  assign io_csr_15_dataWrite = _T_343 & io_bus_write; // @[CSR.scala 49:27:@597.6 CSR.scala 51:27:@600.6]
  assign io_bus_dataIn = _T_344 ? io_csr_15_dataIn : _GEN_56; // @[CSR.scala 37:17:@298.4]
endmodule
module AddressGenerator( // @[:@604.2]
  input         clock, // @[:@605.4]
  input         reset, // @[:@606.4]
  input         io_ctl_start, // @[:@607.4]
  output        io_ctl_busy, // @[:@607.4]
  input  [31:0] io_ctl_startAddress, // @[:@607.4]
  input  [31:0] io_ctl_lineLength, // @[:@607.4]
  input  [31:0] io_ctl_lineCount, // @[:@607.4]
  input  [31:0] io_ctl_lineGap, // @[:@607.4]
  input         io_xfer_done, // @[:@607.4]
  output [31:0] io_xfer_address, // @[:@607.4]
  output [31:0] io_xfer_length, // @[:@607.4]
  output        io_xfer_valid, // @[:@607.4]
  output        io_xfer_first // @[:@607.4]
);
  reg [1:0] state; // @[AddressGenerator.scala 37:22:@609.4]
  reg [31:0] _RAND_0;
  reg [31:0] lineCount; // @[AddressGenerator.scala 39:26:@610.4]
  reg [31:0] _RAND_1;
  reg [31:0] lineGap; // @[AddressGenerator.scala 40:24:@611.4]
  reg [31:0] _RAND_2;
  reg [31:0] address_o; // @[AddressGenerator.scala 42:26:@612.4]
  reg [31:0] _RAND_3;
  reg [31:0] address_i; // @[AddressGenerator.scala 43:26:@613.4]
  reg [31:0] _RAND_4;
  reg [31:0] length_o; // @[AddressGenerator.scala 44:25:@614.4]
  reg [31:0] _RAND_5;
  reg [31:0] length_i; // @[AddressGenerator.scala 45:25:@615.4]
  reg [31:0] _RAND_6;
  reg  valid; // @[AddressGenerator.scala 46:22:@616.4]
  reg [31:0] _RAND_7;
  reg  first; // @[AddressGenerator.scala 47:22:@617.4]
  reg [31:0] _RAND_8;
  reg  busy; // @[AddressGenerator.scala 48:21:@618.4]
  reg [31:0] _RAND_9;
  wire  _T_46; // @[AddressGenerator.scala 56:14:@624.4]
  wire  _GEN_0; // @[AddressGenerator.scala 56:24:@625.4]
  wire  _T_49; // @[Conditional.scala 37:30:@631.4]
  wire [1:0] _GEN_1; // @[AddressGenerator.scala 64:25:@633.6]
  wire [31:0] _GEN_2; // @[AddressGenerator.scala 64:25:@633.6]
  wire [31:0] _GEN_3; // @[AddressGenerator.scala 64:25:@633.6]
  wire [31:0] _GEN_4; // @[AddressGenerator.scala 64:25:@633.6]
  wire [31:0] _GEN_5; // @[AddressGenerator.scala 64:25:@633.6]
  wire  _GEN_6; // @[AddressGenerator.scala 64:25:@633.6]
  wire  _T_51; // @[Conditional.scala 37:30:@643.6]
  wire [34:0] _T_54; // @[AddressGenerator.scala 79:42:@648.8]
  wire [34:0] _GEN_28; // @[AddressGenerator.scala 79:30:@649.8]
  wire [35:0] _T_55; // @[AddressGenerator.scala 79:30:@649.8]
  wire [34:0] _T_56; // @[AddressGenerator.scala 79:30:@650.8]
  wire [34:0] _T_58; // @[AddressGenerator.scala 79:74:@651.8]
  wire [35:0] _T_59; // @[AddressGenerator.scala 79:63:@652.8]
  wire [34:0] _T_60; // @[AddressGenerator.scala 79:63:@653.8]
  wire [32:0] _T_62; // @[AddressGenerator.scala 81:30:@655.8]
  wire [32:0] _T_63; // @[AddressGenerator.scala 81:30:@656.8]
  wire [31:0] _T_64; // @[AddressGenerator.scala 81:30:@657.8]
  wire  _T_65; // @[Conditional.scala 37:30:@662.8]
  wire  _T_69; // @[AddressGenerator.scala 88:24:@667.12]
  wire [1:0] _GEN_7; // @[AddressGenerator.scala 88:30:@668.12]
  wire [1:0] _GEN_8; // @[AddressGenerator.scala 87:25:@666.10]
  wire  _GEN_9; // @[Conditional.scala 39:67:@663.8]
  wire  _GEN_10; // @[Conditional.scala 39:67:@663.8]
  wire [1:0] _GEN_11; // @[Conditional.scala 39:67:@663.8]
  wire  _GEN_12; // @[Conditional.scala 39:67:@644.6]
  wire [31:0] _GEN_13; // @[Conditional.scala 39:67:@644.6]
  wire [31:0] _GEN_14; // @[Conditional.scala 39:67:@644.6]
  wire [34:0] _GEN_15; // @[Conditional.scala 39:67:@644.6]
  wire [31:0] _GEN_16; // @[Conditional.scala 39:67:@644.6]
  wire [1:0] _GEN_17; // @[Conditional.scala 39:67:@644.6]
  wire  _GEN_18; // @[Conditional.scala 39:67:@644.6]
  wire [1:0] _GEN_19; // @[Conditional.scala 40:58:@632.4]
  wire [34:0] _GEN_20; // @[Conditional.scala 40:58:@632.4]
  wire [31:0] _GEN_21; // @[Conditional.scala 40:58:@632.4]
  wire [31:0] _GEN_22; // @[Conditional.scala 40:58:@632.4]
  wire [31:0] _GEN_23; // @[Conditional.scala 40:58:@632.4]
  wire  _GEN_24; // @[Conditional.scala 40:58:@632.4]
  wire  _GEN_25; // @[Conditional.scala 40:58:@632.4]
  wire [31:0] _GEN_26; // @[Conditional.scala 40:58:@632.4]
  wire [31:0] _GEN_27; // @[Conditional.scala 40:58:@632.4]
  assign _T_46 = state == 2'h0; // @[AddressGenerator.scala 56:14:@624.4]
  assign _GEN_0 = _T_46 ? 1'h0 : 1'h1; // @[AddressGenerator.scala 56:24:@625.4]
  assign _T_49 = 2'h0 == state; // @[Conditional.scala 37:30:@631.4]
  assign _GEN_1 = io_ctl_start ? 2'h1 : state; // @[AddressGenerator.scala 64:25:@633.6]
  assign _GEN_2 = io_ctl_start ? io_ctl_startAddress : address_i; // @[AddressGenerator.scala 64:25:@633.6]
  assign _GEN_3 = io_ctl_start ? io_ctl_lineLength : length_i; // @[AddressGenerator.scala 64:25:@633.6]
  assign _GEN_4 = io_ctl_start ? io_ctl_lineCount : lineCount; // @[AddressGenerator.scala 64:25:@633.6]
  assign _GEN_5 = io_ctl_start ? io_ctl_lineGap : lineGap; // @[AddressGenerator.scala 64:25:@633.6]
  assign _GEN_6 = io_ctl_start ? 1'h1 : first; // @[AddressGenerator.scala 64:25:@633.6]
  assign _T_51 = 2'h1 == state; // @[Conditional.scala 37:30:@643.6]
  assign _T_54 = length_i * 32'h4; // @[AddressGenerator.scala 79:42:@648.8]
  assign _GEN_28 = {{3'd0}, address_i}; // @[AddressGenerator.scala 79:30:@649.8]
  assign _T_55 = _GEN_28 + _T_54; // @[AddressGenerator.scala 79:30:@649.8]
  assign _T_56 = _GEN_28 + _T_54; // @[AddressGenerator.scala 79:30:@650.8]
  assign _T_58 = lineGap * 32'h4; // @[AddressGenerator.scala 79:74:@651.8]
  assign _T_59 = _T_56 + _T_58; // @[AddressGenerator.scala 79:63:@652.8]
  assign _T_60 = _T_56 + _T_58; // @[AddressGenerator.scala 79:63:@653.8]
  assign _T_62 = lineCount - 32'h1; // @[AddressGenerator.scala 81:30:@655.8]
  assign _T_63 = $unsigned(_T_62); // @[AddressGenerator.scala 81:30:@656.8]
  assign _T_64 = _T_63[31:0]; // @[AddressGenerator.scala 81:30:@657.8]
  assign _T_65 = 2'h2 == state; // @[Conditional.scala 37:30:@662.8]
  assign _T_69 = lineCount > 32'h0; // @[AddressGenerator.scala 88:24:@667.12]
  assign _GEN_7 = _T_69 ? 2'h1 : 2'h0; // @[AddressGenerator.scala 88:30:@668.12]
  assign _GEN_8 = io_xfer_done ? _GEN_7 : state; // @[AddressGenerator.scala 87:25:@666.10]
  assign _GEN_9 = _T_65 ? 1'h0 : valid; // @[Conditional.scala 39:67:@663.8]
  assign _GEN_10 = _T_65 ? 1'h0 : first; // @[Conditional.scala 39:67:@663.8]
  assign _GEN_11 = _T_65 ? _GEN_8 : state; // @[Conditional.scala 39:67:@663.8]
  assign _GEN_12 = _T_51 ? 1'h1 : _GEN_9; // @[Conditional.scala 39:67:@644.6]
  assign _GEN_13 = _T_51 ? address_i : address_o; // @[Conditional.scala 39:67:@644.6]
  assign _GEN_14 = _T_51 ? length_i : length_o; // @[Conditional.scala 39:67:@644.6]
  assign _GEN_15 = _T_51 ? _T_60 : {{3'd0}, address_i}; // @[Conditional.scala 39:67:@644.6]
  assign _GEN_16 = _T_51 ? _T_64 : lineCount; // @[Conditional.scala 39:67:@644.6]
  assign _GEN_17 = _T_51 ? 2'h2 : _GEN_11; // @[Conditional.scala 39:67:@644.6]
  assign _GEN_18 = _T_51 ? first : _GEN_10; // @[Conditional.scala 39:67:@644.6]
  assign _GEN_19 = _T_49 ? _GEN_1 : _GEN_17; // @[Conditional.scala 40:58:@632.4]
  assign _GEN_20 = _T_49 ? {{3'd0}, _GEN_2} : _GEN_15; // @[Conditional.scala 40:58:@632.4]
  assign _GEN_21 = _T_49 ? _GEN_3 : length_i; // @[Conditional.scala 40:58:@632.4]
  assign _GEN_22 = _T_49 ? _GEN_4 : _GEN_16; // @[Conditional.scala 40:58:@632.4]
  assign _GEN_23 = _T_49 ? _GEN_5 : lineGap; // @[Conditional.scala 40:58:@632.4]
  assign _GEN_24 = _T_49 ? _GEN_6 : _GEN_18; // @[Conditional.scala 40:58:@632.4]
  assign _GEN_25 = _T_49 ? valid : _GEN_12; // @[Conditional.scala 40:58:@632.4]
  assign _GEN_26 = _T_49 ? address_o : _GEN_13; // @[Conditional.scala 40:58:@632.4]
  assign _GEN_27 = _T_49 ? length_o : _GEN_14; // @[Conditional.scala 40:58:@632.4]
  assign io_ctl_busy = busy; // @[AddressGenerator.scala 54:15:@623.4]
  assign io_xfer_address = address_o; // @[AddressGenerator.scala 50:19:@619.4]
  assign io_xfer_length = length_o; // @[AddressGenerator.scala 51:18:@620.4]
  assign io_xfer_valid = valid; // @[AddressGenerator.scala 52:17:@621.4]
  assign io_xfer_first = first; // @[AddressGenerator.scala 53:17:@622.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  lineCount = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  lineGap = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  address_o = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  address_i = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  length_o = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  length_i = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  valid = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  first = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  busy = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 2'h0;
    end else begin
      if (_T_49) begin
        if (io_ctl_start) begin
          state <= 2'h1;
        end
      end else begin
        if (_T_51) begin
          state <= 2'h2;
        end else begin
          if (_T_65) begin
            if (io_xfer_done) begin
              if (_T_69) begin
                state <= 2'h1;
              end else begin
                state <= 2'h0;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      lineCount <= 32'h0;
    end else begin
      if (_T_49) begin
        if (io_ctl_start) begin
          lineCount <= io_ctl_lineCount;
        end
      end else begin
        if (_T_51) begin
          lineCount <= _T_64;
        end
      end
    end
    if (reset) begin
      lineGap <= 32'h0;
    end else begin
      if (_T_49) begin
        if (io_ctl_start) begin
          lineGap <= io_ctl_lineGap;
        end
      end
    end
    if (reset) begin
      address_o <= 32'h0;
    end else begin
      if (!(_T_49)) begin
        if (_T_51) begin
          address_o <= address_i;
        end
      end
    end
    if (reset) begin
      address_i <= 32'h0;
    end else begin
      address_i <= _GEN_20[31:0];
    end
    if (reset) begin
      length_o <= 32'h0;
    end else begin
      if (!(_T_49)) begin
        if (_T_51) begin
          length_o <= length_i;
        end
      end
    end
    if (reset) begin
      length_i <= 32'h0;
    end else begin
      if (_T_49) begin
        if (io_ctl_start) begin
          length_i <= io_ctl_lineLength;
        end
      end
    end
    if (reset) begin
      valid <= 1'h0;
    end else begin
      if (!(_T_49)) begin
        if (_T_51) begin
          valid <= 1'h1;
        end else begin
          if (_T_65) begin
            valid <= 1'h0;
          end
        end
      end
    end
    if (reset) begin
      first <= 1'h0;
    end else begin
      if (_T_49) begin
        if (io_ctl_start) begin
          first <= 1'h1;
        end
      end else begin
        if (!(_T_51)) begin
          if (_T_65) begin
            first <= 1'h0;
          end
        end
      end
    end
    if (reset) begin
      busy <= 1'h0;
    end else begin
      if (_T_46) begin
        busy <= 1'h0;
      end else begin
        busy <= 1'h1;
      end
    end
  end
endmodule
module TransferSplitter( // @[:@677.2]
  output        io_xferIn_done, // @[:@680.4]
  input  [31:0] io_xferIn_address, // @[:@680.4]
  input  [31:0] io_xferIn_length, // @[:@680.4]
  input         io_xferIn_valid, // @[:@680.4]
  input         io_xferOut_done, // @[:@680.4]
  output [31:0] io_xferOut_address, // @[:@680.4]
  output [31:0] io_xferOut_length, // @[:@680.4]
  output        io_xferOut_valid // @[:@680.4]
);
  assign io_xferIn_done = io_xferOut_done; // @[TransferSplitter.scala 132:16:@686.4]
  assign io_xferOut_address = io_xferIn_address; // @[TransferSplitter.scala 132:16:@685.4]
  assign io_xferOut_length = io_xferIn_length; // @[TransferSplitter.scala 132:16:@684.4]
  assign io_xferOut_valid = io_xferIn_valid; // @[TransferSplitter.scala 132:16:@683.4]
endmodule
module TransferSplitter_1( // @[:@761.2]
  input         clock, // @[:@762.4]
  input         reset, // @[:@763.4]
  output        io_xferIn_done, // @[:@764.4]
  input  [31:0] io_xferIn_length, // @[:@764.4]
  input         io_xferIn_valid, // @[:@764.4]
  input         io_xferIn_first, // @[:@764.4]
  input         io_xferOut_done, // @[:@764.4]
  output [31:0] io_xferOut_length, // @[:@764.4]
  output        io_xferOut_valid, // @[:@764.4]
  output        io_xferOut_first // @[:@764.4]
);
  reg [31:0] _T_45; // @[TransferSplitter.scala 44:27:@767.4]
  reg [31:0] _RAND_0;
  reg [31:0] _T_51; // @[TransferSplitter.scala 47:27:@769.4]
  reg [31:0] _RAND_1;
  reg  _T_54; // @[TransferSplitter.scala 49:26:@770.4]
  reg [31:0] _RAND_2;
  reg  _T_57; // @[TransferSplitter.scala 50:26:@771.4]
  reg [31:0] _RAND_3;
  reg  _T_60; // @[TransferSplitter.scala 52:23:@772.4]
  reg [31:0] _RAND_4;
  reg  _T_63; // @[TransferSplitter.scala 53:24:@773.4]
  reg [31:0] _RAND_5;
  reg [1:0] _T_65; // @[TransferSplitter.scala 55:24:@774.4]
  reg [31:0] _RAND_6;
  wire  _T_66; // @[Conditional.scala 37:30:@780.4]
  wire [31:0] _GEN_1; // @[TransferSplitter.scala 68:31:@783.6]
  wire  _GEN_2; // @[TransferSplitter.scala 68:31:@783.6]
  wire [1:0] _GEN_3; // @[TransferSplitter.scala 68:31:@783.6]
  wire  _T_68; // @[Conditional.scala 37:30:@791.6]
  wire  _T_71; // @[TransferSplitter.scala 81:23:@797.8]
  wire [32:0] _T_74; // @[TransferSplitter.scala 84:34:@800.10]
  wire [32:0] _T_75; // @[TransferSplitter.scala 84:34:@801.10]
  wire [31:0] _T_76; // @[TransferSplitter.scala 84:34:@802.10]
  wire [31:0] _GEN_4; // @[TransferSplitter.scala 81:38:@798.8]
  wire [31:0] _GEN_5; // @[TransferSplitter.scala 81:38:@798.8]
  wire  _T_87; // @[Conditional.scala 37:30:@819.8]
  wire  _T_91; // @[TransferSplitter.scala 122:25:@824.12]
  wire [1:0] _GEN_7; // @[TransferSplitter.scala 122:32:@825.12]
  wire  _GEN_8; // @[TransferSplitter.scala 122:32:@825.12]
  wire [1:0] _GEN_9; // @[TransferSplitter.scala 121:31:@823.10]
  wire  _GEN_10; // @[TransferSplitter.scala 121:31:@823.10]
  wire  _GEN_11; // @[Conditional.scala 39:67:@820.8]
  wire  _GEN_12; // @[Conditional.scala 39:67:@820.8]
  wire [1:0] _GEN_13; // @[Conditional.scala 39:67:@820.8]
  wire  _GEN_14; // @[Conditional.scala 39:67:@820.8]
  wire  _GEN_16; // @[Conditional.scala 39:67:@792.6]
  wire  _GEN_17; // @[Conditional.scala 39:67:@792.6]
  wire [1:0] _GEN_18; // @[Conditional.scala 39:67:@792.6]
  wire [31:0] _GEN_19; // @[Conditional.scala 39:67:@792.6]
  wire [31:0] _GEN_20; // @[Conditional.scala 39:67:@792.6]
  wire  _GEN_22; // @[Conditional.scala 39:67:@792.6]
  wire  _GEN_23; // @[Conditional.scala 39:67:@792.6]
  wire  _GEN_24; // @[Conditional.scala 40:58:@781.4]
  wire [31:0] _GEN_26; // @[Conditional.scala 40:58:@781.4]
  wire  _GEN_27; // @[Conditional.scala 40:58:@781.4]
  wire [1:0] _GEN_28; // @[Conditional.scala 40:58:@781.4]
  wire  _GEN_30; // @[Conditional.scala 40:58:@781.4]
  wire  _GEN_31; // @[Conditional.scala 40:58:@781.4]
  wire [31:0] _GEN_32; // @[Conditional.scala 40:58:@781.4]
  assign _T_66 = 2'h0 == _T_65; // @[Conditional.scala 37:30:@780.4]
  assign _GEN_1 = io_xferIn_valid ? io_xferIn_length : _T_45; // @[TransferSplitter.scala 68:31:@783.6]
  assign _GEN_2 = io_xferIn_valid ? io_xferIn_first : _T_54; // @[TransferSplitter.scala 68:31:@783.6]
  assign _GEN_3 = io_xferIn_valid ? 2'h1 : _T_65; // @[TransferSplitter.scala 68:31:@783.6]
  assign _T_68 = 2'h1 == _T_65; // @[Conditional.scala 37:30:@791.6]
  assign _T_71 = _T_45 > 32'h100; // @[TransferSplitter.scala 81:23:@797.8]
  assign _T_74 = _T_45 - 32'h100; // @[TransferSplitter.scala 84:34:@800.10]
  assign _T_75 = $unsigned(_T_74); // @[TransferSplitter.scala 84:34:@801.10]
  assign _T_76 = _T_75[31:0]; // @[TransferSplitter.scala 84:34:@802.10]
  assign _GEN_4 = _T_71 ? 32'h100 : _T_45; // @[TransferSplitter.scala 81:38:@798.8]
  assign _GEN_5 = _T_71 ? _T_76 : 32'h0; // @[TransferSplitter.scala 81:38:@798.8]
  assign _T_87 = 2'h2 == _T_65; // @[Conditional.scala 37:30:@819.8]
  assign _T_91 = _T_45 > 32'h0; // @[TransferSplitter.scala 122:25:@824.12]
  assign _GEN_7 = _T_91 ? 2'h1 : 2'h0; // @[TransferSplitter.scala 122:32:@825.12]
  assign _GEN_8 = _T_91 ? _T_60 : 1'h1; // @[TransferSplitter.scala 122:32:@825.12]
  assign _GEN_9 = io_xferOut_done ? _GEN_7 : _T_65; // @[TransferSplitter.scala 121:31:@823.10]
  assign _GEN_10 = io_xferOut_done ? _GEN_8 : _T_60; // @[TransferSplitter.scala 121:31:@823.10]
  assign _GEN_11 = _T_87 ? 1'h0 : _T_63; // @[Conditional.scala 39:67:@820.8]
  assign _GEN_12 = _T_87 ? 1'h0 : _T_54; // @[Conditional.scala 39:67:@820.8]
  assign _GEN_13 = _T_87 ? _GEN_9 : _T_65; // @[Conditional.scala 39:67:@820.8]
  assign _GEN_14 = _T_87 ? _GEN_10 : _T_60; // @[Conditional.scala 39:67:@820.8]
  assign _GEN_16 = _T_68 ? _T_54 : _T_57; // @[Conditional.scala 39:67:@792.6]
  assign _GEN_17 = _T_68 ? 1'h1 : _GEN_11; // @[Conditional.scala 39:67:@792.6]
  assign _GEN_18 = _T_68 ? 2'h2 : _GEN_13; // @[Conditional.scala 39:67:@792.6]
  assign _GEN_19 = _T_68 ? _GEN_4 : _T_51; // @[Conditional.scala 39:67:@792.6]
  assign _GEN_20 = _T_68 ? _GEN_5 : _T_45; // @[Conditional.scala 39:67:@792.6]
  assign _GEN_22 = _T_68 ? _T_54 : _GEN_12; // @[Conditional.scala 39:67:@792.6]
  assign _GEN_23 = _T_68 ? _T_60 : _GEN_14; // @[Conditional.scala 39:67:@792.6]
  assign _GEN_24 = _T_66 ? 1'h0 : _GEN_23; // @[Conditional.scala 40:58:@781.4]
  assign _GEN_26 = _T_66 ? _GEN_1 : _GEN_20; // @[Conditional.scala 40:58:@781.4]
  assign _GEN_27 = _T_66 ? _GEN_2 : _GEN_22; // @[Conditional.scala 40:58:@781.4]
  assign _GEN_28 = _T_66 ? _GEN_3 : _GEN_18; // @[Conditional.scala 40:58:@781.4]
  assign _GEN_30 = _T_66 ? _T_57 : _GEN_16; // @[Conditional.scala 40:58:@781.4]
  assign _GEN_31 = _T_66 ? _T_63 : _GEN_17; // @[Conditional.scala 40:58:@781.4]
  assign _GEN_32 = _T_66 ? _T_51 : _GEN_19; // @[Conditional.scala 40:58:@781.4]
  assign io_xferIn_done = _T_60; // @[TransferSplitter.scala 57:20:@775.4]
  assign io_xferOut_length = _T_51; // @[TransferSplitter.scala 62:23:@779.4]
  assign io_xferOut_valid = _T_63; // @[TransferSplitter.scala 58:22:@776.4]
  assign io_xferOut_first = _T_57; // @[TransferSplitter.scala 60:22:@777.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_45 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_51 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_54 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_57 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_60 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_63 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_65 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_45 <= 32'h0;
    end else begin
      if (_T_66) begin
        if (io_xferIn_valid) begin
          _T_45 <= io_xferIn_length;
        end
      end else begin
        if (_T_68) begin
          if (_T_71) begin
            _T_45 <= _T_76;
          end else begin
            _T_45 <= 32'h0;
          end
        end
      end
    end
    if (reset) begin
      _T_51 <= 32'h0;
    end else begin
      if (!(_T_66)) begin
        if (_T_68) begin
          if (_T_71) begin
            _T_51 <= 32'h100;
          end else begin
            _T_51 <= _T_45;
          end
        end
      end
    end
    if (reset) begin
      _T_54 <= 1'h0;
    end else begin
      if (_T_66) begin
        if (io_xferIn_valid) begin
          _T_54 <= io_xferIn_first;
        end
      end else begin
        if (!(_T_68)) begin
          if (_T_87) begin
            _T_54 <= 1'h0;
          end
        end
      end
    end
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (!(_T_66)) begin
        if (_T_68) begin
          _T_57 <= _T_54;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_66) begin
        _T_60 <= 1'h0;
      end else begin
        if (!(_T_68)) begin
          if (_T_87) begin
            if (io_xferOut_done) begin
              if (!(_T_91)) begin
                _T_60 <= 1'h1;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      _T_63 <= 1'h0;
    end else begin
      if (!(_T_66)) begin
        if (_T_68) begin
          _T_63 <= 1'h1;
        end else begin
          if (_T_87) begin
            _T_63 <= 1'h0;
          end
        end
      end
    end
    if (reset) begin
      _T_65 <= 2'h0;
    end else begin
      if (_T_66) begin
        if (io_xferIn_valid) begin
          _T_65 <= 2'h1;
        end
      end else begin
        if (_T_68) begin
          _T_65 <= 2'h2;
        end else begin
          if (_T_87) begin
            if (io_xferOut_done) begin
              if (_T_91) begin
                _T_65 <= 2'h1;
              end else begin
                _T_65 <= 2'h0;
              end
            end
          end
        end
      end
    end
  end
endmodule
module ClearCSR( // @[:@835.2]
  input         clock, // @[:@836.4]
  input         reset, // @[:@837.4]
  input  [31:0] io_csr_dataOut, // @[:@838.4]
  input         io_csr_dataWrite, // @[:@838.4]
  output [31:0] io_csr_dataIn, // @[:@838.4]
  output [31:0] io_value, // @[:@838.4]
  input  [31:0] io_clear // @[:@838.4]
);
  reg [31:0] reg$; // @[ClearCSR.scala 36:20:@840.4]
  reg [31:0] _RAND_0;
  wire [31:0] _T_29; // @[ClearCSR.scala 44:19:@847.6]
  wire [31:0] _T_30; // @[ClearCSR.scala 44:16:@848.6]
  wire [31:0] _GEN_0; // @[ClearCSR.scala 41:25:@843.4]
  assign _T_29 = ~ io_clear; // @[ClearCSR.scala 44:19:@847.6]
  assign _T_30 = reg$ & _T_29; // @[ClearCSR.scala 44:16:@848.6]
  assign _GEN_0 = io_csr_dataWrite ? io_csr_dataOut : _T_30; // @[ClearCSR.scala 41:25:@843.4]
  assign io_csr_dataIn = reg$; // @[ClearCSR.scala 38:17:@841.4]
  assign io_value = reg$; // @[ClearCSR.scala 39:12:@842.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg$ = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      reg$ <= 32'h0;
    end else begin
      if (io_csr_dataWrite) begin
        reg$ <= io_csr_dataOut;
      end else begin
        reg$ <= _T_30;
      end
    end
  end
endmodule
module StatusCSR( // @[:@852.2]
  input         clock, // @[:@853.4]
  output [31:0] io_csr_dataIn, // @[:@855.4]
  input  [31:0] io_value // @[:@855.4]
);
  reg [31:0] reg$; // @[StatusCSR.scala 35:20:@857.4]
  reg [31:0] _RAND_0;
  assign io_csr_dataIn = reg$; // @[StatusCSR.scala 37:17:@859.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg$ = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    reg$ <= io_value;
  end
endmodule
module SimpleCSR( // @[:@861.2]
  input         clock, // @[:@862.4]
  input         reset, // @[:@863.4]
  input  [31:0] io_csr_dataOut, // @[:@864.4]
  input         io_csr_dataWrite, // @[:@864.4]
  output [31:0] io_csr_dataIn, // @[:@864.4]
  output [31:0] io_value // @[:@864.4]
);
  reg [31:0] reg$; // @[SimpleCSR.scala 35:20:@866.4]
  reg [31:0] _RAND_0;
  wire [31:0] _GEN_0; // @[SimpleCSR.scala 40:25:@869.4]
  assign _GEN_0 = io_csr_dataWrite ? io_csr_dataOut : reg$; // @[SimpleCSR.scala 40:25:@869.4]
  assign io_csr_dataIn = reg$; // @[SimpleCSR.scala 37:17:@867.4]
  assign io_value = reg$; // @[SimpleCSR.scala 38:12:@868.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg$ = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      reg$ <= 32'h0;
    end else begin
      if (io_csr_dataWrite) begin
        reg$ <= io_csr_dataOut;
      end
    end
  end
endmodule
module SetCSR( // @[:@873.2]
  input         clock, // @[:@874.4]
  input         reset, // @[:@875.4]
  input  [31:0] io_csr_dataOut, // @[:@876.4]
  input         io_csr_dataWrite, // @[:@876.4]
  output [31:0] io_csr_dataIn, // @[:@876.4]
  output [31:0] io_value, // @[:@876.4]
  input  [31:0] io_set // @[:@876.4]
);
  reg [31:0] reg$; // @[SetCSR.scala 36:20:@878.4]
  reg [31:0] _RAND_0;
  wire [31:0] _T_29; // @[SetCSR.scala 42:20:@882.6]
  wire [31:0] _T_30; // @[SetCSR.scala 42:17:@883.6]
  wire [31:0] _T_31; // @[SetCSR.scala 42:45:@884.6]
  wire [31:0] _T_32; // @[SetCSR.scala 44:16:@888.6]
  wire [31:0] _GEN_0; // @[SetCSR.scala 41:25:@881.4]
  assign _T_29 = ~ io_csr_dataOut; // @[SetCSR.scala 42:20:@882.6]
  assign _T_30 = reg$ & _T_29; // @[SetCSR.scala 42:17:@883.6]
  assign _T_31 = _T_30 | io_set; // @[SetCSR.scala 42:45:@884.6]
  assign _T_32 = reg$ | io_set; // @[SetCSR.scala 44:16:@888.6]
  assign _GEN_0 = io_csr_dataWrite ? _T_31 : _T_32; // @[SetCSR.scala 41:25:@881.4]
  assign io_csr_dataIn = reg$; // @[SetCSR.scala 38:17:@879.4]
  assign io_value = reg$; // @[SetCSR.scala 39:12:@880.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg$ = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      reg$ <= 32'h0;
    end else begin
      if (io_csr_dataWrite) begin
        reg$ <= _T_31;
      end else begin
        reg$ <= _T_32;
      end
    end
  end
endmodule
module InterruptController( // @[:@892.2]
  input         clock, // @[:@893.4]
  input         reset, // @[:@894.4]
  output        io_irq_readerDone, // @[:@895.4]
  output        io_irq_writerDone, // @[:@895.4]
  input         io_readBusy, // @[:@895.4]
  input         io_writeBusy, // @[:@895.4]
  input  [31:0] io_imr_dataOut, // @[:@895.4]
  input         io_imr_dataWrite, // @[:@895.4]
  output [31:0] io_imr_dataIn, // @[:@895.4]
  input  [31:0] io_isr_dataOut, // @[:@895.4]
  input         io_isr_dataWrite, // @[:@895.4]
  output [31:0] io_isr_dataIn // @[:@895.4]
);
  wire  SimpleCSR_clock; // @[SimpleCSR.scala 48:21:@897.4]
  wire  SimpleCSR_reset; // @[SimpleCSR.scala 48:21:@897.4]
  wire [31:0] SimpleCSR_io_csr_dataOut; // @[SimpleCSR.scala 48:21:@897.4]
  wire  SimpleCSR_io_csr_dataWrite; // @[SimpleCSR.scala 48:21:@897.4]
  wire [31:0] SimpleCSR_io_csr_dataIn; // @[SimpleCSR.scala 48:21:@897.4]
  wire [31:0] SimpleCSR_io_value; // @[SimpleCSR.scala 48:21:@897.4]
  wire  SetCSR_clock; // @[SetCSR.scala 51:21:@929.4]
  wire  SetCSR_reset; // @[SetCSR.scala 51:21:@929.4]
  wire [31:0] SetCSR_io_csr_dataOut; // @[SetCSR.scala 51:21:@929.4]
  wire  SetCSR_io_csr_dataWrite; // @[SetCSR.scala 51:21:@929.4]
  wire [31:0] SetCSR_io_csr_dataIn; // @[SetCSR.scala 51:21:@929.4]
  wire [31:0] SetCSR_io_value; // @[SetCSR.scala 51:21:@929.4]
  wire [31:0] SetCSR_io_set; // @[SetCSR.scala 51:21:@929.4]
  reg  readBusy; // @[InterruptController.scala 41:25:@906.4]
  reg [31:0] _RAND_0;
  reg  readBusyOld; // @[InterruptController.scala 42:28:@908.4]
  reg [31:0] _RAND_1;
  reg  writeBusy; // @[InterruptController.scala 44:26:@910.4]
  reg [31:0] _RAND_2;
  reg  writeBusyOld; // @[InterruptController.scala 45:29:@912.4]
  reg [31:0] _RAND_3;
  reg  writeBusyIrq; // @[InterruptController.scala 47:29:@914.4]
  reg [31:0] _RAND_4;
  reg  readBusyIrq; // @[InterruptController.scala 48:28:@915.4]
  reg [31:0] _RAND_5;
  wire  _T_59; // @[InterruptController.scala 50:35:@916.4]
  wire  _T_60; // @[InterruptController.scala 50:32:@917.4]
  wire [31:0] mask; // @[:@904.4 :@905.4]
  wire  _T_61; // @[InterruptController.scala 50:53:@918.4]
  wire  _T_62; // @[InterruptController.scala 50:46:@919.4]
  wire  _T_64; // @[InterruptController.scala 51:33:@921.4]
  wire  _T_65; // @[InterruptController.scala 51:30:@922.4]
  wire  _T_66; // @[InterruptController.scala 51:50:@923.4]
  wire  _T_67; // @[InterruptController.scala 51:43:@924.4]
  wire [1:0] irq; // @[Cat.scala 30:58:@926.4]
  wire [31:0] isr; // @[:@937.4 :@938.4]
  SimpleCSR SimpleCSR ( // @[SimpleCSR.scala 48:21:@897.4]
    .clock(SimpleCSR_clock),
    .reset(SimpleCSR_reset),
    .io_csr_dataOut(SimpleCSR_io_csr_dataOut),
    .io_csr_dataWrite(SimpleCSR_io_csr_dataWrite),
    .io_csr_dataIn(SimpleCSR_io_csr_dataIn),
    .io_value(SimpleCSR_io_value)
  );
  SetCSR SetCSR ( // @[SetCSR.scala 51:21:@929.4]
    .clock(SetCSR_clock),
    .reset(SetCSR_reset),
    .io_csr_dataOut(SetCSR_io_csr_dataOut),
    .io_csr_dataWrite(SetCSR_io_csr_dataWrite),
    .io_csr_dataIn(SetCSR_io_csr_dataIn),
    .io_value(SetCSR_io_value),
    .io_set(SetCSR_io_set)
  );
  assign _T_59 = writeBusy == 1'h0; // @[InterruptController.scala 50:35:@916.4]
  assign _T_60 = writeBusyOld & _T_59; // @[InterruptController.scala 50:32:@917.4]
  assign mask = SimpleCSR_io_value; // @[:@904.4 :@905.4]
  assign _T_61 = mask[0]; // @[InterruptController.scala 50:53:@918.4]
  assign _T_62 = _T_60 & _T_61; // @[InterruptController.scala 50:46:@919.4]
  assign _T_64 = readBusy == 1'h0; // @[InterruptController.scala 51:33:@921.4]
  assign _T_65 = readBusyOld & _T_64; // @[InterruptController.scala 51:30:@922.4]
  assign _T_66 = mask[1]; // @[InterruptController.scala 51:50:@923.4]
  assign _T_67 = _T_65 & _T_66; // @[InterruptController.scala 51:43:@924.4]
  assign irq = {readBusyIrq,writeBusyIrq}; // @[Cat.scala 30:58:@926.4]
  assign isr = SetCSR_io_value; // @[:@937.4 :@938.4]
  assign io_irq_readerDone = isr[1]; // @[InterruptController.scala 58:21:@942.4]
  assign io_irq_writerDone = isr[0]; // @[InterruptController.scala 57:21:@940.4]
  assign io_imr_dataIn = SimpleCSR_io_csr_dataIn; // @[SimpleCSR.scala 50:16:@900.4]
  assign io_isr_dataIn = SetCSR_io_csr_dataIn; // @[SetCSR.scala 55:16:@933.4]
  assign SimpleCSR_clock = clock; // @[:@898.4]
  assign SimpleCSR_reset = reset; // @[:@899.4]
  assign SimpleCSR_io_csr_dataOut = io_imr_dataOut; // @[SimpleCSR.scala 50:16:@902.4]
  assign SimpleCSR_io_csr_dataWrite = io_imr_dataWrite; // @[SimpleCSR.scala 50:16:@901.4]
  assign SetCSR_clock = clock; // @[:@930.4]
  assign SetCSR_reset = reset; // @[:@931.4]
  assign SetCSR_io_csr_dataOut = io_isr_dataOut; // @[SetCSR.scala 55:16:@935.4]
  assign SetCSR_io_csr_dataWrite = io_isr_dataWrite; // @[SetCSR.scala 55:16:@934.4]
  assign SetCSR_io_set = {{30'd0}, irq}; // @[SetCSR.scala 53:16:@932.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  readBusy = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  readBusyOld = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  writeBusy = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  writeBusyOld = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  writeBusyIrq = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  readBusyIrq = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    readBusy <= io_readBusy;
    readBusyOld <= readBusy;
    writeBusy <= io_writeBusy;
    writeBusyOld <= writeBusy;
    if (reset) begin
      writeBusyIrq <= 1'h0;
    end else begin
      writeBusyIrq <= _T_62;
    end
    if (reset) begin
      readBusyIrq <= 1'h0;
    end else begin
      readBusyIrq <= _T_67;
    end
  end
endmodule
module WorkerCSRWrapper( // @[:@1088.2]
  input         clock, // @[:@1089.4]
  input         reset, // @[:@1090.4]
  input  [31:0] io_csr_0_dataOut, // @[:@1091.4]
  input         io_csr_0_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_0_dataIn, // @[:@1091.4]
  output [31:0] io_csr_1_dataIn, // @[:@1091.4]
  input  [31:0] io_csr_2_dataOut, // @[:@1091.4]
  input         io_csr_2_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_2_dataIn, // @[:@1091.4]
  input  [31:0] io_csr_3_dataOut, // @[:@1091.4]
  input         io_csr_3_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_3_dataIn, // @[:@1091.4]
  input  [31:0] io_csr_4_dataOut, // @[:@1091.4]
  input         io_csr_4_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_4_dataIn, // @[:@1091.4]
  input  [31:0] io_csr_5_dataOut, // @[:@1091.4]
  input         io_csr_5_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_5_dataIn, // @[:@1091.4]
  input  [31:0] io_csr_6_dataOut, // @[:@1091.4]
  input         io_csr_6_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_6_dataIn, // @[:@1091.4]
  input  [31:0] io_csr_7_dataOut, // @[:@1091.4]
  input         io_csr_7_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_7_dataIn, // @[:@1091.4]
  input  [31:0] io_csr_8_dataOut, // @[:@1091.4]
  input         io_csr_8_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_8_dataIn, // @[:@1091.4]
  input  [31:0] io_csr_9_dataOut, // @[:@1091.4]
  input         io_csr_9_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_9_dataIn, // @[:@1091.4]
  input  [31:0] io_csr_10_dataOut, // @[:@1091.4]
  input         io_csr_10_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_10_dataIn, // @[:@1091.4]
  input  [31:0] io_csr_11_dataOut, // @[:@1091.4]
  input         io_csr_11_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_11_dataIn, // @[:@1091.4]
  input  [31:0] io_csr_12_dataOut, // @[:@1091.4]
  input         io_csr_12_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_12_dataIn, // @[:@1091.4]
  input  [31:0] io_csr_13_dataOut, // @[:@1091.4]
  input         io_csr_13_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_13_dataIn, // @[:@1091.4]
  input  [31:0] io_csr_14_dataOut, // @[:@1091.4]
  input         io_csr_14_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_14_dataIn, // @[:@1091.4]
  input  [31:0] io_csr_15_dataOut, // @[:@1091.4]
  input         io_csr_15_dataWrite, // @[:@1091.4]
  output [31:0] io_csr_15_dataIn, // @[:@1091.4]
  output        io_irq_readerDone, // @[:@1091.4]
  output        io_irq_writerDone, // @[:@1091.4]
  input         io_sync_readerSync, // @[:@1091.4]
  input         io_sync_writerSync, // @[:@1091.4]
  input         io_xferRead_done, // @[:@1091.4]
  output [31:0] io_xferRead_address, // @[:@1091.4]
  output [31:0] io_xferRead_length, // @[:@1091.4]
  output        io_xferRead_valid, // @[:@1091.4]
  input         io_xferWrite_done, // @[:@1091.4]
  output [31:0] io_xferWrite_length, // @[:@1091.4]
  output        io_xferWrite_valid, // @[:@1091.4]
  output        io_xferWrite_first // @[:@1091.4]
);
  wire  addressGeneratorRead_clock; // @[WorkerCSRWrapper.scala 41:36:@1093.4]
  wire  addressGeneratorRead_reset; // @[WorkerCSRWrapper.scala 41:36:@1093.4]
  wire  addressGeneratorRead_io_ctl_start; // @[WorkerCSRWrapper.scala 41:36:@1093.4]
  wire  addressGeneratorRead_io_ctl_busy; // @[WorkerCSRWrapper.scala 41:36:@1093.4]
  wire [31:0] addressGeneratorRead_io_ctl_startAddress; // @[WorkerCSRWrapper.scala 41:36:@1093.4]
  wire [31:0] addressGeneratorRead_io_ctl_lineLength; // @[WorkerCSRWrapper.scala 41:36:@1093.4]
  wire [31:0] addressGeneratorRead_io_ctl_lineCount; // @[WorkerCSRWrapper.scala 41:36:@1093.4]
  wire [31:0] addressGeneratorRead_io_ctl_lineGap; // @[WorkerCSRWrapper.scala 41:36:@1093.4]
  wire  addressGeneratorRead_io_xfer_done; // @[WorkerCSRWrapper.scala 41:36:@1093.4]
  wire [31:0] addressGeneratorRead_io_xfer_address; // @[WorkerCSRWrapper.scala 41:36:@1093.4]
  wire [31:0] addressGeneratorRead_io_xfer_length; // @[WorkerCSRWrapper.scala 41:36:@1093.4]
  wire  addressGeneratorRead_io_xfer_valid; // @[WorkerCSRWrapper.scala 41:36:@1093.4]
  wire  addressGeneratorRead_io_xfer_first; // @[WorkerCSRWrapper.scala 41:36:@1093.4]
  wire  transferSplitterRead_io_xferIn_done; // @[WorkerCSRWrapper.scala 42:36:@1096.4]
  wire [31:0] transferSplitterRead_io_xferIn_address; // @[WorkerCSRWrapper.scala 42:36:@1096.4]
  wire [31:0] transferSplitterRead_io_xferIn_length; // @[WorkerCSRWrapper.scala 42:36:@1096.4]
  wire  transferSplitterRead_io_xferIn_valid; // @[WorkerCSRWrapper.scala 42:36:@1096.4]
  wire  transferSplitterRead_io_xferOut_done; // @[WorkerCSRWrapper.scala 42:36:@1096.4]
  wire [31:0] transferSplitterRead_io_xferOut_address; // @[WorkerCSRWrapper.scala 42:36:@1096.4]
  wire [31:0] transferSplitterRead_io_xferOut_length; // @[WorkerCSRWrapper.scala 42:36:@1096.4]
  wire  transferSplitterRead_io_xferOut_valid; // @[WorkerCSRWrapper.scala 42:36:@1096.4]
  wire  addressGeneratorWrite_clock; // @[WorkerCSRWrapper.scala 44:37:@1099.4]
  wire  addressGeneratorWrite_reset; // @[WorkerCSRWrapper.scala 44:37:@1099.4]
  wire  addressGeneratorWrite_io_ctl_start; // @[WorkerCSRWrapper.scala 44:37:@1099.4]
  wire  addressGeneratorWrite_io_ctl_busy; // @[WorkerCSRWrapper.scala 44:37:@1099.4]
  wire [31:0] addressGeneratorWrite_io_ctl_startAddress; // @[WorkerCSRWrapper.scala 44:37:@1099.4]
  wire [31:0] addressGeneratorWrite_io_ctl_lineLength; // @[WorkerCSRWrapper.scala 44:37:@1099.4]
  wire [31:0] addressGeneratorWrite_io_ctl_lineCount; // @[WorkerCSRWrapper.scala 44:37:@1099.4]
  wire [31:0] addressGeneratorWrite_io_ctl_lineGap; // @[WorkerCSRWrapper.scala 44:37:@1099.4]
  wire  addressGeneratorWrite_io_xfer_done; // @[WorkerCSRWrapper.scala 44:37:@1099.4]
  wire [31:0] addressGeneratorWrite_io_xfer_address; // @[WorkerCSRWrapper.scala 44:37:@1099.4]
  wire [31:0] addressGeneratorWrite_io_xfer_length; // @[WorkerCSRWrapper.scala 44:37:@1099.4]
  wire  addressGeneratorWrite_io_xfer_valid; // @[WorkerCSRWrapper.scala 44:37:@1099.4]
  wire  addressGeneratorWrite_io_xfer_first; // @[WorkerCSRWrapper.scala 44:37:@1099.4]
  wire  transferSplitterWrite_clock; // @[WorkerCSRWrapper.scala 45:37:@1102.4]
  wire  transferSplitterWrite_reset; // @[WorkerCSRWrapper.scala 45:37:@1102.4]
  wire  transferSplitterWrite_io_xferIn_done; // @[WorkerCSRWrapper.scala 45:37:@1102.4]
  wire [31:0] transferSplitterWrite_io_xferIn_length; // @[WorkerCSRWrapper.scala 45:37:@1102.4]
  wire  transferSplitterWrite_io_xferIn_valid; // @[WorkerCSRWrapper.scala 45:37:@1102.4]
  wire  transferSplitterWrite_io_xferIn_first; // @[WorkerCSRWrapper.scala 45:37:@1102.4]
  wire  transferSplitterWrite_io_xferOut_done; // @[WorkerCSRWrapper.scala 45:37:@1102.4]
  wire [31:0] transferSplitterWrite_io_xferOut_length; // @[WorkerCSRWrapper.scala 45:37:@1102.4]
  wire  transferSplitterWrite_io_xferOut_valid; // @[WorkerCSRWrapper.scala 45:37:@1102.4]
  wire  transferSplitterWrite_io_xferOut_first; // @[WorkerCSRWrapper.scala 45:37:@1102.4]
  wire  ClearCSR_clock; // @[ClearCSR.scala 50:21:@1120.4]
  wire  ClearCSR_reset; // @[ClearCSR.scala 50:21:@1120.4]
  wire [31:0] ClearCSR_io_csr_dataOut; // @[ClearCSR.scala 50:21:@1120.4]
  wire  ClearCSR_io_csr_dataWrite; // @[ClearCSR.scala 50:21:@1120.4]
  wire [31:0] ClearCSR_io_csr_dataIn; // @[ClearCSR.scala 50:21:@1120.4]
  wire [31:0] ClearCSR_io_value; // @[ClearCSR.scala 50:21:@1120.4]
  wire [31:0] ClearCSR_io_clear; // @[ClearCSR.scala 50:21:@1120.4]
  wire  StatusCSR_clock; // @[StatusCSR.scala 42:21:@1129.4]
  wire [31:0] StatusCSR_io_csr_dataIn; // @[StatusCSR.scala 42:21:@1129.4]
  wire [31:0] StatusCSR_io_value; // @[StatusCSR.scala 42:21:@1129.4]
  wire  InterruptController_clock; // @[InterruptController.scala 63:22:@1137.4]
  wire  InterruptController_reset; // @[InterruptController.scala 63:22:@1137.4]
  wire  InterruptController_io_irq_readerDone; // @[InterruptController.scala 63:22:@1137.4]
  wire  InterruptController_io_irq_writerDone; // @[InterruptController.scala 63:22:@1137.4]
  wire  InterruptController_io_readBusy; // @[InterruptController.scala 63:22:@1137.4]
  wire  InterruptController_io_writeBusy; // @[InterruptController.scala 63:22:@1137.4]
  wire [31:0] InterruptController_io_imr_dataOut; // @[InterruptController.scala 63:22:@1137.4]
  wire  InterruptController_io_imr_dataWrite; // @[InterruptController.scala 63:22:@1137.4]
  wire [31:0] InterruptController_io_imr_dataIn; // @[InterruptController.scala 63:22:@1137.4]
  wire [31:0] InterruptController_io_isr_dataOut; // @[InterruptController.scala 63:22:@1137.4]
  wire  InterruptController_io_isr_dataWrite; // @[InterruptController.scala 63:22:@1137.4]
  wire [31:0] InterruptController_io_isr_dataIn; // @[InterruptController.scala 63:22:@1137.4]
  wire  SimpleCSR_clock; // @[SimpleCSR.scala 48:21:@1174.4]
  wire  SimpleCSR_reset; // @[SimpleCSR.scala 48:21:@1174.4]
  wire [31:0] SimpleCSR_io_csr_dataOut; // @[SimpleCSR.scala 48:21:@1174.4]
  wire  SimpleCSR_io_csr_dataWrite; // @[SimpleCSR.scala 48:21:@1174.4]
  wire [31:0] SimpleCSR_io_csr_dataIn; // @[SimpleCSR.scala 48:21:@1174.4]
  wire [31:0] SimpleCSR_io_value; // @[SimpleCSR.scala 48:21:@1174.4]
  wire  SimpleCSR_1_clock; // @[SimpleCSR.scala 48:21:@1182.4]
  wire  SimpleCSR_1_reset; // @[SimpleCSR.scala 48:21:@1182.4]
  wire [31:0] SimpleCSR_1_io_csr_dataOut; // @[SimpleCSR.scala 48:21:@1182.4]
  wire  SimpleCSR_1_io_csr_dataWrite; // @[SimpleCSR.scala 48:21:@1182.4]
  wire [31:0] SimpleCSR_1_io_csr_dataIn; // @[SimpleCSR.scala 48:21:@1182.4]
  wire [31:0] SimpleCSR_1_io_value; // @[SimpleCSR.scala 48:21:@1182.4]
  wire  SimpleCSR_2_clock; // @[SimpleCSR.scala 48:21:@1190.4]
  wire  SimpleCSR_2_reset; // @[SimpleCSR.scala 48:21:@1190.4]
  wire [31:0] SimpleCSR_2_io_csr_dataOut; // @[SimpleCSR.scala 48:21:@1190.4]
  wire  SimpleCSR_2_io_csr_dataWrite; // @[SimpleCSR.scala 48:21:@1190.4]
  wire [31:0] SimpleCSR_2_io_csr_dataIn; // @[SimpleCSR.scala 48:21:@1190.4]
  wire [31:0] SimpleCSR_2_io_value; // @[SimpleCSR.scala 48:21:@1190.4]
  wire  SimpleCSR_3_clock; // @[SimpleCSR.scala 48:21:@1198.4]
  wire  SimpleCSR_3_reset; // @[SimpleCSR.scala 48:21:@1198.4]
  wire [31:0] SimpleCSR_3_io_csr_dataOut; // @[SimpleCSR.scala 48:21:@1198.4]
  wire  SimpleCSR_3_io_csr_dataWrite; // @[SimpleCSR.scala 48:21:@1198.4]
  wire [31:0] SimpleCSR_3_io_csr_dataIn; // @[SimpleCSR.scala 48:21:@1198.4]
  wire [31:0] SimpleCSR_3_io_value; // @[SimpleCSR.scala 48:21:@1198.4]
  wire  SimpleCSR_4_clock; // @[SimpleCSR.scala 48:21:@1207.4]
  wire  SimpleCSR_4_reset; // @[SimpleCSR.scala 48:21:@1207.4]
  wire [31:0] SimpleCSR_4_io_csr_dataOut; // @[SimpleCSR.scala 48:21:@1207.4]
  wire  SimpleCSR_4_io_csr_dataWrite; // @[SimpleCSR.scala 48:21:@1207.4]
  wire [31:0] SimpleCSR_4_io_csr_dataIn; // @[SimpleCSR.scala 48:21:@1207.4]
  wire [31:0] SimpleCSR_4_io_value; // @[SimpleCSR.scala 48:21:@1207.4]
  wire  SimpleCSR_5_clock; // @[SimpleCSR.scala 48:21:@1215.4]
  wire  SimpleCSR_5_reset; // @[SimpleCSR.scala 48:21:@1215.4]
  wire [31:0] SimpleCSR_5_io_csr_dataOut; // @[SimpleCSR.scala 48:21:@1215.4]
  wire  SimpleCSR_5_io_csr_dataWrite; // @[SimpleCSR.scala 48:21:@1215.4]
  wire [31:0] SimpleCSR_5_io_csr_dataIn; // @[SimpleCSR.scala 48:21:@1215.4]
  wire [31:0] SimpleCSR_5_io_value; // @[SimpleCSR.scala 48:21:@1215.4]
  wire  SimpleCSR_6_clock; // @[SimpleCSR.scala 48:21:@1223.4]
  wire  SimpleCSR_6_reset; // @[SimpleCSR.scala 48:21:@1223.4]
  wire [31:0] SimpleCSR_6_io_csr_dataOut; // @[SimpleCSR.scala 48:21:@1223.4]
  wire  SimpleCSR_6_io_csr_dataWrite; // @[SimpleCSR.scala 48:21:@1223.4]
  wire [31:0] SimpleCSR_6_io_csr_dataIn; // @[SimpleCSR.scala 48:21:@1223.4]
  wire [31:0] SimpleCSR_6_io_value; // @[SimpleCSR.scala 48:21:@1223.4]
  wire  SimpleCSR_7_clock; // @[SimpleCSR.scala 48:21:@1231.4]
  wire  SimpleCSR_7_reset; // @[SimpleCSR.scala 48:21:@1231.4]
  wire [31:0] SimpleCSR_7_io_csr_dataOut; // @[SimpleCSR.scala 48:21:@1231.4]
  wire  SimpleCSR_7_io_csr_dataWrite; // @[SimpleCSR.scala 48:21:@1231.4]
  wire [31:0] SimpleCSR_7_io_csr_dataIn; // @[SimpleCSR.scala 48:21:@1231.4]
  wire [31:0] SimpleCSR_7_io_value; // @[SimpleCSR.scala 48:21:@1231.4]
  wire  SimpleCSR_8_clock; // @[SimpleCSR.scala 48:21:@1239.4]
  wire  SimpleCSR_8_reset; // @[SimpleCSR.scala 48:21:@1239.4]
  wire [31:0] SimpleCSR_8_io_csr_dataOut; // @[SimpleCSR.scala 48:21:@1239.4]
  wire  SimpleCSR_8_io_csr_dataWrite; // @[SimpleCSR.scala 48:21:@1239.4]
  wire [31:0] SimpleCSR_8_io_csr_dataIn; // @[SimpleCSR.scala 48:21:@1239.4]
  wire [31:0] SimpleCSR_8_io_value; // @[SimpleCSR.scala 48:21:@1239.4]
  wire  SimpleCSR_9_clock; // @[SimpleCSR.scala 48:21:@1246.4]
  wire  SimpleCSR_9_reset; // @[SimpleCSR.scala 48:21:@1246.4]
  wire [31:0] SimpleCSR_9_io_csr_dataOut; // @[SimpleCSR.scala 48:21:@1246.4]
  wire  SimpleCSR_9_io_csr_dataWrite; // @[SimpleCSR.scala 48:21:@1246.4]
  wire [31:0] SimpleCSR_9_io_csr_dataIn; // @[SimpleCSR.scala 48:21:@1246.4]
  wire [31:0] SimpleCSR_9_io_value; // @[SimpleCSR.scala 48:21:@1246.4]
  wire  SimpleCSR_10_clock; // @[SimpleCSR.scala 48:21:@1253.4]
  wire  SimpleCSR_10_reset; // @[SimpleCSR.scala 48:21:@1253.4]
  wire [31:0] SimpleCSR_10_io_csr_dataOut; // @[SimpleCSR.scala 48:21:@1253.4]
  wire  SimpleCSR_10_io_csr_dataWrite; // @[SimpleCSR.scala 48:21:@1253.4]
  wire [31:0] SimpleCSR_10_io_csr_dataIn; // @[SimpleCSR.scala 48:21:@1253.4]
  wire [31:0] SimpleCSR_10_io_value; // @[SimpleCSR.scala 48:21:@1253.4]
  wire  SimpleCSR_11_clock; // @[SimpleCSR.scala 48:21:@1260.4]
  wire  SimpleCSR_11_reset; // @[SimpleCSR.scala 48:21:@1260.4]
  wire [31:0] SimpleCSR_11_io_csr_dataOut; // @[SimpleCSR.scala 48:21:@1260.4]
  wire  SimpleCSR_11_io_csr_dataWrite; // @[SimpleCSR.scala 48:21:@1260.4]
  wire [31:0] SimpleCSR_11_io_csr_dataIn; // @[SimpleCSR.scala 48:21:@1260.4]
  wire [31:0] SimpleCSR_11_io_value; // @[SimpleCSR.scala 48:21:@1260.4]
  reg [1:0] status; // @[WorkerCSRWrapper.scala 47:23:@1106.4]
  reg [31:0] _RAND_0;
  reg  readerSync; // @[WorkerCSRWrapper.scala 49:27:@1108.4]
  reg [31:0] _RAND_1;
  reg  readerSyncOld; // @[WorkerCSRWrapper.scala 50:30:@1110.4]
  reg [31:0] _RAND_2;
  reg  writerSync; // @[WorkerCSRWrapper.scala 52:27:@1112.4]
  reg [31:0] _RAND_3;
  reg  writerSyncOld; // @[WorkerCSRWrapper.scala 53:30:@1114.4]
  reg [31:0] _RAND_4;
  reg  readerStart; // @[WorkerCSRWrapper.scala 55:28:@1116.4]
  reg [31:0] _RAND_5;
  reg  writerStart; // @[WorkerCSRWrapper.scala 56:28:@1117.4]
  reg [31:0] _RAND_6;
  wire [1:0] _T_203; // @[Cat.scala 30:58:@1152.4]
  wire [31:0] control; // @[WorkerCSRWrapper.scala 58:21:@1118.4 WorkerCSRWrapper.scala 61:11:@1128.4]
  wire  _T_204; // @[WorkerCSRWrapper.scala 68:56:@1153.4]
  wire  _T_205; // @[WorkerCSRWrapper.scala 68:68:@1154.4]
  wire [1:0] _T_206; // @[Cat.scala 30:58:@1155.4]
  wire [1:0] _T_207; // @[WorkerCSRWrapper.scala 68:44:@1156.4]
  wire [1:0] clear; // @[WorkerCSRWrapper.scala 68:42:@1157.4]
  wire  _T_210; // @[WorkerCSRWrapper.scala 70:20:@1159.4]
  wire  _T_211; // @[WorkerCSRWrapper.scala 70:35:@1160.4]
  wire  _T_212; // @[WorkerCSRWrapper.scala 70:60:@1161.4]
  wire  _T_213; // @[WorkerCSRWrapper.scala 70:50:@1162.4]
  wire  _T_214; // @[WorkerCSRWrapper.scala 70:75:@1163.4]
  wire  _T_215; // @[WorkerCSRWrapper.scala 70:65:@1164.4]
  wire  _T_217; // @[WorkerCSRWrapper.scala 71:20:@1166.4]
  wire  _T_218; // @[WorkerCSRWrapper.scala 71:35:@1167.4]
  wire  _T_219; // @[WorkerCSRWrapper.scala 71:60:@1168.4]
  wire  _T_220; // @[WorkerCSRWrapper.scala 71:50:@1169.4]
  wire  _T_221; // @[WorkerCSRWrapper.scala 71:75:@1170.4]
  wire  _T_222; // @[WorkerCSRWrapper.scala 71:65:@1171.4]
  AddressGenerator addressGeneratorRead ( // @[WorkerCSRWrapper.scala 41:36:@1093.4]
    .clock(addressGeneratorRead_clock),
    .reset(addressGeneratorRead_reset),
    .io_ctl_start(addressGeneratorRead_io_ctl_start),
    .io_ctl_busy(addressGeneratorRead_io_ctl_busy),
    .io_ctl_startAddress(addressGeneratorRead_io_ctl_startAddress),
    .io_ctl_lineLength(addressGeneratorRead_io_ctl_lineLength),
    .io_ctl_lineCount(addressGeneratorRead_io_ctl_lineCount),
    .io_ctl_lineGap(addressGeneratorRead_io_ctl_lineGap),
    .io_xfer_done(addressGeneratorRead_io_xfer_done),
    .io_xfer_address(addressGeneratorRead_io_xfer_address),
    .io_xfer_length(addressGeneratorRead_io_xfer_length),
    .io_xfer_valid(addressGeneratorRead_io_xfer_valid),
    .io_xfer_first(addressGeneratorRead_io_xfer_first)
  );
  TransferSplitter transferSplitterRead ( // @[WorkerCSRWrapper.scala 42:36:@1096.4]
    .io_xferIn_done(transferSplitterRead_io_xferIn_done),
    .io_xferIn_address(transferSplitterRead_io_xferIn_address),
    .io_xferIn_length(transferSplitterRead_io_xferIn_length),
    .io_xferIn_valid(transferSplitterRead_io_xferIn_valid),
    .io_xferOut_done(transferSplitterRead_io_xferOut_done),
    .io_xferOut_address(transferSplitterRead_io_xferOut_address),
    .io_xferOut_length(transferSplitterRead_io_xferOut_length),
    .io_xferOut_valid(transferSplitterRead_io_xferOut_valid)
  );
  AddressGenerator addressGeneratorWrite ( // @[WorkerCSRWrapper.scala 44:37:@1099.4]
    .clock(addressGeneratorWrite_clock),
    .reset(addressGeneratorWrite_reset),
    .io_ctl_start(addressGeneratorWrite_io_ctl_start),
    .io_ctl_busy(addressGeneratorWrite_io_ctl_busy),
    .io_ctl_startAddress(addressGeneratorWrite_io_ctl_startAddress),
    .io_ctl_lineLength(addressGeneratorWrite_io_ctl_lineLength),
    .io_ctl_lineCount(addressGeneratorWrite_io_ctl_lineCount),
    .io_ctl_lineGap(addressGeneratorWrite_io_ctl_lineGap),
    .io_xfer_done(addressGeneratorWrite_io_xfer_done),
    .io_xfer_address(addressGeneratorWrite_io_xfer_address),
    .io_xfer_length(addressGeneratorWrite_io_xfer_length),
    .io_xfer_valid(addressGeneratorWrite_io_xfer_valid),
    .io_xfer_first(addressGeneratorWrite_io_xfer_first)
  );
  TransferSplitter_1 transferSplitterWrite ( // @[WorkerCSRWrapper.scala 45:37:@1102.4]
    .clock(transferSplitterWrite_clock),
    .reset(transferSplitterWrite_reset),
    .io_xferIn_done(transferSplitterWrite_io_xferIn_done),
    .io_xferIn_length(transferSplitterWrite_io_xferIn_length),
    .io_xferIn_valid(transferSplitterWrite_io_xferIn_valid),
    .io_xferIn_first(transferSplitterWrite_io_xferIn_first),
    .io_xferOut_done(transferSplitterWrite_io_xferOut_done),
    .io_xferOut_length(transferSplitterWrite_io_xferOut_length),
    .io_xferOut_valid(transferSplitterWrite_io_xferOut_valid),
    .io_xferOut_first(transferSplitterWrite_io_xferOut_first)
  );
  ClearCSR ClearCSR ( // @[ClearCSR.scala 50:21:@1120.4]
    .clock(ClearCSR_clock),
    .reset(ClearCSR_reset),
    .io_csr_dataOut(ClearCSR_io_csr_dataOut),
    .io_csr_dataWrite(ClearCSR_io_csr_dataWrite),
    .io_csr_dataIn(ClearCSR_io_csr_dataIn),
    .io_value(ClearCSR_io_value),
    .io_clear(ClearCSR_io_clear)
  );
  StatusCSR StatusCSR ( // @[StatusCSR.scala 42:21:@1129.4]
    .clock(StatusCSR_clock),
    .io_csr_dataIn(StatusCSR_io_csr_dataIn),
    .io_value(StatusCSR_io_value)
  );
  InterruptController InterruptController ( // @[InterruptController.scala 63:22:@1137.4]
    .clock(InterruptController_clock),
    .reset(InterruptController_reset),
    .io_irq_readerDone(InterruptController_io_irq_readerDone),
    .io_irq_writerDone(InterruptController_io_irq_writerDone),
    .io_readBusy(InterruptController_io_readBusy),
    .io_writeBusy(InterruptController_io_writeBusy),
    .io_imr_dataOut(InterruptController_io_imr_dataOut),
    .io_imr_dataWrite(InterruptController_io_imr_dataWrite),
    .io_imr_dataIn(InterruptController_io_imr_dataIn),
    .io_isr_dataOut(InterruptController_io_isr_dataOut),
    .io_isr_dataWrite(InterruptController_io_isr_dataWrite),
    .io_isr_dataIn(InterruptController_io_isr_dataIn)
  );
  SimpleCSR SimpleCSR ( // @[SimpleCSR.scala 48:21:@1174.4]
    .clock(SimpleCSR_clock),
    .reset(SimpleCSR_reset),
    .io_csr_dataOut(SimpleCSR_io_csr_dataOut),
    .io_csr_dataWrite(SimpleCSR_io_csr_dataWrite),
    .io_csr_dataIn(SimpleCSR_io_csr_dataIn),
    .io_value(SimpleCSR_io_value)
  );
  SimpleCSR SimpleCSR_1 ( // @[SimpleCSR.scala 48:21:@1182.4]
    .clock(SimpleCSR_1_clock),
    .reset(SimpleCSR_1_reset),
    .io_csr_dataOut(SimpleCSR_1_io_csr_dataOut),
    .io_csr_dataWrite(SimpleCSR_1_io_csr_dataWrite),
    .io_csr_dataIn(SimpleCSR_1_io_csr_dataIn),
    .io_value(SimpleCSR_1_io_value)
  );
  SimpleCSR SimpleCSR_2 ( // @[SimpleCSR.scala 48:21:@1190.4]
    .clock(SimpleCSR_2_clock),
    .reset(SimpleCSR_2_reset),
    .io_csr_dataOut(SimpleCSR_2_io_csr_dataOut),
    .io_csr_dataWrite(SimpleCSR_2_io_csr_dataWrite),
    .io_csr_dataIn(SimpleCSR_2_io_csr_dataIn),
    .io_value(SimpleCSR_2_io_value)
  );
  SimpleCSR SimpleCSR_3 ( // @[SimpleCSR.scala 48:21:@1198.4]
    .clock(SimpleCSR_3_clock),
    .reset(SimpleCSR_3_reset),
    .io_csr_dataOut(SimpleCSR_3_io_csr_dataOut),
    .io_csr_dataWrite(SimpleCSR_3_io_csr_dataWrite),
    .io_csr_dataIn(SimpleCSR_3_io_csr_dataIn),
    .io_value(SimpleCSR_3_io_value)
  );
  SimpleCSR SimpleCSR_4 ( // @[SimpleCSR.scala 48:21:@1207.4]
    .clock(SimpleCSR_4_clock),
    .reset(SimpleCSR_4_reset),
    .io_csr_dataOut(SimpleCSR_4_io_csr_dataOut),
    .io_csr_dataWrite(SimpleCSR_4_io_csr_dataWrite),
    .io_csr_dataIn(SimpleCSR_4_io_csr_dataIn),
    .io_value(SimpleCSR_4_io_value)
  );
  SimpleCSR SimpleCSR_5 ( // @[SimpleCSR.scala 48:21:@1215.4]
    .clock(SimpleCSR_5_clock),
    .reset(SimpleCSR_5_reset),
    .io_csr_dataOut(SimpleCSR_5_io_csr_dataOut),
    .io_csr_dataWrite(SimpleCSR_5_io_csr_dataWrite),
    .io_csr_dataIn(SimpleCSR_5_io_csr_dataIn),
    .io_value(SimpleCSR_5_io_value)
  );
  SimpleCSR SimpleCSR_6 ( // @[SimpleCSR.scala 48:21:@1223.4]
    .clock(SimpleCSR_6_clock),
    .reset(SimpleCSR_6_reset),
    .io_csr_dataOut(SimpleCSR_6_io_csr_dataOut),
    .io_csr_dataWrite(SimpleCSR_6_io_csr_dataWrite),
    .io_csr_dataIn(SimpleCSR_6_io_csr_dataIn),
    .io_value(SimpleCSR_6_io_value)
  );
  SimpleCSR SimpleCSR_7 ( // @[SimpleCSR.scala 48:21:@1231.4]
    .clock(SimpleCSR_7_clock),
    .reset(SimpleCSR_7_reset),
    .io_csr_dataOut(SimpleCSR_7_io_csr_dataOut),
    .io_csr_dataWrite(SimpleCSR_7_io_csr_dataWrite),
    .io_csr_dataIn(SimpleCSR_7_io_csr_dataIn),
    .io_value(SimpleCSR_7_io_value)
  );
  SimpleCSR SimpleCSR_8 ( // @[SimpleCSR.scala 48:21:@1239.4]
    .clock(SimpleCSR_8_clock),
    .reset(SimpleCSR_8_reset),
    .io_csr_dataOut(SimpleCSR_8_io_csr_dataOut),
    .io_csr_dataWrite(SimpleCSR_8_io_csr_dataWrite),
    .io_csr_dataIn(SimpleCSR_8_io_csr_dataIn),
    .io_value(SimpleCSR_8_io_value)
  );
  SimpleCSR SimpleCSR_9 ( // @[SimpleCSR.scala 48:21:@1246.4]
    .clock(SimpleCSR_9_clock),
    .reset(SimpleCSR_9_reset),
    .io_csr_dataOut(SimpleCSR_9_io_csr_dataOut),
    .io_csr_dataWrite(SimpleCSR_9_io_csr_dataWrite),
    .io_csr_dataIn(SimpleCSR_9_io_csr_dataIn),
    .io_value(SimpleCSR_9_io_value)
  );
  SimpleCSR SimpleCSR_10 ( // @[SimpleCSR.scala 48:21:@1253.4]
    .clock(SimpleCSR_10_clock),
    .reset(SimpleCSR_10_reset),
    .io_csr_dataOut(SimpleCSR_10_io_csr_dataOut),
    .io_csr_dataWrite(SimpleCSR_10_io_csr_dataWrite),
    .io_csr_dataIn(SimpleCSR_10_io_csr_dataIn),
    .io_value(SimpleCSR_10_io_value)
  );
  SimpleCSR SimpleCSR_11 ( // @[SimpleCSR.scala 48:21:@1260.4]
    .clock(SimpleCSR_11_clock),
    .reset(SimpleCSR_11_reset),
    .io_csr_dataOut(SimpleCSR_11_io_csr_dataOut),
    .io_csr_dataWrite(SimpleCSR_11_io_csr_dataWrite),
    .io_csr_dataIn(SimpleCSR_11_io_csr_dataIn),
    .io_value(SimpleCSR_11_io_value)
  );
  assign _T_203 = {readerStart,writerStart}; // @[Cat.scala 30:58:@1152.4]
  assign control = ClearCSR_io_value; // @[WorkerCSRWrapper.scala 58:21:@1118.4 WorkerCSRWrapper.scala 61:11:@1128.4]
  assign _T_204 = control[5]; // @[WorkerCSRWrapper.scala 68:56:@1153.4]
  assign _T_205 = control[4]; // @[WorkerCSRWrapper.scala 68:68:@1154.4]
  assign _T_206 = {_T_204,_T_205}; // @[Cat.scala 30:58:@1155.4]
  assign _T_207 = ~ _T_206; // @[WorkerCSRWrapper.scala 68:44:@1156.4]
  assign clear = _T_203 & _T_207; // @[WorkerCSRWrapper.scala 68:42:@1157.4]
  assign _T_210 = readerSyncOld == 1'h0; // @[WorkerCSRWrapper.scala 70:20:@1159.4]
  assign _T_211 = _T_210 & readerSync; // @[WorkerCSRWrapper.scala 70:35:@1160.4]
  assign _T_212 = control[3]; // @[WorkerCSRWrapper.scala 70:60:@1161.4]
  assign _T_213 = _T_211 | _T_212; // @[WorkerCSRWrapper.scala 70:50:@1162.4]
  assign _T_214 = control[1]; // @[WorkerCSRWrapper.scala 70:75:@1163.4]
  assign _T_215 = _T_213 & _T_214; // @[WorkerCSRWrapper.scala 70:65:@1164.4]
  assign _T_217 = writerSyncOld == 1'h0; // @[WorkerCSRWrapper.scala 71:20:@1166.4]
  assign _T_218 = _T_217 & writerSync; // @[WorkerCSRWrapper.scala 71:35:@1167.4]
  assign _T_219 = control[2]; // @[WorkerCSRWrapper.scala 71:60:@1168.4]
  assign _T_220 = _T_218 | _T_219; // @[WorkerCSRWrapper.scala 71:50:@1169.4]
  assign _T_221 = control[0]; // @[WorkerCSRWrapper.scala 71:75:@1170.4]
  assign _T_222 = _T_220 & _T_221; // @[WorkerCSRWrapper.scala 71:65:@1171.4]
  assign io_csr_0_dataIn = ClearCSR_io_csr_dataIn; // @[ClearCSR.scala 54:16:@1124.4]
  assign io_csr_1_dataIn = StatusCSR_io_csr_dataIn; // @[StatusCSR.scala 44:16:@1132.4]
  assign io_csr_2_dataIn = InterruptController_io_imr_dataIn; // @[InterruptController.scala 68:17:@1142.4]
  assign io_csr_3_dataIn = InterruptController_io_isr_dataIn; // @[InterruptController.scala 69:17:@1146.4]
  assign io_csr_4_dataIn = SimpleCSR_io_csr_dataIn; // @[SimpleCSR.scala 50:16:@1177.4]
  assign io_csr_5_dataIn = SimpleCSR_1_io_csr_dataIn; // @[SimpleCSR.scala 50:16:@1185.4]
  assign io_csr_6_dataIn = SimpleCSR_2_io_csr_dataIn; // @[SimpleCSR.scala 50:16:@1193.4]
  assign io_csr_7_dataIn = SimpleCSR_3_io_csr_dataIn; // @[SimpleCSR.scala 50:16:@1201.4]
  assign io_csr_8_dataIn = SimpleCSR_4_io_csr_dataIn; // @[SimpleCSR.scala 50:16:@1210.4]
  assign io_csr_9_dataIn = SimpleCSR_5_io_csr_dataIn; // @[SimpleCSR.scala 50:16:@1218.4]
  assign io_csr_10_dataIn = SimpleCSR_6_io_csr_dataIn; // @[SimpleCSR.scala 50:16:@1226.4]
  assign io_csr_11_dataIn = SimpleCSR_7_io_csr_dataIn; // @[SimpleCSR.scala 50:16:@1234.4]
  assign io_csr_12_dataIn = SimpleCSR_8_io_csr_dataIn; // @[SimpleCSR.scala 50:16:@1242.4]
  assign io_csr_13_dataIn = SimpleCSR_9_io_csr_dataIn; // @[SimpleCSR.scala 50:16:@1249.4]
  assign io_csr_14_dataIn = SimpleCSR_10_io_csr_dataIn; // @[SimpleCSR.scala 50:16:@1256.4]
  assign io_csr_15_dataIn = SimpleCSR_11_io_csr_dataIn; // @[SimpleCSR.scala 50:16:@1263.4]
  assign io_irq_readerDone = InterruptController_io_irq_readerDone; // @[WorkerCSRWrapper.scala 65:10:@1151.4]
  assign io_irq_writerDone = InterruptController_io_irq_writerDone; // @[WorkerCSRWrapper.scala 65:10:@1150.4]
  assign io_xferRead_address = transferSplitterRead_io_xferOut_address; // @[WorkerCSRWrapper.scala 90:15:@1275.4]
  assign io_xferRead_length = transferSplitterRead_io_xferOut_length; // @[WorkerCSRWrapper.scala 90:15:@1274.4]
  assign io_xferRead_valid = transferSplitterRead_io_xferOut_valid; // @[WorkerCSRWrapper.scala 90:15:@1273.4]
  assign io_xferWrite_length = transferSplitterWrite_io_xferOut_length; // @[WorkerCSRWrapper.scala 93:16:@1284.4]
  assign io_xferWrite_valid = transferSplitterWrite_io_xferOut_valid; // @[WorkerCSRWrapper.scala 93:16:@1283.4]
  assign io_xferWrite_first = transferSplitterWrite_io_xferOut_first; // @[WorkerCSRWrapper.scala 93:16:@1282.4]
  assign addressGeneratorRead_clock = clock; // @[:@1094.4]
  assign addressGeneratorRead_reset = reset; // @[:@1095.4]
  assign addressGeneratorRead_io_ctl_start = readerStart; // @[WorkerCSRWrapper.scala 73:37:@1173.4]
  assign addressGeneratorRead_io_ctl_startAddress = SimpleCSR_io_value; // @[WorkerCSRWrapper.scala 74:44:@1181.4]
  assign addressGeneratorRead_io_ctl_lineLength = SimpleCSR_1_io_value; // @[WorkerCSRWrapper.scala 75:42:@1189.4]
  assign addressGeneratorRead_io_ctl_lineCount = SimpleCSR_2_io_value; // @[WorkerCSRWrapper.scala 76:41:@1197.4]
  assign addressGeneratorRead_io_ctl_lineGap = SimpleCSR_3_io_value; // @[WorkerCSRWrapper.scala 77:39:@1205.4]
  assign addressGeneratorRead_io_xfer_done = transferSplitterRead_io_xferIn_done; // @[WorkerCSRWrapper.scala 89:34:@1271.4]
  assign transferSplitterRead_io_xferIn_address = addressGeneratorRead_io_xfer_address; // @[WorkerCSRWrapper.scala 89:34:@1270.4]
  assign transferSplitterRead_io_xferIn_length = addressGeneratorRead_io_xfer_length; // @[WorkerCSRWrapper.scala 89:34:@1269.4]
  assign transferSplitterRead_io_xferIn_valid = addressGeneratorRead_io_xfer_valid; // @[WorkerCSRWrapper.scala 89:34:@1268.4]
  assign transferSplitterRead_io_xferOut_done = io_xferRead_done; // @[WorkerCSRWrapper.scala 90:15:@1276.4]
  assign addressGeneratorWrite_clock = clock; // @[:@1100.4]
  assign addressGeneratorWrite_reset = reset; // @[:@1101.4]
  assign addressGeneratorWrite_io_ctl_start = writerStart; // @[WorkerCSRWrapper.scala 79:38:@1206.4]
  assign addressGeneratorWrite_io_ctl_startAddress = SimpleCSR_4_io_value; // @[WorkerCSRWrapper.scala 80:45:@1214.4]
  assign addressGeneratorWrite_io_ctl_lineLength = SimpleCSR_5_io_value; // @[WorkerCSRWrapper.scala 81:43:@1222.4]
  assign addressGeneratorWrite_io_ctl_lineCount = SimpleCSR_6_io_value; // @[WorkerCSRWrapper.scala 82:42:@1230.4]
  assign addressGeneratorWrite_io_ctl_lineGap = SimpleCSR_7_io_value; // @[WorkerCSRWrapper.scala 83:40:@1238.4]
  assign addressGeneratorWrite_io_xfer_done = transferSplitterWrite_io_xferIn_done; // @[WorkerCSRWrapper.scala 92:35:@1281.4]
  assign transferSplitterWrite_clock = clock; // @[:@1103.4]
  assign transferSplitterWrite_reset = reset; // @[:@1104.4]
  assign transferSplitterWrite_io_xferIn_length = addressGeneratorWrite_io_xfer_length; // @[WorkerCSRWrapper.scala 92:35:@1279.4]
  assign transferSplitterWrite_io_xferIn_valid = addressGeneratorWrite_io_xfer_valid; // @[WorkerCSRWrapper.scala 92:35:@1278.4]
  assign transferSplitterWrite_io_xferIn_first = addressGeneratorWrite_io_xfer_first; // @[WorkerCSRWrapper.scala 92:35:@1277.4]
  assign transferSplitterWrite_io_xferOut_done = io_xferWrite_done; // @[WorkerCSRWrapper.scala 93:16:@1286.4]
  assign ClearCSR_clock = clock; // @[:@1121.4]
  assign ClearCSR_reset = reset; // @[:@1122.4]
  assign ClearCSR_io_csr_dataOut = io_csr_0_dataOut; // @[ClearCSR.scala 54:16:@1126.4]
  assign ClearCSR_io_csr_dataWrite = io_csr_0_dataWrite; // @[ClearCSR.scala 54:16:@1125.4]
  assign ClearCSR_io_clear = {{30'd0}, clear}; // @[ClearCSR.scala 52:18:@1123.4]
  assign StatusCSR_clock = clock; // @[:@1130.4]
  assign StatusCSR_io_value = {{30'd0}, status}; // @[StatusCSR.scala 46:18:@1136.4]
  assign InterruptController_clock = clock; // @[:@1138.4]
  assign InterruptController_reset = reset; // @[:@1139.4]
  assign InterruptController_io_readBusy = addressGeneratorRead_io_ctl_busy; // @[InterruptController.scala 65:22:@1140.4]
  assign InterruptController_io_writeBusy = addressGeneratorWrite_io_ctl_busy; // @[InterruptController.scala 66:23:@1141.4]
  assign InterruptController_io_imr_dataOut = io_csr_2_dataOut; // @[InterruptController.scala 68:17:@1144.4]
  assign InterruptController_io_imr_dataWrite = io_csr_2_dataWrite; // @[InterruptController.scala 68:17:@1143.4]
  assign InterruptController_io_isr_dataOut = io_csr_3_dataOut; // @[InterruptController.scala 69:17:@1148.4]
  assign InterruptController_io_isr_dataWrite = io_csr_3_dataWrite; // @[InterruptController.scala 69:17:@1147.4]
  assign SimpleCSR_clock = clock; // @[:@1175.4]
  assign SimpleCSR_reset = reset; // @[:@1176.4]
  assign SimpleCSR_io_csr_dataOut = io_csr_4_dataOut; // @[SimpleCSR.scala 50:16:@1179.4]
  assign SimpleCSR_io_csr_dataWrite = io_csr_4_dataWrite; // @[SimpleCSR.scala 50:16:@1178.4]
  assign SimpleCSR_1_clock = clock; // @[:@1183.4]
  assign SimpleCSR_1_reset = reset; // @[:@1184.4]
  assign SimpleCSR_1_io_csr_dataOut = io_csr_5_dataOut; // @[SimpleCSR.scala 50:16:@1187.4]
  assign SimpleCSR_1_io_csr_dataWrite = io_csr_5_dataWrite; // @[SimpleCSR.scala 50:16:@1186.4]
  assign SimpleCSR_2_clock = clock; // @[:@1191.4]
  assign SimpleCSR_2_reset = reset; // @[:@1192.4]
  assign SimpleCSR_2_io_csr_dataOut = io_csr_6_dataOut; // @[SimpleCSR.scala 50:16:@1195.4]
  assign SimpleCSR_2_io_csr_dataWrite = io_csr_6_dataWrite; // @[SimpleCSR.scala 50:16:@1194.4]
  assign SimpleCSR_3_clock = clock; // @[:@1199.4]
  assign SimpleCSR_3_reset = reset; // @[:@1200.4]
  assign SimpleCSR_3_io_csr_dataOut = io_csr_7_dataOut; // @[SimpleCSR.scala 50:16:@1203.4]
  assign SimpleCSR_3_io_csr_dataWrite = io_csr_7_dataWrite; // @[SimpleCSR.scala 50:16:@1202.4]
  assign SimpleCSR_4_clock = clock; // @[:@1208.4]
  assign SimpleCSR_4_reset = reset; // @[:@1209.4]
  assign SimpleCSR_4_io_csr_dataOut = io_csr_8_dataOut; // @[SimpleCSR.scala 50:16:@1212.4]
  assign SimpleCSR_4_io_csr_dataWrite = io_csr_8_dataWrite; // @[SimpleCSR.scala 50:16:@1211.4]
  assign SimpleCSR_5_clock = clock; // @[:@1216.4]
  assign SimpleCSR_5_reset = reset; // @[:@1217.4]
  assign SimpleCSR_5_io_csr_dataOut = io_csr_9_dataOut; // @[SimpleCSR.scala 50:16:@1220.4]
  assign SimpleCSR_5_io_csr_dataWrite = io_csr_9_dataWrite; // @[SimpleCSR.scala 50:16:@1219.4]
  assign SimpleCSR_6_clock = clock; // @[:@1224.4]
  assign SimpleCSR_6_reset = reset; // @[:@1225.4]
  assign SimpleCSR_6_io_csr_dataOut = io_csr_10_dataOut; // @[SimpleCSR.scala 50:16:@1228.4]
  assign SimpleCSR_6_io_csr_dataWrite = io_csr_10_dataWrite; // @[SimpleCSR.scala 50:16:@1227.4]
  assign SimpleCSR_7_clock = clock; // @[:@1232.4]
  assign SimpleCSR_7_reset = reset; // @[:@1233.4]
  assign SimpleCSR_7_io_csr_dataOut = io_csr_11_dataOut; // @[SimpleCSR.scala 50:16:@1236.4]
  assign SimpleCSR_7_io_csr_dataWrite = io_csr_11_dataWrite; // @[SimpleCSR.scala 50:16:@1235.4]
  assign SimpleCSR_8_clock = clock; // @[:@1240.4]
  assign SimpleCSR_8_reset = reset; // @[:@1241.4]
  assign SimpleCSR_8_io_csr_dataOut = io_csr_12_dataOut; // @[SimpleCSR.scala 50:16:@1244.4]
  assign SimpleCSR_8_io_csr_dataWrite = io_csr_12_dataWrite; // @[SimpleCSR.scala 50:16:@1243.4]
  assign SimpleCSR_9_clock = clock; // @[:@1247.4]
  assign SimpleCSR_9_reset = reset; // @[:@1248.4]
  assign SimpleCSR_9_io_csr_dataOut = io_csr_13_dataOut; // @[SimpleCSR.scala 50:16:@1251.4]
  assign SimpleCSR_9_io_csr_dataWrite = io_csr_13_dataWrite; // @[SimpleCSR.scala 50:16:@1250.4]
  assign SimpleCSR_10_clock = clock; // @[:@1254.4]
  assign SimpleCSR_10_reset = reset; // @[:@1255.4]
  assign SimpleCSR_10_io_csr_dataOut = io_csr_14_dataOut; // @[SimpleCSR.scala 50:16:@1258.4]
  assign SimpleCSR_10_io_csr_dataWrite = io_csr_14_dataWrite; // @[SimpleCSR.scala 50:16:@1257.4]
  assign SimpleCSR_11_clock = clock; // @[:@1261.4]
  assign SimpleCSR_11_reset = reset; // @[:@1262.4]
  assign SimpleCSR_11_io_csr_dataOut = io_csr_15_dataOut; // @[SimpleCSR.scala 50:16:@1265.4]
  assign SimpleCSR_11_io_csr_dataWrite = io_csr_15_dataWrite; // @[SimpleCSR.scala 50:16:@1264.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  status = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  readerSync = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  readerSyncOld = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  writerSync = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  writerSyncOld = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  readerStart = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  writerStart = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    status <= {addressGeneratorRead_io_ctl_busy,addressGeneratorWrite_io_ctl_busy};
    readerSync <= io_sync_readerSync;
    readerSyncOld <= readerSync;
    writerSync <= io_sync_writerSync;
    writerSyncOld <= writerSync;
    if (reset) begin
      readerStart <= 1'h0;
    end else begin
      readerStart <= _T_215;
    end
    if (reset) begin
      writerStart <= 1'h0;
    end else begin
      writerStart <= _T_222;
    end
  end
endmodule
module Queue( // @[:@1288.2]
  input         clock, // @[:@1289.4]
  input         reset, // @[:@1290.4]
  output        io_enq_ready, // @[:@1291.4]
  input         io_enq_valid, // @[:@1291.4]
  input  [31:0] io_enq_bits, // @[:@1291.4]
  input         io_deq_ready, // @[:@1291.4]
  output        io_deq_valid, // @[:@1291.4]
  output [31:0] io_deq_bits // @[:@1291.4]
);
  reg [31:0] ram [0:511]; // @[Decoupled.scala 215:24:@1293.4]
  reg [31:0] _RAND_0;
  wire [31:0] ram__T_63_data; // @[Decoupled.scala 215:24:@1293.4]
  wire [8:0] ram__T_63_addr; // @[Decoupled.scala 215:24:@1293.4]
  wire [31:0] ram__T_49_data; // @[Decoupled.scala 215:24:@1293.4]
  wire [8:0] ram__T_49_addr; // @[Decoupled.scala 215:24:@1293.4]
  wire  ram__T_49_mask; // @[Decoupled.scala 215:24:@1293.4]
  wire  ram__T_49_en; // @[Decoupled.scala 215:24:@1293.4]
  reg [8:0] value; // @[Counter.scala 26:33:@1294.4]
  reg [31:0] _RAND_1;
  reg [8:0] value_1; // @[Counter.scala 26:33:@1295.4]
  reg [31:0] _RAND_2;
  reg  maybe_full; // @[Decoupled.scala 218:35:@1296.4]
  reg [31:0] _RAND_3;
  wire  _T_41; // @[Decoupled.scala 220:41:@1297.4]
  wire  _T_43; // @[Decoupled.scala 221:36:@1298.4]
  wire  empty; // @[Decoupled.scala 221:33:@1299.4]
  wire  _T_44; // @[Decoupled.scala 222:32:@1300.4]
  wire  do_enq; // @[Decoupled.scala 37:37:@1301.4]
  wire  do_deq; // @[Decoupled.scala 37:37:@1304.4]
  wire [9:0] _T_52; // @[Counter.scala 35:22:@1311.6]
  wire [8:0] _T_53; // @[Counter.scala 35:22:@1312.6]
  wire [8:0] _GEN_5; // @[Decoupled.scala 226:17:@1307.4]
  wire [9:0] _T_56; // @[Counter.scala 35:22:@1317.6]
  wire [8:0] _T_57; // @[Counter.scala 35:22:@1318.6]
  wire [8:0] _GEN_6; // @[Decoupled.scala 230:17:@1315.4]
  wire  _T_58; // @[Decoupled.scala 233:16:@1321.4]
  wire  _GEN_7; // @[Decoupled.scala 233:28:@1322.4]
  assign ram__T_63_addr = value_1;
  assign ram__T_63_data = ram[ram__T_63_addr]; // @[Decoupled.scala 215:24:@1293.4]
  assign ram__T_49_data = io_enq_bits;
  assign ram__T_49_addr = value;
  assign ram__T_49_mask = 1'h1;
  assign ram__T_49_en = io_enq_ready & io_enq_valid;
  assign _T_41 = value == value_1; // @[Decoupled.scala 220:41:@1297.4]
  assign _T_43 = maybe_full == 1'h0; // @[Decoupled.scala 221:36:@1298.4]
  assign empty = _T_41 & _T_43; // @[Decoupled.scala 221:33:@1299.4]
  assign _T_44 = _T_41 & maybe_full; // @[Decoupled.scala 222:32:@1300.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 37:37:@1301.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 37:37:@1304.4]
  assign _T_52 = value + 9'h1; // @[Counter.scala 35:22:@1311.6]
  assign _T_53 = value + 9'h1; // @[Counter.scala 35:22:@1312.6]
  assign _GEN_5 = do_enq ? _T_53 : value; // @[Decoupled.scala 226:17:@1307.4]
  assign _T_56 = value_1 + 9'h1; // @[Counter.scala 35:22:@1317.6]
  assign _T_57 = value_1 + 9'h1; // @[Counter.scala 35:22:@1318.6]
  assign _GEN_6 = do_deq ? _T_57 : value_1; // @[Decoupled.scala 230:17:@1315.4]
  assign _T_58 = do_enq != do_deq; // @[Decoupled.scala 233:16:@1321.4]
  assign _GEN_7 = _T_58 ? do_enq : maybe_full; // @[Decoupled.scala 233:28:@1322.4]
  assign io_enq_ready = _T_44 == 1'h0; // @[Decoupled.scala 238:16:@1328.4]
  assign io_deq_valid = empty == 1'h0; // @[Decoupled.scala 237:16:@1326.4]
  assign io_deq_bits = ram__T_63_data; // @[Decoupled.scala 239:15:@1330.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    ram[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  value = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  value_1 = _RAND_2[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  maybe_full = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(ram__T_49_en & ram__T_49_mask) begin
      ram[ram__T_49_addr] <= ram__T_49_data; // @[Decoupled.scala 215:24:@1293.4]
    end
    if (reset) begin
      value <= 9'h0;
    end else begin
      if (do_enq) begin
        value <= _T_53;
      end
    end
    if (reset) begin
      value_1 <= 9'h0;
    end else begin
      if (do_deq) begin
        value_1 <= _T_57;
      end
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else begin
      if (_T_58) begin
        maybe_full <= do_enq;
      end
    end
  end
endmodule
module DMATop( // @[:@1339.2]
  input         clock, // @[:@1340.4]
  input         reset, // @[:@1341.4]
  input  [31:0] io_control_aw_awaddr, // @[:@1342.4]
  input  [2:0]  io_control_aw_awprot, // @[:@1342.4]
  input         io_control_aw_awvalid, // @[:@1342.4]
  output        io_control_aw_awready, // @[:@1342.4]
  input  [31:0] io_control_w_wdata, // @[:@1342.4]
  input  [3:0]  io_control_w_wstrb, // @[:@1342.4]
  input         io_control_w_wvalid, // @[:@1342.4]
  output        io_control_w_wready, // @[:@1342.4]
  output [1:0]  io_control_b_bresp, // @[:@1342.4]
  output        io_control_b_bvalid, // @[:@1342.4]
  input         io_control_b_bready, // @[:@1342.4]
  input  [31:0] io_control_ar_araddr, // @[:@1342.4]
  input  [2:0]  io_control_ar_arprot, // @[:@1342.4]
  input         io_control_ar_arvalid, // @[:@1342.4]
  output        io_control_ar_arready, // @[:@1342.4]
  output [31:0] io_control_r_rdata, // @[:@1342.4]
  output [1:0]  io_control_r_rresp, // @[:@1342.4]
  output        io_control_r_rvalid, // @[:@1342.4]
  input         io_control_r_rready, // @[:@1342.4]
  output [3:0]  io_read_aw_awid, // @[:@1342.4]
  output [31:0] io_read_aw_awaddr, // @[:@1342.4]
  output [7:0]  io_read_aw_awlen, // @[:@1342.4]
  output [2:0]  io_read_aw_awsize, // @[:@1342.4]
  output [1:0]  io_read_aw_awburst, // @[:@1342.4]
  output        io_read_aw_awlock, // @[:@1342.4]
  output [3:0]  io_read_aw_awcache, // @[:@1342.4]
  output [2:0]  io_read_aw_awprot, // @[:@1342.4]
  output [3:0]  io_read_aw_awqos, // @[:@1342.4]
  output        io_read_aw_awvalid, // @[:@1342.4]
  input         io_read_aw_awready, // @[:@1342.4]
  output [31:0] io_read_w_wdata, // @[:@1342.4]
  output [3:0]  io_read_w_wstrb, // @[:@1342.4]
  output        io_read_w_wlast, // @[:@1342.4]
  output        io_read_w_wvalid, // @[:@1342.4]
  input         io_read_w_wready, // @[:@1342.4]
  input  [3:0]  io_read_b_bid, // @[:@1342.4]
  input  [1:0]  io_read_b_bresp, // @[:@1342.4]
  input         io_read_b_bvalid, // @[:@1342.4]
  output        io_read_b_bready, // @[:@1342.4]
  output [3:0]  io_read_ar_arid, // @[:@1342.4]
  output [31:0] io_read_ar_araddr, // @[:@1342.4]
  output [7:0]  io_read_ar_arlen, // @[:@1342.4]
  output [2:0]  io_read_ar_arsize, // @[:@1342.4]
  output [1:0]  io_read_ar_arburst, // @[:@1342.4]
  output        io_read_ar_arlock, // @[:@1342.4]
  output [3:0]  io_read_ar_arcache, // @[:@1342.4]
  output [2:0]  io_read_ar_arprot, // @[:@1342.4]
  output [3:0]  io_read_ar_arqos, // @[:@1342.4]
  output        io_read_ar_arvalid, // @[:@1342.4]
  input         io_read_ar_arready, // @[:@1342.4]
  input  [3:0]  io_read_r_rid, // @[:@1342.4]
  input  [31:0] io_read_r_rdata, // @[:@1342.4]
  input  [1:0]  io_read_r_rresp, // @[:@1342.4]
  input         io_read_r_rlast, // @[:@1342.4]
  input         io_read_r_rvalid, // @[:@1342.4]
  output        io_read_r_rready, // @[:@1342.4]
  output [31:0] io_write_tdata, // @[:@1342.4]
  output        io_write_tvalid, // @[:@1342.4]
  input         io_write_tready, // @[:@1342.4]
  output        io_write_tuser, // @[:@1342.4]
  output        io_write_tlast, // @[:@1342.4]
  output        io_irq_readerDone, // @[:@1342.4]
  output        io_irq_writerDone, // @[:@1342.4]
  input         io_sync_readerSync, // @[:@1342.4]
  input         io_sync_writerSync // @[:@1342.4]
);
  wire  csrFrontend_clock; // @[DMATop.scala 42:27:@1344.4]
  wire  csrFrontend_reset; // @[DMATop.scala 42:27:@1344.4]
  wire [31:0] csrFrontend_io_ctl_aw_awaddr; // @[DMATop.scala 42:27:@1344.4]
  wire  csrFrontend_io_ctl_aw_awvalid; // @[DMATop.scala 42:27:@1344.4]
  wire  csrFrontend_io_ctl_aw_awready; // @[DMATop.scala 42:27:@1344.4]
  wire [31:0] csrFrontend_io_ctl_w_wdata; // @[DMATop.scala 42:27:@1344.4]
  wire  csrFrontend_io_ctl_w_wvalid; // @[DMATop.scala 42:27:@1344.4]
  wire  csrFrontend_io_ctl_w_wready; // @[DMATop.scala 42:27:@1344.4]
  wire  csrFrontend_io_ctl_b_bvalid; // @[DMATop.scala 42:27:@1344.4]
  wire  csrFrontend_io_ctl_b_bready; // @[DMATop.scala 42:27:@1344.4]
  wire [31:0] csrFrontend_io_ctl_ar_araddr; // @[DMATop.scala 42:27:@1344.4]
  wire  csrFrontend_io_ctl_ar_arvalid; // @[DMATop.scala 42:27:@1344.4]
  wire  csrFrontend_io_ctl_ar_arready; // @[DMATop.scala 42:27:@1344.4]
  wire [31:0] csrFrontend_io_ctl_r_rdata; // @[DMATop.scala 42:27:@1344.4]
  wire  csrFrontend_io_ctl_r_rvalid; // @[DMATop.scala 42:27:@1344.4]
  wire  csrFrontend_io_ctl_r_rready; // @[DMATop.scala 42:27:@1344.4]
  wire [3:0] csrFrontend_io_bus_addr; // @[DMATop.scala 42:27:@1344.4]
  wire [31:0] csrFrontend_io_bus_dataOut; // @[DMATop.scala 42:27:@1344.4]
  wire [31:0] csrFrontend_io_bus_dataIn; // @[DMATop.scala 42:27:@1344.4]
  wire  csrFrontend_io_bus_write; // @[DMATop.scala 42:27:@1344.4]
  wire  csrFrontend_io_bus_read; // @[DMATop.scala 42:27:@1344.4]
  wire  readerFrontend_clock; // @[DMATop.scala 44:30:@1347.4]
  wire  readerFrontend_reset; // @[DMATop.scala 44:30:@1347.4]
  wire [31:0] readerFrontend_io_bus_ar_araddr; // @[DMATop.scala 44:30:@1347.4]
  wire [7:0] readerFrontend_io_bus_ar_arlen; // @[DMATop.scala 44:30:@1347.4]
  wire  readerFrontend_io_bus_ar_arvalid; // @[DMATop.scala 44:30:@1347.4]
  wire  readerFrontend_io_bus_ar_arready; // @[DMATop.scala 44:30:@1347.4]
  wire [31:0] readerFrontend_io_bus_r_rdata; // @[DMATop.scala 44:30:@1347.4]
  wire  readerFrontend_io_bus_r_rlast; // @[DMATop.scala 44:30:@1347.4]
  wire  readerFrontend_io_bus_r_rvalid; // @[DMATop.scala 44:30:@1347.4]
  wire  readerFrontend_io_bus_r_rready; // @[DMATop.scala 44:30:@1347.4]
  wire  readerFrontend_io_dataOut_ready; // @[DMATop.scala 44:30:@1347.4]
  wire  readerFrontend_io_dataOut_valid; // @[DMATop.scala 44:30:@1347.4]
  wire [31:0] readerFrontend_io_dataOut_bits; // @[DMATop.scala 44:30:@1347.4]
  wire  readerFrontend_io_xfer_done; // @[DMATop.scala 44:30:@1347.4]
  wire [31:0] readerFrontend_io_xfer_address; // @[DMATop.scala 44:30:@1347.4]
  wire [31:0] readerFrontend_io_xfer_length; // @[DMATop.scala 44:30:@1347.4]
  wire  readerFrontend_io_xfer_valid; // @[DMATop.scala 44:30:@1347.4]
  wire  writerFrontend_clock; // @[DMATop.scala 46:30:@1350.4]
  wire  writerFrontend_reset; // @[DMATop.scala 46:30:@1350.4]
  wire [31:0] writerFrontend_io_bus_tdata; // @[DMATop.scala 46:30:@1350.4]
  wire  writerFrontend_io_bus_tvalid; // @[DMATop.scala 46:30:@1350.4]
  wire  writerFrontend_io_bus_tready; // @[DMATop.scala 46:30:@1350.4]
  wire  writerFrontend_io_bus_tuser; // @[DMATop.scala 46:30:@1350.4]
  wire  writerFrontend_io_bus_tlast; // @[DMATop.scala 46:30:@1350.4]
  wire  writerFrontend_io_dataIn_ready; // @[DMATop.scala 46:30:@1350.4]
  wire  writerFrontend_io_dataIn_valid; // @[DMATop.scala 46:30:@1350.4]
  wire [31:0] writerFrontend_io_dataIn_bits; // @[DMATop.scala 46:30:@1350.4]
  wire  writerFrontend_io_xfer_done; // @[DMATop.scala 46:30:@1350.4]
  wire [31:0] writerFrontend_io_xfer_length; // @[DMATop.scala 46:30:@1350.4]
  wire  writerFrontend_io_xfer_valid; // @[DMATop.scala 46:30:@1350.4]
  wire  writerFrontend_io_xfer_first; // @[DMATop.scala 46:30:@1350.4]
  wire [31:0] csr_io_csr_0_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_0_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_0_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_1_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_2_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_2_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_2_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_3_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_3_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_3_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_4_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_4_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_4_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_5_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_5_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_5_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_6_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_6_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_6_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_7_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_7_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_7_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_8_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_8_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_8_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_9_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_9_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_9_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_10_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_10_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_10_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_11_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_11_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_11_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_12_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_12_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_12_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_13_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_13_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_13_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_14_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_14_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_14_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_15_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_csr_15_dataWrite; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_csr_15_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire [3:0] csr_io_bus_addr; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_bus_dataOut; // @[DMATop.scala 48:19:@1353.4]
  wire [31:0] csr_io_bus_dataIn; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_bus_write; // @[DMATop.scala 48:19:@1353.4]
  wire  csr_io_bus_read; // @[DMATop.scala 48:19:@1353.4]
  wire  ctl_clock; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_reset; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_0_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_0_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_0_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_1_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_2_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_2_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_2_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_3_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_3_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_3_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_4_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_4_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_4_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_5_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_5_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_5_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_6_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_6_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_6_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_7_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_7_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_7_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_8_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_8_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_8_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_9_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_9_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_9_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_10_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_10_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_10_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_11_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_11_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_11_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_12_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_12_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_12_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_13_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_13_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_13_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_14_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_14_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_14_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_15_dataOut; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_csr_15_dataWrite; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_csr_15_dataIn; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_irq_readerDone; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_irq_writerDone; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_sync_readerSync; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_sync_writerSync; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_xferRead_done; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_xferRead_address; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_xferRead_length; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_xferRead_valid; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_xferWrite_done; // @[DMATop.scala 50:19:@1356.4]
  wire [31:0] ctl_io_xferWrite_length; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_xferWrite_valid; // @[DMATop.scala 50:19:@1356.4]
  wire  ctl_io_xferWrite_first; // @[DMATop.scala 50:19:@1356.4]
  wire  queue_clock; // @[Decoupled.scala 294:21:@1359.4]
  wire  queue_reset; // @[Decoupled.scala 294:21:@1359.4]
  wire  queue_io_enq_ready; // @[Decoupled.scala 294:21:@1359.4]
  wire  queue_io_enq_valid; // @[Decoupled.scala 294:21:@1359.4]
  wire [31:0] queue_io_enq_bits; // @[Decoupled.scala 294:21:@1359.4]
  wire  queue_io_deq_ready; // @[Decoupled.scala 294:21:@1359.4]
  wire  queue_io_deq_valid; // @[Decoupled.scala 294:21:@1359.4]
  wire [31:0] queue_io_deq_bits; // @[Decoupled.scala 294:21:@1359.4]
  AXI4LiteCSR csrFrontend ( // @[DMATop.scala 42:27:@1344.4]
    .clock(csrFrontend_clock),
    .reset(csrFrontend_reset),
    .io_ctl_aw_awaddr(csrFrontend_io_ctl_aw_awaddr),
    .io_ctl_aw_awvalid(csrFrontend_io_ctl_aw_awvalid),
    .io_ctl_aw_awready(csrFrontend_io_ctl_aw_awready),
    .io_ctl_w_wdata(csrFrontend_io_ctl_w_wdata),
    .io_ctl_w_wvalid(csrFrontend_io_ctl_w_wvalid),
    .io_ctl_w_wready(csrFrontend_io_ctl_w_wready),
    .io_ctl_b_bvalid(csrFrontend_io_ctl_b_bvalid),
    .io_ctl_b_bready(csrFrontend_io_ctl_b_bready),
    .io_ctl_ar_araddr(csrFrontend_io_ctl_ar_araddr),
    .io_ctl_ar_arvalid(csrFrontend_io_ctl_ar_arvalid),
    .io_ctl_ar_arready(csrFrontend_io_ctl_ar_arready),
    .io_ctl_r_rdata(csrFrontend_io_ctl_r_rdata),
    .io_ctl_r_rvalid(csrFrontend_io_ctl_r_rvalid),
    .io_ctl_r_rready(csrFrontend_io_ctl_r_rready),
    .io_bus_addr(csrFrontend_io_bus_addr),
    .io_bus_dataOut(csrFrontend_io_bus_dataOut),
    .io_bus_dataIn(csrFrontend_io_bus_dataIn),
    .io_bus_write(csrFrontend_io_bus_write),
    .io_bus_read(csrFrontend_io_bus_read)
  );
  AXI4Reader readerFrontend ( // @[DMATop.scala 44:30:@1347.4]
    .clock(readerFrontend_clock),
    .reset(readerFrontend_reset),
    .io_bus_ar_araddr(readerFrontend_io_bus_ar_araddr),
    .io_bus_ar_arlen(readerFrontend_io_bus_ar_arlen),
    .io_bus_ar_arvalid(readerFrontend_io_bus_ar_arvalid),
    .io_bus_ar_arready(readerFrontend_io_bus_ar_arready),
    .io_bus_r_rdata(readerFrontend_io_bus_r_rdata),
    .io_bus_r_rlast(readerFrontend_io_bus_r_rlast),
    .io_bus_r_rvalid(readerFrontend_io_bus_r_rvalid),
    .io_bus_r_rready(readerFrontend_io_bus_r_rready),
    .io_dataOut_ready(readerFrontend_io_dataOut_ready),
    .io_dataOut_valid(readerFrontend_io_dataOut_valid),
    .io_dataOut_bits(readerFrontend_io_dataOut_bits),
    .io_xfer_done(readerFrontend_io_xfer_done),
    .io_xfer_address(readerFrontend_io_xfer_address),
    .io_xfer_length(readerFrontend_io_xfer_length),
    .io_xfer_valid(readerFrontend_io_xfer_valid)
  );
  AXIStreamMaster writerFrontend ( // @[DMATop.scala 46:30:@1350.4]
    .clock(writerFrontend_clock),
    .reset(writerFrontend_reset),
    .io_bus_tdata(writerFrontend_io_bus_tdata),
    .io_bus_tvalid(writerFrontend_io_bus_tvalid),
    .io_bus_tready(writerFrontend_io_bus_tready),
    .io_bus_tuser(writerFrontend_io_bus_tuser),
    .io_bus_tlast(writerFrontend_io_bus_tlast),
    .io_dataIn_ready(writerFrontend_io_dataIn_ready),
    .io_dataIn_valid(writerFrontend_io_dataIn_valid),
    .io_dataIn_bits(writerFrontend_io_dataIn_bits),
    .io_xfer_done(writerFrontend_io_xfer_done),
    .io_xfer_length(writerFrontend_io_xfer_length),
    .io_xfer_valid(writerFrontend_io_xfer_valid),
    .io_xfer_first(writerFrontend_io_xfer_first)
  );
  CSR csr ( // @[DMATop.scala 48:19:@1353.4]
    .io_csr_0_dataOut(csr_io_csr_0_dataOut),
    .io_csr_0_dataWrite(csr_io_csr_0_dataWrite),
    .io_csr_0_dataIn(csr_io_csr_0_dataIn),
    .io_csr_1_dataIn(csr_io_csr_1_dataIn),
    .io_csr_2_dataOut(csr_io_csr_2_dataOut),
    .io_csr_2_dataWrite(csr_io_csr_2_dataWrite),
    .io_csr_2_dataIn(csr_io_csr_2_dataIn),
    .io_csr_3_dataOut(csr_io_csr_3_dataOut),
    .io_csr_3_dataWrite(csr_io_csr_3_dataWrite),
    .io_csr_3_dataIn(csr_io_csr_3_dataIn),
    .io_csr_4_dataOut(csr_io_csr_4_dataOut),
    .io_csr_4_dataWrite(csr_io_csr_4_dataWrite),
    .io_csr_4_dataIn(csr_io_csr_4_dataIn),
    .io_csr_5_dataOut(csr_io_csr_5_dataOut),
    .io_csr_5_dataWrite(csr_io_csr_5_dataWrite),
    .io_csr_5_dataIn(csr_io_csr_5_dataIn),
    .io_csr_6_dataOut(csr_io_csr_6_dataOut),
    .io_csr_6_dataWrite(csr_io_csr_6_dataWrite),
    .io_csr_6_dataIn(csr_io_csr_6_dataIn),
    .io_csr_7_dataOut(csr_io_csr_7_dataOut),
    .io_csr_7_dataWrite(csr_io_csr_7_dataWrite),
    .io_csr_7_dataIn(csr_io_csr_7_dataIn),
    .io_csr_8_dataOut(csr_io_csr_8_dataOut),
    .io_csr_8_dataWrite(csr_io_csr_8_dataWrite),
    .io_csr_8_dataIn(csr_io_csr_8_dataIn),
    .io_csr_9_dataOut(csr_io_csr_9_dataOut),
    .io_csr_9_dataWrite(csr_io_csr_9_dataWrite),
    .io_csr_9_dataIn(csr_io_csr_9_dataIn),
    .io_csr_10_dataOut(csr_io_csr_10_dataOut),
    .io_csr_10_dataWrite(csr_io_csr_10_dataWrite),
    .io_csr_10_dataIn(csr_io_csr_10_dataIn),
    .io_csr_11_dataOut(csr_io_csr_11_dataOut),
    .io_csr_11_dataWrite(csr_io_csr_11_dataWrite),
    .io_csr_11_dataIn(csr_io_csr_11_dataIn),
    .io_csr_12_dataOut(csr_io_csr_12_dataOut),
    .io_csr_12_dataWrite(csr_io_csr_12_dataWrite),
    .io_csr_12_dataIn(csr_io_csr_12_dataIn),
    .io_csr_13_dataOut(csr_io_csr_13_dataOut),
    .io_csr_13_dataWrite(csr_io_csr_13_dataWrite),
    .io_csr_13_dataIn(csr_io_csr_13_dataIn),
    .io_csr_14_dataOut(csr_io_csr_14_dataOut),
    .io_csr_14_dataWrite(csr_io_csr_14_dataWrite),
    .io_csr_14_dataIn(csr_io_csr_14_dataIn),
    .io_csr_15_dataOut(csr_io_csr_15_dataOut),
    .io_csr_15_dataWrite(csr_io_csr_15_dataWrite),
    .io_csr_15_dataIn(csr_io_csr_15_dataIn),
    .io_bus_addr(csr_io_bus_addr),
    .io_bus_dataOut(csr_io_bus_dataOut),
    .io_bus_dataIn(csr_io_bus_dataIn),
    .io_bus_write(csr_io_bus_write),
    .io_bus_read(csr_io_bus_read)
  );
  WorkerCSRWrapper ctl ( // @[DMATop.scala 50:19:@1356.4]
    .clock(ctl_clock),
    .reset(ctl_reset),
    .io_csr_0_dataOut(ctl_io_csr_0_dataOut),
    .io_csr_0_dataWrite(ctl_io_csr_0_dataWrite),
    .io_csr_0_dataIn(ctl_io_csr_0_dataIn),
    .io_csr_1_dataIn(ctl_io_csr_1_dataIn),
    .io_csr_2_dataOut(ctl_io_csr_2_dataOut),
    .io_csr_2_dataWrite(ctl_io_csr_2_dataWrite),
    .io_csr_2_dataIn(ctl_io_csr_2_dataIn),
    .io_csr_3_dataOut(ctl_io_csr_3_dataOut),
    .io_csr_3_dataWrite(ctl_io_csr_3_dataWrite),
    .io_csr_3_dataIn(ctl_io_csr_3_dataIn),
    .io_csr_4_dataOut(ctl_io_csr_4_dataOut),
    .io_csr_4_dataWrite(ctl_io_csr_4_dataWrite),
    .io_csr_4_dataIn(ctl_io_csr_4_dataIn),
    .io_csr_5_dataOut(ctl_io_csr_5_dataOut),
    .io_csr_5_dataWrite(ctl_io_csr_5_dataWrite),
    .io_csr_5_dataIn(ctl_io_csr_5_dataIn),
    .io_csr_6_dataOut(ctl_io_csr_6_dataOut),
    .io_csr_6_dataWrite(ctl_io_csr_6_dataWrite),
    .io_csr_6_dataIn(ctl_io_csr_6_dataIn),
    .io_csr_7_dataOut(ctl_io_csr_7_dataOut),
    .io_csr_7_dataWrite(ctl_io_csr_7_dataWrite),
    .io_csr_7_dataIn(ctl_io_csr_7_dataIn),
    .io_csr_8_dataOut(ctl_io_csr_8_dataOut),
    .io_csr_8_dataWrite(ctl_io_csr_8_dataWrite),
    .io_csr_8_dataIn(ctl_io_csr_8_dataIn),
    .io_csr_9_dataOut(ctl_io_csr_9_dataOut),
    .io_csr_9_dataWrite(ctl_io_csr_9_dataWrite),
    .io_csr_9_dataIn(ctl_io_csr_9_dataIn),
    .io_csr_10_dataOut(ctl_io_csr_10_dataOut),
    .io_csr_10_dataWrite(ctl_io_csr_10_dataWrite),
    .io_csr_10_dataIn(ctl_io_csr_10_dataIn),
    .io_csr_11_dataOut(ctl_io_csr_11_dataOut),
    .io_csr_11_dataWrite(ctl_io_csr_11_dataWrite),
    .io_csr_11_dataIn(ctl_io_csr_11_dataIn),
    .io_csr_12_dataOut(ctl_io_csr_12_dataOut),
    .io_csr_12_dataWrite(ctl_io_csr_12_dataWrite),
    .io_csr_12_dataIn(ctl_io_csr_12_dataIn),
    .io_csr_13_dataOut(ctl_io_csr_13_dataOut),
    .io_csr_13_dataWrite(ctl_io_csr_13_dataWrite),
    .io_csr_13_dataIn(ctl_io_csr_13_dataIn),
    .io_csr_14_dataOut(ctl_io_csr_14_dataOut),
    .io_csr_14_dataWrite(ctl_io_csr_14_dataWrite),
    .io_csr_14_dataIn(ctl_io_csr_14_dataIn),
    .io_csr_15_dataOut(ctl_io_csr_15_dataOut),
    .io_csr_15_dataWrite(ctl_io_csr_15_dataWrite),
    .io_csr_15_dataIn(ctl_io_csr_15_dataIn),
    .io_irq_readerDone(ctl_io_irq_readerDone),
    .io_irq_writerDone(ctl_io_irq_writerDone),
    .io_sync_readerSync(ctl_io_sync_readerSync),
    .io_sync_writerSync(ctl_io_sync_writerSync),
    .io_xferRead_done(ctl_io_xferRead_done),
    .io_xferRead_address(ctl_io_xferRead_address),
    .io_xferRead_length(ctl_io_xferRead_length),
    .io_xferRead_valid(ctl_io_xferRead_valid),
    .io_xferWrite_done(ctl_io_xferWrite_done),
    .io_xferWrite_length(ctl_io_xferWrite_length),
    .io_xferWrite_valid(ctl_io_xferWrite_valid),
    .io_xferWrite_first(ctl_io_xferWrite_first)
  );
  Queue queue ( // @[Decoupled.scala 294:21:@1359.4]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits(queue_io_enq_bits),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits(queue_io_deq_bits)
  );
  assign io_control_aw_awready = csrFrontend_io_ctl_aw_awready; // @[DMATop.scala 56:22:@1383.4]
  assign io_control_w_wready = csrFrontend_io_ctl_w_wready; // @[DMATop.scala 56:22:@1379.4]
  assign io_control_b_bresp = 2'h0; // @[DMATop.scala 56:22:@1378.4]
  assign io_control_b_bvalid = csrFrontend_io_ctl_b_bvalid; // @[DMATop.scala 56:22:@1377.4]
  assign io_control_ar_arready = csrFrontend_io_ctl_ar_arready; // @[DMATop.scala 56:22:@1372.4]
  assign io_control_r_rdata = csrFrontend_io_ctl_r_rdata; // @[DMATop.scala 56:22:@1371.4]
  assign io_control_r_rresp = 2'h0; // @[DMATop.scala 56:22:@1370.4]
  assign io_control_r_rvalid = csrFrontend_io_ctl_r_rvalid; // @[DMATop.scala 56:22:@1369.4]
  assign io_read_aw_awid = 4'h0; // @[DMATop.scala 62:11:@1502.4]
  assign io_read_aw_awaddr = 32'h0; // @[DMATop.scala 62:11:@1501.4]
  assign io_read_aw_awlen = 8'h0; // @[DMATop.scala 62:11:@1500.4]
  assign io_read_aw_awsize = 3'h0; // @[DMATop.scala 62:11:@1499.4]
  assign io_read_aw_awburst = 2'h0; // @[DMATop.scala 62:11:@1498.4]
  assign io_read_aw_awlock = 1'h0; // @[DMATop.scala 62:11:@1497.4]
  assign io_read_aw_awcache = 4'h0; // @[DMATop.scala 62:11:@1496.4]
  assign io_read_aw_awprot = 3'h0; // @[DMATop.scala 62:11:@1495.4]
  assign io_read_aw_awqos = 4'h0; // @[DMATop.scala 62:11:@1494.4]
  assign io_read_aw_awvalid = 1'h0; // @[DMATop.scala 62:11:@1493.4]
  assign io_read_w_wdata = 32'h0; // @[DMATop.scala 62:11:@1491.4]
  assign io_read_w_wstrb = 4'h0; // @[DMATop.scala 62:11:@1490.4]
  assign io_read_w_wlast = 1'h0; // @[DMATop.scala 62:11:@1489.4]
  assign io_read_w_wvalid = 1'h0; // @[DMATop.scala 62:11:@1488.4]
  assign io_read_b_bready = 1'h0; // @[DMATop.scala 62:11:@1483.4]
  assign io_read_ar_arid = 4'h0; // @[DMATop.scala 62:11:@1482.4]
  assign io_read_ar_araddr = readerFrontend_io_bus_ar_araddr; // @[DMATop.scala 62:11:@1481.4]
  assign io_read_ar_arlen = readerFrontend_io_bus_ar_arlen; // @[DMATop.scala 62:11:@1480.4]
  assign io_read_ar_arsize = 3'h2; // @[DMATop.scala 62:11:@1479.4]
  assign io_read_ar_arburst = 2'h1; // @[DMATop.scala 62:11:@1478.4]
  assign io_read_ar_arlock = 1'h0; // @[DMATop.scala 62:11:@1477.4]
  assign io_read_ar_arcache = 4'h2; // @[DMATop.scala 62:11:@1476.4]
  assign io_read_ar_arprot = 3'h0; // @[DMATop.scala 62:11:@1475.4]
  assign io_read_ar_arqos = 4'h0; // @[DMATop.scala 62:11:@1474.4]
  assign io_read_ar_arvalid = readerFrontend_io_bus_ar_arvalid; // @[DMATop.scala 62:11:@1473.4]
  assign io_read_r_rready = readerFrontend_io_bus_r_rready; // @[DMATop.scala 62:11:@1466.4]
  assign io_write_tdata = writerFrontend_io_bus_tdata; // @[DMATop.scala 63:12:@1507.4]
  assign io_write_tvalid = writerFrontend_io_bus_tvalid; // @[DMATop.scala 63:12:@1506.4]
  assign io_write_tuser = writerFrontend_io_bus_tuser; // @[DMATop.scala 63:12:@1504.4]
  assign io_write_tlast = writerFrontend_io_bus_tlast; // @[DMATop.scala 63:12:@1503.4]
  assign io_irq_readerDone = ctl_io_irq_readerDone; // @[DMATop.scala 65:10:@1509.4]
  assign io_irq_writerDone = ctl_io_irq_writerDone; // @[DMATop.scala 65:10:@1508.4]
  assign csrFrontend_clock = clock; // @[:@1345.4]
  assign csrFrontend_reset = reset; // @[:@1346.4]
  assign csrFrontend_io_ctl_aw_awaddr = io_control_aw_awaddr; // @[DMATop.scala 56:22:@1386.4]
  assign csrFrontend_io_ctl_aw_awvalid = io_control_aw_awvalid; // @[DMATop.scala 56:22:@1384.4]
  assign csrFrontend_io_ctl_w_wdata = io_control_w_wdata; // @[DMATop.scala 56:22:@1382.4]
  assign csrFrontend_io_ctl_w_wvalid = io_control_w_wvalid; // @[DMATop.scala 56:22:@1380.4]
  assign csrFrontend_io_ctl_b_bready = io_control_b_bready; // @[DMATop.scala 56:22:@1376.4]
  assign csrFrontend_io_ctl_ar_araddr = io_control_ar_araddr; // @[DMATop.scala 56:22:@1375.4]
  assign csrFrontend_io_ctl_ar_arvalid = io_control_ar_arvalid; // @[DMATop.scala 56:22:@1373.4]
  assign csrFrontend_io_ctl_r_rready = io_control_r_rready; // @[DMATop.scala 56:22:@1368.4]
  assign csrFrontend_io_bus_dataIn = csr_io_bus_dataIn; // @[DMATop.scala 57:14:@1389.4]
  assign readerFrontend_clock = clock; // @[:@1348.4]
  assign readerFrontend_reset = reset; // @[:@1349.4]
  assign readerFrontend_io_bus_ar_arready = io_read_ar_arready; // @[DMATop.scala 62:11:@1472.4]
  assign readerFrontend_io_bus_r_rdata = io_read_r_rdata; // @[DMATop.scala 62:11:@1470.4]
  assign readerFrontend_io_bus_r_rlast = io_read_r_rlast; // @[DMATop.scala 62:11:@1468.4]
  assign readerFrontend_io_bus_r_rvalid = io_read_r_rvalid; // @[DMATop.scala 62:11:@1467.4]
  assign readerFrontend_io_dataOut_ready = queue_io_enq_ready; // @[Decoupled.scala 297:17:@1364.4]
  assign readerFrontend_io_xfer_address = ctl_io_xferRead_address; // @[DMATop.scala 59:26:@1459.4]
  assign readerFrontend_io_xfer_length = ctl_io_xferRead_length; // @[DMATop.scala 59:26:@1458.4]
  assign readerFrontend_io_xfer_valid = ctl_io_xferRead_valid; // @[DMATop.scala 59:26:@1457.4]
  assign writerFrontend_clock = clock; // @[:@1351.4]
  assign writerFrontend_reset = reset; // @[:@1352.4]
  assign writerFrontend_io_bus_tready = io_write_tready; // @[DMATop.scala 63:12:@1505.4]
  assign writerFrontend_io_dataIn_valid = queue_io_deq_valid; // @[DMATop.scala 54:9:@1366.4]
  assign writerFrontend_io_dataIn_bits = queue_io_deq_bits; // @[DMATop.scala 54:9:@1365.4]
  assign writerFrontend_io_xfer_length = ctl_io_xferWrite_length; // @[DMATop.scala 60:26:@1463.4]
  assign writerFrontend_io_xfer_valid = ctl_io_xferWrite_valid; // @[DMATop.scala 60:26:@1462.4]
  assign writerFrontend_io_xfer_first = ctl_io_xferWrite_first; // @[DMATop.scala 60:26:@1461.4]
  assign csr_io_csr_0_dataIn = ctl_io_csr_0_dataIn; // @[DMATop.scala 58:14:@1392.4]
  assign csr_io_csr_1_dataIn = ctl_io_csr_1_dataIn; // @[DMATop.scala 58:14:@1396.4]
  assign csr_io_csr_2_dataIn = ctl_io_csr_2_dataIn; // @[DMATop.scala 58:14:@1400.4]
  assign csr_io_csr_3_dataIn = ctl_io_csr_3_dataIn; // @[DMATop.scala 58:14:@1404.4]
  assign csr_io_csr_4_dataIn = ctl_io_csr_4_dataIn; // @[DMATop.scala 58:14:@1408.4]
  assign csr_io_csr_5_dataIn = ctl_io_csr_5_dataIn; // @[DMATop.scala 58:14:@1412.4]
  assign csr_io_csr_6_dataIn = ctl_io_csr_6_dataIn; // @[DMATop.scala 58:14:@1416.4]
  assign csr_io_csr_7_dataIn = ctl_io_csr_7_dataIn; // @[DMATop.scala 58:14:@1420.4]
  assign csr_io_csr_8_dataIn = ctl_io_csr_8_dataIn; // @[DMATop.scala 58:14:@1424.4]
  assign csr_io_csr_9_dataIn = ctl_io_csr_9_dataIn; // @[DMATop.scala 58:14:@1428.4]
  assign csr_io_csr_10_dataIn = ctl_io_csr_10_dataIn; // @[DMATop.scala 58:14:@1432.4]
  assign csr_io_csr_11_dataIn = ctl_io_csr_11_dataIn; // @[DMATop.scala 58:14:@1436.4]
  assign csr_io_csr_12_dataIn = ctl_io_csr_12_dataIn; // @[DMATop.scala 58:14:@1440.4]
  assign csr_io_csr_13_dataIn = ctl_io_csr_13_dataIn; // @[DMATop.scala 58:14:@1444.4]
  assign csr_io_csr_14_dataIn = ctl_io_csr_14_dataIn; // @[DMATop.scala 58:14:@1448.4]
  assign csr_io_csr_15_dataIn = ctl_io_csr_15_dataIn; // @[DMATop.scala 58:14:@1452.4]
  assign csr_io_bus_addr = csrFrontend_io_bus_addr; // @[DMATop.scala 57:14:@1391.4]
  assign csr_io_bus_dataOut = csrFrontend_io_bus_dataOut; // @[DMATop.scala 57:14:@1390.4]
  assign csr_io_bus_write = csrFrontend_io_bus_write; // @[DMATop.scala 57:14:@1388.4]
  assign csr_io_bus_read = csrFrontend_io_bus_read; // @[DMATop.scala 57:14:@1387.4]
  assign ctl_clock = clock; // @[:@1357.4]
  assign ctl_reset = reset; // @[:@1358.4]
  assign ctl_io_csr_0_dataOut = csr_io_csr_0_dataOut; // @[DMATop.scala 58:14:@1394.4]
  assign ctl_io_csr_0_dataWrite = csr_io_csr_0_dataWrite; // @[DMATop.scala 58:14:@1393.4]
  assign ctl_io_csr_2_dataOut = csr_io_csr_2_dataOut; // @[DMATop.scala 58:14:@1402.4]
  assign ctl_io_csr_2_dataWrite = csr_io_csr_2_dataWrite; // @[DMATop.scala 58:14:@1401.4]
  assign ctl_io_csr_3_dataOut = csr_io_csr_3_dataOut; // @[DMATop.scala 58:14:@1406.4]
  assign ctl_io_csr_3_dataWrite = csr_io_csr_3_dataWrite; // @[DMATop.scala 58:14:@1405.4]
  assign ctl_io_csr_4_dataOut = csr_io_csr_4_dataOut; // @[DMATop.scala 58:14:@1410.4]
  assign ctl_io_csr_4_dataWrite = csr_io_csr_4_dataWrite; // @[DMATop.scala 58:14:@1409.4]
  assign ctl_io_csr_5_dataOut = csr_io_csr_5_dataOut; // @[DMATop.scala 58:14:@1414.4]
  assign ctl_io_csr_5_dataWrite = csr_io_csr_5_dataWrite; // @[DMATop.scala 58:14:@1413.4]
  assign ctl_io_csr_6_dataOut = csr_io_csr_6_dataOut; // @[DMATop.scala 58:14:@1418.4]
  assign ctl_io_csr_6_dataWrite = csr_io_csr_6_dataWrite; // @[DMATop.scala 58:14:@1417.4]
  assign ctl_io_csr_7_dataOut = csr_io_csr_7_dataOut; // @[DMATop.scala 58:14:@1422.4]
  assign ctl_io_csr_7_dataWrite = csr_io_csr_7_dataWrite; // @[DMATop.scala 58:14:@1421.4]
  assign ctl_io_csr_8_dataOut = csr_io_csr_8_dataOut; // @[DMATop.scala 58:14:@1426.4]
  assign ctl_io_csr_8_dataWrite = csr_io_csr_8_dataWrite; // @[DMATop.scala 58:14:@1425.4]
  assign ctl_io_csr_9_dataOut = csr_io_csr_9_dataOut; // @[DMATop.scala 58:14:@1430.4]
  assign ctl_io_csr_9_dataWrite = csr_io_csr_9_dataWrite; // @[DMATop.scala 58:14:@1429.4]
  assign ctl_io_csr_10_dataOut = csr_io_csr_10_dataOut; // @[DMATop.scala 58:14:@1434.4]
  assign ctl_io_csr_10_dataWrite = csr_io_csr_10_dataWrite; // @[DMATop.scala 58:14:@1433.4]
  assign ctl_io_csr_11_dataOut = csr_io_csr_11_dataOut; // @[DMATop.scala 58:14:@1438.4]
  assign ctl_io_csr_11_dataWrite = csr_io_csr_11_dataWrite; // @[DMATop.scala 58:14:@1437.4]
  assign ctl_io_csr_12_dataOut = csr_io_csr_12_dataOut; // @[DMATop.scala 58:14:@1442.4]
  assign ctl_io_csr_12_dataWrite = csr_io_csr_12_dataWrite; // @[DMATop.scala 58:14:@1441.4]
  assign ctl_io_csr_13_dataOut = csr_io_csr_13_dataOut; // @[DMATop.scala 58:14:@1446.4]
  assign ctl_io_csr_13_dataWrite = csr_io_csr_13_dataWrite; // @[DMATop.scala 58:14:@1445.4]
  assign ctl_io_csr_14_dataOut = csr_io_csr_14_dataOut; // @[DMATop.scala 58:14:@1450.4]
  assign ctl_io_csr_14_dataWrite = csr_io_csr_14_dataWrite; // @[DMATop.scala 58:14:@1449.4]
  assign ctl_io_csr_15_dataOut = csr_io_csr_15_dataOut; // @[DMATop.scala 58:14:@1454.4]
  assign ctl_io_csr_15_dataWrite = csr_io_csr_15_dataWrite; // @[DMATop.scala 58:14:@1453.4]
  assign ctl_io_sync_readerSync = io_sync_readerSync; // @[DMATop.scala 66:11:@1511.4]
  assign ctl_io_sync_writerSync = io_sync_writerSync; // @[DMATop.scala 66:11:@1510.4]
  assign ctl_io_xferRead_done = readerFrontend_io_xfer_done; // @[DMATop.scala 59:26:@1460.4]
  assign ctl_io_xferWrite_done = writerFrontend_io_xfer_done; // @[DMATop.scala 60:26:@1465.4]
  assign queue_clock = clock; // @[:@1360.4]
  assign queue_reset = reset; // @[:@1361.4]
  assign queue_io_enq_valid = readerFrontend_io_dataOut_valid; // @[Decoupled.scala 295:22:@1362.4]
  assign queue_io_enq_bits = readerFrontend_io_dataOut_bits; // @[Decoupled.scala 296:21:@1363.4]
  assign queue_io_deq_ready = writerFrontend_io_dataIn_ready; // @[DMATop.scala 54:9:@1367.4]
endmodule
