/* Generated by Yosys 0.36+42 (git sha1 70d35314d, clang 11.0.1-2 -fPIC -Os) */

module mult1(reset, clk, data, wave, mult_out);

  wire [6:0] _0_;
  reg [6:0] _1_;
  input clk;
  wire clk;
  input data;
  wire data;
  output [6:0] mult_out;
  wire [6:0] mult_out;
  input reset;
  wire reset;
  input [6:0] wave;
  wire [6:0] wave;

  always @(posedge clk, posedge reset)
    if (reset) _1_ <= 7'h00;
    else _1_ <= _0_;
  assign _0_ = data ? wave : 7'h1e;
  assign mult_out = _1_;
endmodule
