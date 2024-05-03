//-------------------------------------------------------------------------
//    Color_Mapper.sv                                                    --
//    Stephen Kempf                                                      --
//    3-1-06                                                             --
//                                                                       --
//    Modified by David Kesler  07-16-2008                               --
//    Translated by Joe Meng    07-07-2013                               --
//    Modified by Zuofu Cheng   08-19-2023                               --
//                                                                       --
//    Fall 2023 Distribution                                             --
//                                                                       --
//    For use with ECE 385 USB + HDMI                                    --
//    University of Illinois ECE Department                              --
//-------------------------------------------------------------------------


module  color_mapper ( input  logic [9:0] X, Y, DrawX, DrawY, size,
                       input  logic [7:0] x_vec, y_vec,
                       input logic [1:0] wall_on,
                       input logic sprite_on,
                       input logic [2:0] wall_color,
                       input logic [23:0] sprite_color,
                       input logic [11:0] memdata,
                       input logic [15:0] brightness,
                       
                       input  logic [9:0] debugX[5], debugY[5],
                       output logic [7:0]  Red, Green, Blue );
                       
    parameter [9:0] Y_Center=240;
    
    logic player_on;
    logic [7:0] x_vec, y_vec;
    logic [9:0] x_vec_coords[9], y_vec_coords[9];
    logic [9:0] ray_width;
    logic [9:0] DrawXMap, DrawYMap;
	  
    int DistX, DistY, Size;
    assign DrawXMap = {DrawX[7:0], 2'b0};
    assign DrawYMap = {DrawY[7:0], 2'b0};
    assign DistX = DrawXMap - X;
    assign DistY = DrawYMap - Y;
    assign Size = size;
    assign ray_width = 1'd1;
    
  
    always_comb
    begin:Ball_on_proc
        if ( (DistX*DistX + DistY*DistY) <= (Size * Size) )
            player_on = 1'b1;
        else 
            player_on = 1'b0;
     end 
    
    always_comb
    begin
        x_vec_coords[8] = X + {{2{x_vec[7]}},x_vec}; // X+{x_vec[7],x_vec[7],x_vec};
        y_vec_coords[8] = Y + {{2{y_vec[7]}},y_vec}; //{y_vec[7],y_vec[7],y_vec};
        
        x_vec_coords[4] = X+{x_vec[7],x_vec[7],x_vec[7],x_vec[7:1]};
        y_vec_coords[4] = Y+{y_vec[7],y_vec[7],y_vec[7],y_vec[7:1]};
        
        x_vec_coords[2] = X+{x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:2]};
        y_vec_coords[2] = Y+{y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:2]};
        
        x_vec_coords[1] = X+{x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:3]};
        y_vec_coords[1] = Y+{y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:3]};
        
        x_vec_coords[0] = X+{x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7]};
        y_vec_coords[0] = Y+{y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7]};
        
        x_vec_coords[6] = X + {x_vec[7],x_vec[7],x_vec[7],x_vec[7:1]} + {x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:2]};
        y_vec_coords[6] = Y + {y_vec[7],y_vec[7],y_vec[7],y_vec[7:1]} + {y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:2]};
        
        x_vec_coords[7] = X + {x_vec[7],x_vec[7],x_vec[7],x_vec[7:1]} + {x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:2]} + {x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:3]};
        y_vec_coords[7] = Y + {y_vec[7],y_vec[7],y_vec[7],y_vec[7:1]} + {y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:2]} + {y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:3]};
        
        x_vec_coords[5] = X + {x_vec[7],x_vec[7],x_vec[7],x_vec[7:1]} + {x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:3]};
        y_vec_coords[5] = Y + {y_vec[7],y_vec[7],y_vec[7],y_vec[7:1]} + {y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:3]};
        
        x_vec_coords[3] = X + {x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:2]} + {x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:3]};
        y_vec_coords[3] = Y + {y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:2]} + {y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:3]};
    end
    
    always_comb
    begin:RGB_Display
        Red = 8'h0; 
        Green = 8'h0;
        Blue = 8'h40;
        if ((player_on == 1'b1) && DrawX<=160 && DrawY<=120) begin 
            Red = 8'hff;
            Green = 8'h7f;
            Blue = 8'h00;
        end
        else if(wall_on == 2'b1) begin
            Red = (wall_color[0]) ? 8'hff : 8'h00;
            Green = (wall_color[1]) ? 8'hff : 8'h00;
            Blue = (wall_color[2]) ? 8'hff : 8'h00;
        end
        else if(wall_on == 2'b10) begin
            Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
        end
           
//        if (DrawY == Y && DrawX>=X && DrawX<=X+{x_vec[7],x_vec[7],x_vec})
//        begin
//            Blue = 4'hf;
//            Red = 4'h0;
//            Green = 4'h0;
//        end      
//        else if (DrawY == Y && DrawX>=X+{x_vec[7],x_vec[7],x_vec} && DrawX<=X)
//        begin
//            Blue = 4'h0;
//            Red = 4'h0;
//            Green = 4'hf;
//        end
        
//        if (DrawX == X && DrawY>=Y && DrawY<=Y+{y_vec[7],y_vec[7],y_vec})
//        begin
//            Blue = 4'h0;
//            Red = 4'h0;
//            Green = 4'hf;
//        end      
//        else if (DrawX == X && DrawY>=Y+{y_vec[7],y_vec[7],y_vec} && DrawY<=Y)
//        begin
//            Blue = 4'h0;
//            Red = 4'h0;
//            Green = 4'hf;
//        end
        if (DrawX<=160 && DrawY<=120 && (
            DrawYMap>=y_vec_coords[0]-ray_width  && DrawXMap>=x_vec_coords[0]-ray_width  && DrawYMap<=y_vec_coords[0]+ray_width  && DrawXMap<=x_vec_coords[0]+ray_width ||
            DrawYMap>=y_vec_coords[1]-ray_width  && DrawXMap>=x_vec_coords[1]-ray_width  && DrawYMap<=y_vec_coords[1]+ray_width  && DrawXMap<=x_vec_coords[1]+ray_width ||
            DrawYMap>=y_vec_coords[2]-ray_width  && DrawXMap>=x_vec_coords[2]-ray_width  && DrawYMap<=y_vec_coords[2]+ray_width  && DrawXMap<=x_vec_coords[2]+ray_width ||
            DrawYMap>=y_vec_coords[3]-ray_width  && DrawXMap>=x_vec_coords[3]-ray_width  && DrawYMap<=y_vec_coords[3]+ray_width  && DrawXMap<=x_vec_coords[3]+ray_width ||
            DrawYMap>=y_vec_coords[4]-ray_width  && DrawXMap>=x_vec_coords[4]-ray_width  && DrawYMap<=y_vec_coords[4]+ray_width  && DrawXMap<=x_vec_coords[4]+ray_width ||
            DrawYMap>=y_vec_coords[5]-ray_width  && DrawXMap>=x_vec_coords[5]-ray_width  && DrawYMap<=y_vec_coords[5]+ray_width  && DrawXMap<=x_vec_coords[5]+ray_width ||
            DrawYMap>=y_vec_coords[6]-ray_width  && DrawXMap>=x_vec_coords[6]-ray_width  && DrawYMap<=y_vec_coords[6]+ray_width  && DrawXMap<=x_vec_coords[6]+ray_width ||
            DrawYMap>=y_vec_coords[7]-ray_width  && DrawXMap>=x_vec_coords[7]-ray_width  && DrawYMap<=y_vec_coords[7]+ray_width  && DrawXMap<=x_vec_coords[7]+ray_width ||
            DrawYMap>=y_vec_coords[8]-ray_width  && DrawXMap>=x_vec_coords[8]-ray_width  && DrawYMap<=y_vec_coords[8]+ray_width  && DrawXMap<=x_vec_coords[8]+ray_width
            ))
        begin
                Blue = 8'hff;
                Red = 8'hff;
                Green = 8'hff;
        end
//        if ((DrawY >= debugY[0]-ray_width-1'b1 && DrawY <= debugY[0]+ray_width+1'b1  && 
//             DrawX >= debugX[0]-ray_width-1'b1 && DrawX <= debugX[0]+ray_width+1'b1) ||
//            (DrawY >= debugY[1]-ray_width-1'b1 && DrawY <= debugY[1]+ray_width+1'b1  && 
//             DrawX >= debugX[1]-ray_width-1'b1 && DrawX <= debugX[1]+ray_width+1'b1) ||
//            (DrawY >= debugY[2]-ray_width-1'b1 && DrawY <= debugY[2]+ray_width+1'b1  && 
//             DrawX >= debugX[2]-ray_width-1'b1 && DrawX <= debugX[2]+ray_width+1'b1) ||
//            (DrawY >= debugY[3]-ray_width-1'b1 && DrawY <= debugY[3]+ray_width+1'b1  && 
//             DrawX >= debugX[3]-ray_width-1'b1 && DrawX <= debugX[3]+ray_width+1'b1) ||
//            (DrawY >= debugY[4]-ray_width-1'b1 && DrawY <= debugY[4]+ray_width+1'b1  && 
//             DrawX >= debugX[4]-ray_width-1'b1 && DrawX <= debugX[4]+ray_width+1'b1)
//            )
//        begin
//            Red = 4'hf;
//            Green = 4'h0;
//            Blue = 4'h0;
//        end
        
        if (~(DrawX<=160 && DrawY<=120)) begin 
            if(sprite_on == 1'b1 && sprite_color != 24'b000000001111111111111111) begin
                Red = sprite_color[23:16];
                Green = sprite_color[15:8];
                Blue = sprite_color[7:0];
            end
            else if (DrawY < Y_Center - memdata[7:0] && memdata[7:0] < Y_Center) begin
                Red = 8'h3f;
                Green = 8'h3f;
                Blue = 8'h7f;  
            end
            else if (DrawY > Y_Center + memdata[7:0] && memdata[7:0] < Y_Center) begin
                Red = 8'h7f;
                Green = 8'h3f;
                Blue = 8'h3f;                  
            end
            else begin
                if (memdata[8]) begin // goal wall
                    Red = 8'h0;
                    Green = 8'hff;
                    Blue = 8'h0;
                end
                else if (brightness[15] || brightness[14]) begin
                    Red = (wall_color[0]) ? 8'hff : 8'h00;
                    Green = (wall_color[1]) ? 8'hff : 8'h00;
                    Blue = (wall_color[2]) ? 8'hff : 8'h00;
                end
                else begin
                    Red = (wall_color[0]) ? brightness[13:6] : 8'h00;
                    Green = (wall_color[1]) ? brightness[13:6] : 8'h00;
                    Blue = (wall_color[2]) ? brightness[13:6] : 8'h00;      
                end
            end
        end
    end
endmodule
