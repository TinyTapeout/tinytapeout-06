`default_nettype none

// just a stub to keep the Tiny Tapeout tools happy

module tt_um_mattvenn_r2r_dac (
    input  wire       VGND,
    input  wire       VPWR,
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    inout  wire [7:0] ua, // analog pins
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);
    wire [7:0] r2r_out;

    // ties for the output enables
    assign uio_oe[0] = VGND;
    assign uio_oe[1] = VGND;
//  assign uio_oe[2] = VGND;

    r2r_dac_control r2r_dac_control(
        .clk(clk),                  // expect a 10M clock
        .n_rst(rst_n),
        .ext_data(uio_in[0]),       // if this is high, then DAC data comes from ui_in[7:0]
        .load_divider(uio_in[1]),   // load value set on data to the clock divider
        .data(ui_in),               // connect to ui_in[7:0]
        .r2r_out(r2r_out),          // 8 bit out to the R2R DAC
        .VPWR(VPWR),
        .VGND(VGND)
        );

    r2r r2r(
        .b0(r2r_out[0]),
        .b1(r2r_out[1]),
        .b2(r2r_out[2]),
        .b3(r2r_out[3]),
        .b4(r2r_out[4]),
        .b5(r2r_out[5]),
        .b6(r2r_out[6]),
        .b7(r2r_out[7]),
        .out(ua[0]),
        .VSUBS(VGND),
        .GND(VGND)
        );

endmodule
