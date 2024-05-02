from PIL import Image 
import sys
  
# Import an image from directory: 
input_image = Image.open("Weapons Doom Alpha.png") 
pixel_data = open("text_data.txt", "a")
  
# Extracting pixel map: 
pixel_map = input_image.load() 
  
width, height = input_image.size 
count = 0

for i in range(width): 
    for j in range(height): 
        
        # getting the RGB pixel value. 
        r, g, b = input_image.getpixel((i, j)) 
        rs = str(format(r, '08b'))
        gs = str(format(g, '08b'))
        bs = str(format(b, '08b'))
          
        # if i == 189 and j == 118:
        # print("16'd",count, ":  memContents =  24'b", rs + gs + bs, " ;", sep = '')
        data = "16'd" + str(count) + ":  memContents =  24'b" + rs + gs + bs +  " ;"
        pixel_data.writelines(data + "\n")
        count = count + 1
  

pixel_data.close()
