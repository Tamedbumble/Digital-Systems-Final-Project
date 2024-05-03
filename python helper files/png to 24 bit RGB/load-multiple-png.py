from PIL import Image 
import sys

num_images =  1
count = 0
for im in range(num_images):
    # uncomment this to load each one in its own txt file
    # txtfile_name = "shotgun-" + str(im + 1) + ".txt"
    # uncomment this to load one file with every address in it
    # txtfile_name = "shotgun-all.txt"
    pngfile_name = "sprites/shotgun-" + str(im + 1) + ".png"
    input_image = Image.open(pngfile_name) 
    # pixel_data = open(txtfile_name, "a")
    width, height = input_image.size
    pixel_map = input_image.load()
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
            # pixel_data.writelines(data + "\n")
            count = count + 1
            
            pixel_map[j, i] = (r, g, b)
            print(r)
            print(g)
            print(b) 
            input_image.save("shotgun-" + str(im + 1) + "test.png", format="png") 
  

# pixel_data.close()
