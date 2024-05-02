from PIL import Image 
import sys
  
# Import an image from directory: 
input_image = Image.open("sprites/shotgun-6.png") 
pixel_data = open("shotgun-6.txt", "a")
  
width, height = input_image.size 
start = 0
count = start

for i in range(height): 
    for j in range(width): 
        
        # getting the RGB pixel value. 
        r, g, b, p = input_image.getpixel((j, i)) 
        rs = str(format(r, '08b'))
        gs = str(format(g, '08b'))
        bs = str(format(b, '08b'))
          
        # if i == 189 and j == 118:
        # print("16'd",count, ":  memContents =  24'b", rs + gs + bs, " ;", sep = '')
        data = "16'd" + str(count) + ":  memContents =  24'b" + rs + gs + bs +  " ;"
        pixel_data.writelines(data + "\n")
        count = count + 1
  

pixel_data.close()