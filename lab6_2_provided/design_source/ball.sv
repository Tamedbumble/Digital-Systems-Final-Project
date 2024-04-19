//-------------------------------------------------------------------------
//    Ball.sv                                                            --
//    Viral Mehta                                                        --
//    Spring 2005                                                        --
//                                                                       --
//    Modified by Stephen Kempf     03-01-2006                           --
//                                  03-12-2007                           --
//    Translated by Joe Meng        07-07-2013                           --
//    Modified by Zuofu Cheng       08-19-2023                           --
//    Modified by Satvik Yellanki   12-17-2023                           --
//    Fall 2024 Distribution                                             --
//                                                                       --
//    For use with ECE 385 USB + HDMI Lab                                --
//    UIUC ECE Department                                                --
//-------------------------------------------------------------------------


module  ball 
( 
    input  logic        Reset, 
    input  logic        frame_clk,
    input  logic [63:0]  keycode,

    output logic [16:0]  X, 
    output logic [16:0]  Y, 
    output logic [9:0]  Size,
    output logic [5:0]  Angle,
    output logic [7:0]  X_vec,
    output logic [7:0]  Y_vec
);
    

	 
    parameter [9:0] X_Center=320;  // Center position on the X axis
    parameter [9:0] Y_Center=240;  // Center position on the Y axis
    parameter [9:0] X_Min=0;       // Leftmost point on the X axis
    parameter [9:0] X_Max=639;     // Rightmost point on the X axis
    parameter [9:0] Y_Min=0;       // Topmost point on the Y axis
    parameter [9:0] Y_Max=479;     // Bottommost point on the Y axis
    parameter [9:0] X_Step=3;      // Step size on the X axis
    parameter [9:0] Y_Step=3;      // Step size on the Y axis

    logic [16:0] X_Motion;
    logic [16:0] X_Motion_next;
    logic [16:0] Y_Motion;
    logic [16:0] Y_Motion_next;
    logic [5:0] Angle_Motion;
    logic [5:0] Angle_Motion_next;
    
    logic [16:0] X_pos, Y_pos;

    logic [16:0] X_next;
    logic [16:0] Y_next;
    logic [5:0] Angle_next;
    logic       W, A, S, D, LA, RA;
    
    cos_rom cos(
        .addr(Angle), 
        .value(X_vec));
    sin_rom sin(
        .addr(Angle), 
        .value(Y_vec));

    always_comb begin
        Y_Motion_next = 17'd0; 
        X_Motion_next = 17'd0;
        Angle_Motion_next = 6'd0;
        
        W = (keycode[7:0]==8'h1A)|(keycode[15:8]==8'h1A)|(keycode[23:16]==8'h1A)|(keycode[31:24]==8'h1A)|
            (keycode[39:32]==8'h1A)|(keycode[47:40]==8'h1A)|(keycode[55:48]==8'h1A)|(keycode[63:56]==8'h1A);
            
        A = (keycode[7:0]==8'h04)|(keycode[15:8]==8'h04)|(keycode[23:16]==8'h04)|(keycode[31:24]==8'h04)|
            (keycode[39:32]==8'h04)|(keycode[47:40]==8'h04)|(keycode[55:48]==8'h04)|(keycode[63:56]==8'h04);
            
        S = (keycode[7:0]==8'h16)|(keycode[15:8]==8'h16)|(keycode[23:16]==8'h16)|(keycode[31:24]==8'h16)|
            (keycode[39:32]==8'h16)|(keycode[47:40]==8'h16)|(keycode[55:48]==8'h16)|(keycode[63:56]==8'h16);
            
        D = (keycode[7:0]==8'h07)|(keycode[15:8]==8'h07)|(keycode[23:16]==8'h07)|(keycode[31:24]==8'h07)|
            (keycode[39:32]==8'h07)|(keycode[47:40]==8'h07)|(keycode[55:48]==8'h07)|(keycode[63:56]==8'h07);
            
        LA = (keycode[7:0]==8'h50)|(keycode[15:8]==8'h50)|(keycode[23:16]==8'h50)|(keycode[31:24]==8'h50)|
            (keycode[39:32]==8'h50)|(keycode[47:40]==8'h50)|(keycode[55:48]==8'h50)|(keycode[63:56]==8'h50);
            
        RA = (keycode[7:0]==8'h4f)|(keycode[15:8]==8'h4f)|(keycode[23:16]==8'h4f)|(keycode[31:24]==8'h4f)|
            (keycode[39:32]==8'h4f)|(keycode[47:40]==8'h4f)|(keycode[55:48]==8'h4f)|(keycode[63:56]==8'h4f);

        //modify to control ball motion with the keycode
        if (W!=0 && (A-D)!=0) begin // normalization factor (1.5 ~= sqrt(2))
            Y_Motion_next = 2*({Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec}*( {16'b0,W} - {16'b0,S} )
                          - {X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec}*( {16'b0,A} - {16'b0,D} ));
            X_Motion_next = 2*({X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec}*( {16'b0,W} - {16'b0,S} )
                          + {Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec}*( {16'b0,A} - {16'b0,D} ));
        end
        else begin
            Y_Motion_next = 3*({Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec}*( {16'b0,W} - {16'b0,S} )
                          - {X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec}*( {16'b0,A} - {16'b0,D} ));
            X_Motion_next = 3*({X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec[7],X_vec}*( {16'b0,W} - {16'b0,S} )
                          + {Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec[7],Y_vec}*( {16'b0,A} - {16'b0,D} ));
        
        end
        Angle_Motion_next = RA - LA;


//        if ( (Y + Size) >= Y_Max )  
//        begin
//            Y_Motion_next = -17'd384;
//        end
//        else if ( (Y - Size) <= Y_Min ) 
//        begin
//            Y_Motion_next = 17'd384;
//        end
//        if ( (X + Size) >= X_Max )
//        begin
//            X_Motion_next = -17'd384;
//        end
//        else if ( (X - Size) <= X_Min )
//        begin
//            X_Motion_next = 17'd384;
//        end  
    end

    assign Size = 16;  // default ball size
    assign X_next = (X_pos + X_Motion_next);
    assign Y_next = (Y_pos + Y_Motion_next);
    assign Angle_next = (Angle + Angle_Motion_next);
   
    always_ff @(posedge frame_clk) //make sure the frame clock is instantiated correctly
    begin: Move_Ball
        if (Reset)
        begin 
            Y_Motion <= 17'd0; 
			X_Motion <= 17'd0; 
            
			Y_pos <= {Y_Center,7'b0};
			X_pos <= {X_Center,7'b0};
			Angle <= 6'd0;
			
			Y <= Y_pos;
			X <= X_pos;
        end
        else 
        begin 

			Y_Motion <= Y_Motion_next; 
			X_Motion <= X_Motion_next; 
			Angle_Motion <= Angle_Motion_next;

            Y_pos <= Y_next;
            X_pos <= X_next;
            Angle <= Angle_next;
            
            Y <= Y_pos;
            X <= X_pos;
			
		end  
    end


    
      
endmodule
