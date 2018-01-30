///@arg buffer

var spriteBuffer = argument0


ds_list_add(allsprites, buffer_read(buff, buffer_s16)); //x
ds_list_add(allsprites, buffer_read(buff, buffer_s16)); //y
ds_list_add(allsprites, buffer_read(buff, buffer_s16)); //sprite_index
ds_list_add(allsprites, buffer_read(buff, buffer_s16)); //Sprite angle