/*
   This file was generated automatically by the Mojo IDE version B1.3.2.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder_18 (
    input [7:0] a,
    input [7:0] b,
    input [0:0] c,
    output reg [10:0] out
  );
  
  
  
  reg [7:0] d;
  
  reg [7:0] xb;
  
  always @* begin
    if (c) begin
      xb = ~b;
      d = a - b;
    end else begin
      xb = b;
      d = a + b;
    end
    if (d[0+7-:8] == 8'h00) begin
      out[10+0-:1] = 1'h1;
    end else begin
      out[10+0-:1] = 1'h0;
    end
    out[9+0-:1] = (a[7+0-:1] & xb[7+0-:1] & !(d[7+0-:1])) | (!(a[7+0-:1]) & !(xb[7+0-:1]) & d[7+0-:1]);
    out[8+0-:1] = d[7+0-:1];
    out[0+7-:8] = d;
  end
endmodule