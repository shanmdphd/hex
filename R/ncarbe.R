
# setup ----

library(hexSticker) # devtools::install_github('GuangchuangYu/hexSticker')
library(ggplot2)
library(ggsci)

# main

head(Indometh)

p <- ggplot(aes(x = time, y = conc, group = Subject, color = Subject), data = Indometh) + 
  geom_point() + 
  geom_line() + 
  ggsci::scale_color_nejm() + 
  theme_void() + 
  theme_transparent() + 
  theme(legend.position="none")

sticker(p, package = 'ncarbe',
        s_width	= 1.3, s_height = 1,
        s_x = 1, s_y = 0.9, 
        p_size = 13,
        p_color = 'black',
        h_fill = 'yellow', h_color = 'black')

system('magick ncarbe.png -gravity center -extent 600x600 ncarbe2.png; cp ncarbe.png docs')
