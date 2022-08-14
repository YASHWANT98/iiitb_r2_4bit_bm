module iiitb_r2_4bit_bm(
	// control signals
	input clk,
	input load,
	input reset,

	//inputs
	input [3:0] M,
	input [3:0] Q,
	
	//outputs
	output reg [7:0] P

    );
	 
	 reg [3:0] A = 0;
	 reg Q_minus_one = 0;
	 reg [3:0] Q_temp = 0 ;
	 reg [3:0] M_temp = 0;
	 reg [1:0] Count = 2'b11;
	 
	 
	 
	 always @ (posedge clk)
	 begin
		if (load == 1)
		begin
			A = 0;		//initialise values
			Q_minus_one = 0;
			P = 0;
			Q_temp = Q;
			M_temp = M;
		end
		
		else if (reset == 1)
		begin
			A = 0;		//reset values
			Q_minus_one = 0;
			P = 0;
			Q_temp = 0;
			M_temp = 0;
			Count = 2'b11;
		end

		else if((Q_temp[0] == Q_minus_one ) && (Count >= 2'b0))
		begin
			Q_minus_one = Q_temp[0];
			Q_temp = {A[0],Q_temp[3:1]};			// right shift Q
			//A = A >>> 1;							
			A = {A[3],A[3:1]};						// right shift A	
			if (Count == 2'b0)
				Count = 2'b0; 
			else
			    Count = Count - 1'b1;					
		end
		else if((Q_temp[0] == 0 && Q_minus_one == 1)  && (Count >= 2'b0))
		begin
			A = A + M_temp;
			Q_minus_one = Q_temp[0];
			Q_temp = {A[0],Q_temp[3:1]};		// right shift Q
			//A = A >>> 1;
			A = {A[3],A[3:1]};					// right shift A
			if (Count == 2'b0)
				Count = 2'b0; 
			else
			    Count = Count - 1'b1;
		end
		else if((Q_temp[0] == 1 && Q_minus_one == 0)  && (Count >= 2'b0))
		begin
			A = A - M_temp;
			Q_minus_one = Q_temp[0];
			Q_temp = {A[0],Q_temp[3:1]};		// right shift Q
			//A = A >>> 1;
			A = {A[3],A[3:1]};					// right shift A
			if (Count == 2'b0)
				Count = 2'b0; 
			else
			    Count = Count - 1'b1;
		end

		P = {A, Q_temp};
		
	 end

endmodule
