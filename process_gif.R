
#..................................................................................................................
# reduce the size of the gif
#...........................
#
# References:
#
#     image:  https://www.pinterest.com/pin/361836151305652241/
#     code :  https://statisticaloddsandends.wordpress.com/2020/08/06/basic-manipulation-of-gif-frames-with-magick/
#..................................................................................................................

pth = 'Flat_Earth_Scene_Pinterest_processed.gif'
img = magick::image_read(pth)
img = magick::image_resize(image = img, geometry = "350x250!")
img

img_subset = img[1:60]
img_subset

magick::image_write_gif(image = img_subset, path = gsub('.gif', '_subset.gif', pth))
