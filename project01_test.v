module project01_test;
	wire [1:0] r;
	reg [4:0] a, b;
	
	project01 prj(r[1:0], a[4:0], b[4:0]);
	initial 
		begin
			a = 5'b00000;
			b = 5'b00000;
			#10;
			
			a = 5'b10110;
			b = 5'b00010;
			#10;
			
			a = 5'b00001;
			b = 5'b10000;
			#10;
			
			a = 5'b01000;
			b = 5'b01000;
			#10;
		end
	initial
		$monitor("InA = %b InB = %b r = %b", a, b, r);

endmodule 