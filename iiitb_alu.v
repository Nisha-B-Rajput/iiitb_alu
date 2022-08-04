// the tech social

// Verilog Programming

// the arithmetic block or module

module Arithematic 

#(parameter N = 4, M = 4)

(

    input wire clk,

    input wire [N-1:0] A, B,

    input wire [M-2:0] instruction,

    output reg [N-1:0] AU_out

);

     

    always @ (posedge clk) begin

    

    case (instruction)

            3'h0: AU_out = A + B;

            3'h1: AU_out = A - B;

            3'h2: AU_out = A * B;

            3'h3: AU_out = A / B;

            3'h4: AU_out = A << 1;

            3'h5: AU_out = A >> 1;

            3'h6: AU_out = {A[N-2:0], A[N-1]};

            3'h7: AU_out = {A[0], A[N-1:1]};

            default: AU_out = A;

        endcase

    end

 

endmodule



// the tech social

// Verilog Programming

// the logical block or module

module Logical 

#(parameter N = 4, M = 4)

(

    input wire clk,

    input wire [N-1:0] A, B,

    input wire [M-2:0] instruction,

    output reg [N-1:0] LU_out

);

    always @(posedge clk) begin

 

 case (instruction)

            3'h0: LU_out = A & B; 

            3'h1: LU_out = A | B; 

            3'h2: LU_out = A ^ B; 

            3'h3: LU_out = ~(A | B); 

            3'h4: LU_out = ~(A & B); 

            3'h5: LU_out = ~(A ^ B); 

            3'h6: LU_out = (A>B) ? 4'h1: 4'h0;

            3'h7: LU_out = (A==B) ? 4'h1: 4'h0; 

            default: LU_out = A;

        endcase

 

    end

endmodule



// the tech social

// Verilog Programming

// the top level module -> ALU 

// sub modules -> AU, LU

module iiitb_alu

#(parameter N = 4, M = 4)

(

    input clk,

    input [N-1:0] A, B,

    input [M-1:0] instruction,

     output reg [N-1:0] ALU_out

);

    wire [N-1:0] LU, AU;

 

    // initialize the sub blocks

    Logical Logic(.clk(clk), 

                  .A(A), .B(B), 

                  .instruction(instruction[M-2:0]), 

                  .LU_out(LU));

    Arithematic arith(.clk(clk), 

                      .A(A), .B(B), 

                      .instruction(instruction[M-2:0]), 

                      .AU_out(AU));

     

    always @(*)

        ALU_out <= (instruction[M-1]==1) ? AU : LU;

 

endmodule
