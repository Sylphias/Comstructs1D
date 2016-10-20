/*
   This file was generated automatically by the Mojo IDE version B1.3.2.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module comp_12 (
    input z,
    input v,
    input n,
    input [1:0] c,
    output reg [7:0] out
  );
  
  
  
  always @* begin
    
    case (c[0+1-:2])
      1'h0: begin
        out[0+0-:1] = 1'h0;
      end
      1'h1: begin
        out[0+0-:1] = z;
      end
      2'h2: begin
        out[0+0-:1] = n ^ v;
      end
      2'h3: begin
        out[0+0-:1] = z | (n ^ v);
      end
      default: begin
        out[0+0-:1] = 1'h0;
      end
    endcase
  end
endmodule
