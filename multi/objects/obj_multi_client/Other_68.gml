var eventid = async_load[? "id"]

if (client == eventid) {

		var buff = async_load[? "buffer"]
		sprites = buffer_read(buff, buffer_u32) //Get number of sprites

		ds_list_clear(allsprites)
		
		for (var i = 0; i < sprites; i++) {
			scr_multi_read_sprite_data(buff)
		}
		debugData = buffer_read(buff, buffer_string)
}