  'timescale 1ns / 1ps

module iiitb_r2_4bit_bm_tb;

	// Inputs
	reg clk;
	reg load;
	reg reset;
	reg [3:0] M;
	reg [3:0] Q;

	// Outputs
	wire [7:0] P;

	// Instantiate the Design Under Test (DUT)
	 iiitb_r2_4bit_bm dut (
		.clk(clk), 
		.load(load), 
		.reset(reset), 
		.M(M), 
		.Q(Q), 
		.P(P)
	);
	
	always
		#10 clk = ~clk;
  
  initial 
    begin
      $dumpfile("design.vcd");
        $dumpvars(0,iiitb_r2_4bit_bm_tb );
      $monitor ( $time, " Q = %b, M = %b, P = %b,Q_t = %b, Q-1 = %b, M_t = %b", Q, M, P, dut.Q_temp, dut.Q_minus_one, dut.M_temp);
    end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		load = 0;
		reset = 0;
		M = 4'b1010;
		Q = 4'b1011;
		#2;
		load = 1;
		#12;
		load = 0;
		
		#90 $finish;

	end
      
endmodule