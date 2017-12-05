
# setup ----

library(hexSticker) # devtools::install_github('GuangchuangYu/hexSticker')
library(ggplot2)
library(ggsci)

# main

head(Theoph)

p <- ggplot(aes(x = Time, y = conc, group = Subject, color = Subject), data = Theoph) + 
  geom_point() + 
  geom_line() + 
  ggsci::scale_color_nejm() + 
  theme_void() + 
  theme_transparent() + 
  theme(legend.position="none")
p

sticker(p, package = 'NonCompart',
        s_width	= 1.3, s_heigh = 1,
        s_x = 1, s_y = 0.9,
        p_size = 7,
        p_color = 'black',
        h_fill = 'white', h_color = 'black')

system('magick NonCompart.png -gravity center -extent 600x600 NonCompart2.png; cp NonCompart.png docs')
