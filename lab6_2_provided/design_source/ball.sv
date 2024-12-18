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
    input logic coll_next,
    input logic [4:0] goalx, goaly,
    input logic [4:0] startx, starty,
    
    output logic [16:0] X, 
    output logic [16:0] Y, 
    output logic [9:0]  Size,
    output logic [11:0] Angle,
    output logic [7:0]  X_vec,
    output logic [7:0]  Y_vec,
    output logic [4:0]  X_coll, // variables to check for collision
    output logic [4:0]  Y_coll,
    output logic        success
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
//    logic [5:0] t, t_next;
    logic [11:0] Angle_Motion;
    logic [11:0] Angle_Motion_next;
    
    logic [16:0] X_pos, Y_pos;

    logic [16:0] X_next;
    logic [16:0] Y_next;
    logic [11:0] Angle_next;
    logic       W, A, S, D, LA, RA;
    
//    logic [5:0] angles[5];
//    logic [5:0] ts[5];
//    logic [7:0] xvecs[5];
//    logic [7:0] yvecs[5];
    
//    assign angles[0] = Angle;
//    assign X_vec = xvecs[0];
//    assign Y_vec = yvecs[0];
//    assign ts[0] = t;
    
//    cos_sin_rom cos_sin(
//        .addr('{Angle}), 
//        .cosvalue('{X_vec}), 
//        .sinvalue('{Y_vec})
//        );
    angtovecs #(.n(1)) cos_sin(
        .Angle('{Angle[11:6]}),
        .t('{Angle[5:0]}),
        .Xvec('{X_vec}), 
        .Yvec('{Y_vec})
    );

    always_comb begin
        Y_Motion_next = 17'd0; 
        X_Motion_next = 17'd0;
        Angle_Motion_next = 12'd0;
        
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
        if ((W-S)!=0 && (A-D)!=0) begin // normalization factor (1.5 ~= sqrt(2))
            Y_Motion_next = 2*({ { 9{Y_vec[7]} },Y_vec }*( {16'b0,W} - {16'b0,S} )
                          - { { 9{X_vec[7]} },X_vec}*( {16'b0,A} - {16'b0,D} ));
            X_Motion_next = 2*({ { 9{X_vec[7]} },X_vec}*( {16'b0,W} - {16'b0,S} )
                          + { { 9{Y_vec[7]} },Y_vec }*( {16'b0,A} - {16'b0,D} ));
        end
        else begin
            Y_Motion_next = 3*({ { 9{Y_vec[7]} },Y_vec }*( {16'b0,W} - {16'b0,S} )
                          - { { 9{X_vec[7]} },X_vec}*( {16'b0,A} - {16'b0,D} ));
            X_Motion_next = 3*({ { 9{X_vec[7]} },X_vec}*( {16'b0,W} - {16'b0,S} )
                          + { { 9{Y_vec[7]} },Y_vec }*( {16'b0,A} - {16'b0,D} ));
        
        end
        Angle_Motion_next = (RA - LA) << 4;
//        Angle_Motion_next = 6'd0;
//        t_next = RA - LA;
//        if (t_next == 6'b1 && t+t_next == 6'b0) Angle_Motion_next = 6'b1;
//        else if (t_next == -6'b1 && t == 6'b0) Angle_Motion_next = -6'b1;


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
    assign Y_coll = Y_next[16:12];
    assign X_coll = X_next[16:12];
   
    always_ff @(posedge frame_clk) //make sure the frame clock is instantiated correctly
    begin: Move_Ball
        if (Reset)
        begin 
            success <= 1'b0;
            Y_Motion <= 17'd0; 
			X_Motion <= 17'd0; 
            
			Y_pos <= {5'd6,12'b0};
			X_pos <= {5'd6,12'b0};
			Angle <= 6'd0;
			
			Y <= Y_pos;
			X <= X_pos;
//			t <= 6'd0;
        end
        else 
        begin 
            if(coll_next == 1'b0) begin
                Y_Motion <= Y_Motion_next; 
                X_Motion <= X_Motion_next;
                Angle_Motion <= Angle_Motion_next;
//                t <= t+t_next;
    
                Y_pos <= Y_next;
                X_pos <= X_next;
                Angle <= Angle_next;
                
                Y <= Y_pos;
                X <= X_pos;
			end
			else if (goalx == X_coll && goaly == Y_coll) success <= 1'b1;
		end  
    end


    
      
endmodule