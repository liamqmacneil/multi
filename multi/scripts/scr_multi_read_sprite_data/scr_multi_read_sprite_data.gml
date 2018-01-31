///@arg buffer

var spriteBuffer = argument0
var xx,yy,spr,angle
xx		= buffer_read(spriteBuffer, buffer_s16)
yy		= buffer_read(spriteBuffer, buffer_s16)
spr		= buffer_read(spriteBuffer, buffer_s16)
angle	= buffer_read(spriteBuffer, buffer_s16)

ds_list_add(allsprites, xx); //x
ds_list_add(allsprites, yy); //y
ds_list_add(allsprites, spr); //sprite_index
ds_list_add(allsprites, angle); //Sprite angle