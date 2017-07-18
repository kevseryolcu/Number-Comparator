module project01 (r[1:0], a[4:0], b[4:0]);
	input [4:0] a, b;
	output [1:0] r;
	wire X, Y, Z, W, M, N, R;
	wire [4:0] k;
	
	AEqualB AEB(M, k[4:0], a[4:0], b[4:0]);
	AGreaterThanB AGTB(Y, a[4:0], b[4:0], k[4:0]);
	ABEqualZero ABEZ(N, a[4:0], b[4:0]);
	ASmallerThanB ASTB(Z, Y, M);
	
	and g1(X, N, M);
	not g2(R, N);
	and g3(W, R, M);

	Encoder enc(r[1:0], X, Z, W);

endmodule 