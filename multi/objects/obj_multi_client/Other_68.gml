var eventid = async_load[? "id"]
show_debug_message("Got data")
if (client == eventid) {
		show_debug_message("Reading data")
		var buff = async_load[? "buffer"]
		sprites = buffer_read(buff, buffer_u32) //Get number of sprites
		show_debug_message("Sprite Number: "+string(sprites))
		ds_list_clear(allsprites)
		
		for (var i = 0; i < sprites; i++) {
			ds_list_add(allsprites, buffer_read(buff, buffer_s16)); //x
			ds_list_add(allsprites, buffer_read(buff, buffer_s16)); //y
			ds_list_add(allsprites, buffer_read(buff, buffer_s16)); //sprite_index
			show_debug_message("Read Data")
		}
}