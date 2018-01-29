var eventid = async_load[? "id"]
if (client == evenid) {
		var buff = async_load[? "buffer"]
		sprites = buffer_read(buff, buffer_u32) //Get number of sprites
		ds_list_clear(allsprites)
		for (var i = 0; i < sprites; i++) {
			ds_list_add(allsprites, buffer_read(buff, buffer_s16)); //x
			ds_list_add(allsprites, buffer_read(buff, buffer_s16)); //y
			ds_list_add(allsprites, buffer_read(buff, buffer_s16)); //sprite_index
		}
}