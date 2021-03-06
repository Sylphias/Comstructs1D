/*
   This file was generated automatically by the Mojo IDE version B1.3.2.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module tester_4 (
    input clk,
    input rst,
    input faulty,
    output reg [11:0] out,
    output reg [7:0] outa,
    output reg [7:0] outb,
    output reg [7:0] outc
  );
  
  
  
  wire [11-1:0] M_alu_out;
  reg [8-1:0] M_alu_a;
  reg [8-1:0] M_alu_b;
  reg [6-1:0] M_alu_c;
  alu_2 alu (
    .a(M_alu_a),
    .b(M_alu_b),
    .c(M_alu_c),
    .out(M_alu_out)
  );
  
  wire [11-1:0] M_faultyalu_out;
  reg [8-1:0] M_faultyalu_a;
  reg [8-1:0] M_faultyalu_b;
  reg [6-1:0] M_faultyalu_c;
  faultyalu_3 faultyalu (
    .a(M_faultyalu_a),
    .b(M_faultyalu_b),
    .c(M_faultyalu_c),
    .out(M_faultyalu_out)
  );
  
  reg [255:0] a;
  
  reg [255:0] b;
  
  reg [191:0] c;
  
  reg [351:0] d;
  
  reg [10:0] aluout;
  
  wire [5-1:0] M_count_value;
  counter_17 count (
    .clk(clk),
    .rst(rst),
    .value(M_count_value)
  );
  
  always @* begin
    a = 256'h00c040c0ff00c040ff0080c0bf7f0080800202070a0a0a0a0a9595958800c000;
    b = 256'h0040c0c0ffffc14000ff81c140818101800001070c0c0c0c0c02020288400000;
    c = 192'h00000000000004104104104108208261a59e5e0863cf5d77;
    d = 352'h801002001803fc7fcc0b803fe004ff9ff4feff83fa7fc00000010310100280300e3ee550929e580240480c01;
    out[11+0-:1] = 1'h0;
    M_alu_a = a[(M_count_value)*8+7-:8];
    M_alu_b = b[(M_count_value)*8+7-:8];
    M_alu_c = c[(M_count_value)*6+5-:6];
    M_faultyalu_a = a[(M_count_value)*8+7-:8];
    M_faultyalu_b = b[(M_count_value)*8+7-:8];
    M_faultyalu_c = c[(M_count_value)*6+5-:6];
    if (faulty == 1'h0) begin
      aluout = M_alu_out;
    end else begin
      aluout = M_faultyalu_out;
    end
    if (aluout == d[(M_count_value)*11+10-:11]) begin
      out[11+0-:1] = 1'h1;
    end
    out[0+10-:11] = aluout[0+10-:11];
    outa = a[(M_count_value)*8+7-:8];
    outb = b[(M_count_value)*8+7-:8];
    outc = c[(M_count_value)*6+5-:6];
  end
endmodule
