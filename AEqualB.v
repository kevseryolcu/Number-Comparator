module AEqualB(M, k[4:0], a[4:0], b[4:0]);
	input [4:0] a, b;
	output M;
	output [4:0] k;
	
	xnor g1(k[4], a[4], b[4]);
	xnor g2(k[3], a[3], b[3]);
	xnor g3(k[2], a[2], b[2]);
	xnor g4(k[1], a[1], b[1]);
	xnor g5(k[0], a[0], b[0]);
	
	and g6(M, k[4], k[3], k[2], k[1], k[0]);
	
endmodule
