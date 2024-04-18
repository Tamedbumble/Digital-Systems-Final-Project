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
                       input logic wall_on,
                       input logic [11:0] wall_color,
                       output logic [3:0]  Red, Green, Blue );
    
    logic player_on;
    logic [7:0] x_vec, y_vec;
    logic [9:0] x_vec_coords[12], y_vec_coords[12];
    logic [9:0] ray_width;
	  
    int DistX, DistY, Size;
    assign DistX = DrawX - X;
    assign DistY = DrawY - Y;
    assign Size = size;
    assign ray_width = 10'd1;
  
    always_comb
    begin:Ball_on_proc
        if ( (DistX*DistX + DistY*DistY) <= (Size * Size) )
            player_on = 1'b1;
        else 
            player_on = 1'b0;
     end 
    
    always_comb
    begin
        x_vec_coords[11] = X+{x_vec[7],x_vec[7],x_vec};
        y_vec_coords[11] = Y+{y_vec[7],y_vec[7],y_vec};
        
        x_vec_coords[7] = X+{x_vec[7],x_vec[7],x_vec[7],x_vec[7:1]};
        y_vec_coords[7] = Y+{y_vec[7],y_vec[7],y_vec[7],y_vec[7:1]};
        
        x_vec_coords[5] = X+{x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:2]};
        y_vec_coords[5] = Y+{y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:2]};
        
        x_vec_coords[4] = X+{x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:3]};
        y_vec_coords[4] = Y+{y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:3]};
        
        x_vec_coords[3] = X+{x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:4]};
        y_vec_coords[3] = Y+{y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:4]};
        
        x_vec_coords[2] = X+{x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:5]};
        y_vec_coords[2] = Y+{y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:5]};
        
        x_vec_coords[1] = X+{x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:6]};
        y_vec_coords[1] = Y+{y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:6]};
        
        x_vec_coords[0] = X+{x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7]};
        y_vec_coords[0] = Y+{y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7]};
        
        x_vec_coords[9] = X + {x_vec[7],x_vec[7],x_vec[7],x_vec[7:1]} + {x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:2]};
        y_vec_coords[9] = Y + {y_vec[7],y_vec[7],y_vec[7],y_vec[7:1]} + {y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:2]};
        
        x_vec_coords[10] = X + {x_vec[7],x_vec[7],x_vec[7],x_vec[7:1]} + {x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:2]} + {x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:3]};
        y_vec_coords[10] = Y + {y_vec[7],y_vec[7],y_vec[7],y_vec[7:1]} + {y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:2]} + {y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:3]};
        
        x_vec_coords[8] = X + {x_vec[7],x_vec[7],x_vec[7],x_vec[7:1]} + {x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:3]};
        y_vec_coords[8] = Y + {y_vec[7],y_vec[7],y_vec[7],y_vec[7:1]} + {y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:3]};
        
        x_vec_coords[6] = X + {x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:2]} + {x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7],x_vec[7:3]};
        y_vec_coords[6] = Y + {y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:2]} + {y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7],y_vec[7:3]};
    end
    
    always_comb
    begin:RGB_Display
        if ((player_on == 1'b1)) begin 
            Red = 4'hf;
            Green = 4'h7;
            Blue = 4'h0;
        end
        else if(wall_on == 1'b1) begin
            Red = wall_color[11:8];
            Green = wall_color[7:4];
            Blue = wall_color[3:0];
        end     
        else begin 
            Red = 4'h0; 
            Green = 4'h0;
            Blue = 4'h4;
        end 
           
        if (DrawY == Y && DrawX>=X && DrawX<=X+{x_vec[7],x_vec[7],x_vec})
        begin
            Blue = 4'hf;
            Red = 4'h0;
            Green = 4'h0;
        end      
        else if (DrawY == Y && DrawX>=X+{x_vec[7],x_vec[7],x_vec} && DrawX<=X)
        begin
            Blue = 4'h0;
            Red = 4'h0;
            Green = 4'hf;
        end
        
        if (DrawX == X && DrawY>=Y && DrawY<=Y+{y_vec[7],y_vec[7],y_vec})
        begin
            Blue = 4'h0;
            Red = 4'h0;
            Green = 4'hf;
        end      
        else if (DrawX == X && DrawY>=Y+{y_vec[7],y_vec[7],y_vec} && DrawY<=Y)
        begin
            Blue = 4'h0;
            Red = 4'h0;
            Green = 4'hf;
        end
        if (DrawY>=y_vec_coords[0]-ray_width  && DrawX>=x_vec_coords[0]-ray_width  && DrawY<=y_vec_coords[0]+ray_width  && DrawX<=x_vec_coords[0]+ray_width ||
            DrawY>=y_vec_coords[3]-ray_width  && DrawX>=x_vec_coords[3]-ray_width  && DrawY<=y_vec_coords[3]+ray_width  && DrawX<=x_vec_coords[3]+ray_width ||
            DrawY>=y_vec_coords[4]-ray_width  && DrawX>=x_vec_coords[4]-ray_width  && DrawY<=y_vec_coords[4]+ray_width  && DrawX<=x_vec_coords[4]+ray_width ||
            DrawY>=y_vec_coords[5]-ray_width  && DrawX>=x_vec_coords[5]-ray_width  && DrawY<=y_vec_coords[5]+ray_width  && DrawX<=x_vec_coords[5]+ray_width ||
            DrawY>=y_vec_coords[6]-ray_width  && DrawX>=x_vec_coords[6]-ray_width  && DrawY<=y_vec_coords[6]+ray_width  && DrawX<=x_vec_coords[6]+ray_width ||
            DrawY>=y_vec_coords[7]-ray_width  && DrawX>=x_vec_coords[7]-ray_width  && DrawY<=y_vec_coords[7]+ray_width  && DrawX<=x_vec_coords[7]+ray_width ||
            DrawY>=y_vec_coords[8]-ray_width  && DrawX>=x_vec_coords[8]-ray_width  && DrawY<=y_vec_coords[8]+ray_width  && DrawX<=x_vec_coords[8]+ray_width ||
            DrawY>=y_vec_coords[9]-ray_width  && DrawX>=x_vec_coords[9]-ray_width  && DrawY<=y_vec_coords[9]+ray_width  && DrawX<=x_vec_coords[9]+ray_width ||
            DrawY>=y_vec_coords[10]-ray_width && DrawX>=x_vec_coords[10]-ray_width && DrawY<=y_vec_coords[10]+ray_width && DrawX<=x_vec_coords[10]+ray_width||
            DrawY>=y_vec_coords[11]-ray_width && DrawX>=x_vec_coords[11]-ray_width && DrawY<=y_vec_coords[11]+ray_width && DrawX<=x_vec_coords[11]+ray_width
            )
        begin
                Blue = 4'hf;
                Red = 4'hf;
                Green = 4'hf;
        end
    end
endmodule
