module Encoder(r[1:0], I3, I1, I0);
	input I3, I1,I0;
	output [1:0] r;
	wire t;
	
	or g1(r[1], I0, I1);
	nor g2(t, I3, I1);
	or g3(r[0], t, I0);

endmodule
	
