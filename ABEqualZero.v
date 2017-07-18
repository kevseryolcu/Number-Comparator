module ABEqualZero(N, a[4:0], b[4:0]);
	input [4:0] a, b;
	output N;
	
	nor g(N, a[4], a[3], a[2], a[1], a[0], b[4], b[3], b[2], b[1], b[0]);
	
endmodule 