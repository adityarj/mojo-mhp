/*
<<<<<<< HEAD
   This file was generated automatically by the Mojo IDE version B1.3.2.
=======
   This file was generated automatically by the Mojo IDE version B1.3.3.
>>>>>>> c98ac4459797c5a4f57e312d9676e6f19fa2ae75
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
<<<<<<< HEAD
    output reg [4:0] io_led,
=======
    output reg [1:0] led,
>>>>>>> c98ac4459797c5a4f57e312d9676e6f19fa2ae75
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
<<<<<<< HEAD
    output reg a,
    output reg b,
    output reg c,
    input sum,
    input carry,
    input [2:0] io_dip
=======
    input button1,
    input button2,
    input button3,
    input sum,
    input carry,
    output reg o1,
    output reg o2,
    output reg o3
>>>>>>> c98ac4459797c5a4f57e312d9676e6f19fa2ae75
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
<<<<<<< HEAD
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    io_led[0+0-:1] = io_dip[0+0-:1];
    io_led[1+0-:1] = io_dip[1+0-:1];
    io_led[2+0-:1] = io_dip[2+0-:1];
    a = io_dip[0+0-:1];
    b = io_dip[1+0-:1];
    c = io_dip[2+0-:1];
    io_led[3+0-:1] = sum;
    io_led[4+0-:1] = carry;
=======
    led = 8'h00;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    o1 = {4'h8{button1}};
    o2 = {4'h8{button2}};
    o3 = {4'h8{button3}};
    led[1+0-:1] = {4'h8{sum}};
    led[0+0-:1] = {4'h8{carry}};
>>>>>>> c98ac4459797c5a4f57e312d9676e6f19fa2ae75
  end
endmodule
