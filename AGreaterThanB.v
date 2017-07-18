module AGreaterThanB(Y, a[4:0], b[4:0], k[4:0]);
	input [4:0] a, b, k;
	wire [4:0] t, nb;
	output Y;
	
	not g1(nb[4], b[4]);
	not g2(nb[3], b[3]);
	not g3(nb[2], b[2]);
	not g4(nb[1], b[1]);
	not g5(nb[0], b[0]);
	
	and g6(t[4], a[4], nb[4]);
	and g7(t[3], a[3], nb[3], k[4]);
	and g8(t[2], a[2], nb[2], k[4], k[3]);
	and g9(t[1], a[1], nb[1], k[4], k[3], k[2]);
	and g10(t[0], a[0], nb[0], k[4], k[3], k[2], k[1]);
	
	or g11(Y, t[4], t[3], t[2], t[1], t[0]);
	
endmodule 