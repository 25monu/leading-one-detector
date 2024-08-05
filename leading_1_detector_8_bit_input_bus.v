module leading_1_detector_8_bit_input_bus(
input [7:0] data,
output reg[3:0] leading_one 
    );
    
    always@(*)
    begin
    
    casex (data)
    
    8'b00000000 : leading_one = 4'd1;
    8'b0000001x : leading_one = 4'd2;
    8'b000001xx : leading_one = 4'd3;
    8'b00001xxx : leading_one = 4'd4;
    
    8'b0001xxxx : leading_one = 4'd5;
    8'b001xxxxx : leading_one = 4'd6;
    8'b01xxxxxx : leading_one = 4'd7;
    8'b1xxxxxxx : leading_one = 4'd8;
        default : leading_one = 4'd0;
    endcase
  end           
endmodule
