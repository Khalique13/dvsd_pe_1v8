/* Generated by Yosys 0.9+4052 (git sha1 d061b0e, gcc 8.3.1 -fPIC -Os) */

module priority_encoder(in, en, out, gs, eno);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  input en;
  output eno;
  output gs;
  input [7:0] in;
  output [2:0] out;
  sky130_fd_sc_hd__buf_1 _11_ (
    .A(en),
    .X(_00_)
  );
  sky130_fd_sc_hd__inv_2 _12_ (
    .A(in[6]),
    .Y(_01_)
  );
  sky130_fd_sc_hd__inv_2 _13_ (
    .A(in[4]),
    .Y(_02_)
  );
  sky130_fd_sc_hd__inv_2 _14_ (
    .A(in[2]),
    .Y(_03_)
  );
  sky130_fd_sc_hd__o21a_2 _15_ (
    .A1(in[1]),
    .A2(_03_),
    .B1(in[3]),
    .X(_04_)
  );
  sky130_fd_sc_hd__o21a_2 _16_ (
    .A1(_02_),
    .A2(_04_),
    .B1(in[5]),
    .X(_05_)
  );
  sky130_fd_sc_hd__o32a_2 _17_ (
    .A1(_00_),
    .A2(_01_),
    .A3(_05_),
    .B1(en),
    .B2(in[7]),
    .X(out[0])
  );
  sky130_fd_sc_hd__inv_2 _18_ (
    .A(in[5]),
    .Y(_06_)
  );
  sky130_fd_sc_hd__a211o_2 _19_ (
    .A1(in[2]),
    .A2(in[3]),
    .B1(_02_),
    .C1(_06_),
    .X(_07_)
  );
  sky130_fd_sc_hd__a31o_2 _20_ (
    .A1(in[6]),
    .A2(in[7]),
    .A3(_07_),
    .B1(_00_),
    .X(out[1])
  );
  sky130_fd_sc_hd__a41o_2 _21_ (
    .A1(in[6]),
    .A2(in[7]),
    .A3(in[4]),
    .A4(in[5]),
    .B1(_00_),
    .X(out[2])
  );
  sky130_fd_sc_hd__or2_2 _22_ (
    .A(in[1]),
    .B(in[2]),
    .X(_08_)
  );
  sky130_fd_sc_hd__or4_2 _23_ (
    .A(in[3]),
    .B(in[5]),
    .C(in[7]),
    .D(in[0]),
    .X(_09_)
  );
  sky130_fd_sc_hd__or4_2 _24_ (
    .A(in[4]),
    .B(in[6]),
    .C(_08_),
    .D(_09_),
    .X(_10_)
  );
  sky130_fd_sc_hd__nand2b_2 _25_ (
    .A_N(_00_),
    .B(_10_),
    .Y(eno)
  );
  sky130_fd_sc_hd__or2_2 _26_ (
    .A(_00_),
    .B(_10_),
    .X(gs)
  );
endmodule
