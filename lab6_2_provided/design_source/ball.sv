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

    output logic [9:0]  BallX, 
    output logic [9:0]  BallY, 
    output logic [9:0]  BallS,
    output logic [5:0]  BallAngle
);
    

	 
    parameter [9:0] Ball_X_Center=320;  // Center position on the X axis
    parameter [9:0] Ball_Y_Center=240;  // Center position on the Y axis
    parameter [9:0] Ball_X_Min=0;       // Leftmost point on the X axis
    parameter [9:0] Ball_X_Max=639;     // Rightmost point on the X axis
    parameter [9:0] Ball_Y_Min=0;       // Topmost point on the Y axis
    parameter [9:0] Ball_Y_Max=479;     // Bottommost point on the Y axis
    parameter [9:0] Ball_X_Step=3;      // Step size on the X axis
    parameter [9:0] Ball_Y_Step=3;      // Step size on the Y axis

    logic [9:0] Ball_X_Motion;
    logic [9:0] Ball_X_Motion_next;
    logic [9:0] Ball_Y_Motion;
    logic [9:0] Ball_Y_Motion_next;
    logic [5:0] Ball_Angle_Motion;
    logic [5:0] Ball_Angle_Motion_next;

    logic [9:0] Ball_X_next;
    logic [9:0] Ball_Y_next;
    logic [5:0] Ball_Angle_next;
    logic       W, A, S, D, LA, RA;

    always_comb begin
        Ball_Y_Motion_next = 10'd0; // set default motion to be same as prev clock cycle 
        Ball_X_Motion_next = 10'd0;
        Ball_Angle_Motion_next = 6'd0;
        
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
        Ball_Y_Motion_next = 3 * (S - W);
        Ball_X_Motion_next = 3 * (D - A);
        Ball_Angle_Motion_next = RA - LA;
        
        if((S - W) != 1'b0 && (D - A) != 1'b0)
        begin
            Ball_Y_Motion_next = 2 * (S - W);
            Ball_X_Motion_next = 2 * (D - A);
        end


        if ( (BallY + BallS) >= Ball_Y_Max )  // Ball is at the bottom edge, BOUNCE!
        begin
            Ball_Y_Motion_next = (~ (Ball_Y_Step) + 1'b1);  // set to -1 via 2's complement.
        end
        else if ( (BallY - BallS) <= Ball_Y_Min )  // Ball is at the top edge, BOUNCE!
        begin
            Ball_Y_Motion_next = Ball_Y_Step;
        end  
       //fill in the rest of the motion equations here to bounce left and right
        if ( (BallX + BallS) >= Ball_X_Max )  // Ball is at the bottom edge, BOUNCE!
        begin
            Ball_X_Motion_next = (~ (Ball_X_Step) + 1'b1);  // set to -1 via 2's complement.
        end
        else if ( (BallX - BallS) <= Ball_X_Min )  // Ball is at the top edge, BOUNCE!
        begin
            Ball_X_Motion_next = Ball_X_Step;
        end  
    end

    assign BallS = 16;  // default ball size
    assign Ball_X_next = (BallX + Ball_X_Motion_next);
    assign Ball_Y_next = (BallY + Ball_Y_Motion_next);
    assign Ball_Angle_next = (BallAngle + Ball_Angle_Motion_next);
   
    always_ff @(posedge frame_clk) //make sure the frame clock is instantiated correctly
    begin: Move_Ball
        if (Reset)
        begin 
            Ball_Y_Motion <= 10'd0; //Ball_Y_Step;
			Ball_X_Motion <= 10'd0; //Ball_X_Step;
            
			BallY <= Ball_Y_Center;
			BallX <= Ball_X_Center;
			BallAngle <= 0;
        end
        else 
        begin 

			Ball_Y_Motion <= Ball_Y_Motion_next; 
			Ball_X_Motion <= Ball_X_Motion_next; 
			Ball_Angle_Motion <= Ball_Angle_Motion_next;

            BallY <= Ball_Y_next;  // Update ball position
            BallX <= Ball_X_next;
            BallAngle <= Ball_Angle_next;
			
		end  
    end


    
      
endmodule
