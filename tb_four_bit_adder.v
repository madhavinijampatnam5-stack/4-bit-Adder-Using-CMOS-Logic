`timescale 1ns/1ps
module tb_four_bit_adder;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    four_bit_adder uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
        $monitor("Time=%0t A=%b B=%b Cin=%b | Sum=%b Cout=%b", $time, A, B, Cin, Sum, Cout);
        A=4'b0000; B=4'b0000; Cin=0; #10;
        A=4'b0011; B=4'b0101; Cin=0; #10;
        A=4'b1111; B=4'b0001; Cin=0; #10;
        A=4'b1010; B=4'b0101; Cin=1; #10;
        A=4'b1111; B=4'b1111; Cin=1; #10;
        $finish;
    end
endmodule
