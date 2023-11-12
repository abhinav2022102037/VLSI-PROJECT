module ALU_5output_tb;
  reg [3:0] A;
  reg [3:0] B;
  reg S0,S1;
  wire [3:0] Output;
  wire carry;
  ALU_5output DUT(S0,S1,A,B,Output,carry);
  
  initial begin
    $dumpfile("ALU_5output_tb.vcd");
    $dumpvars(0, ALU_5output_tb);
    S0=0;
    S1=0;
    A=4'b0101;
    B=4'b1001;
    #10
    S0=1;
    S1=0;
    A=4'b0100;
    B=4'b1011;
    #10
    S0=1;
    S1=1;
    A=4'b0110;
    B=4'b1111;
    #10
    S0=0;
    S1=1;
    A=4'b0110;
    B=4'b1101;
    #10
    S0=0;
    S1=1;
    A=4'b1000;
    B=4'b1000;
    #10
    S0=1;
    S1=1;
    A=4'b0101;
    B=4'b1100;
    #10
    S0=0;
    S1=0;
    A=4'b0000;
    B=4'b1100;
    #10
    S0=1;
    S1=1;
    A=4'b0011;
    B=4'b1100;
    #10
    S0=0;
    S1=1;
    A=4'b1011;
    B=4'b1010;

    #10 $finish; 
  end
endmodule

  

