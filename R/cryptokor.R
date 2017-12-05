
# setup ----

library(hexSticker) # devtools::install_github('GuangchuangYu/hexSticker')

# main

imgurl <- "assets/moon2.jpg"

sticker(imgurl, package = 'cryptokor',
        p_size=8, s_x=1, s_y=0.8, 
        #s_height=1, 
        s_width = 0.5,
        #s_x = 1, s_y = 0.9, 
        #p_size = 13,
        p_color = 'black',
        h_fill = 'white', h_color = 'black')

system('magick cryptokor.png -gravity center -extent 600x600 cryptokor2.png; cp cryptokor.png docs')
