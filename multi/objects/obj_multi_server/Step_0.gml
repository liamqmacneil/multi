if (ds_map_size(clients) > 0) {
	/*
	show_debug_message("Starting data packet")
	buffer_seek(DATA_BUFFER, buffer_seek_start, 0)
	var first_key = ds_map_find_first(clients)
	var inst_id = ds_map_find_value(clients,first_key)
	
	buffer_write(DATA_BUFFER, buffer_s16,inst_id.x)
	show_debug_message("Writing X: "+string(inst_id.x))
	
	buffer_write(DATA_BUFFER, buffer_s16,inst_id.y)
	show_debug_message("Writing Y: "+string(inst_id.x))
	
	buffer_write(DATA_BUFFER, buffer_s16,inst_id.sprite_index)
	show_debug_message("Writing Sprite: "+string(inst_id.sprite_index))
	
	
	show_debug_message("Compiling Data")
	while (!(is_undefined(ds_map_find_next(clients, first_key)))) {
		
		first_key = ds_map_find_next(clients, first_key)
		inst_id = ds_map_find_value(clients,first_key)
		
		buffer_write(DATA_BUFFER, buffer_s16,inst_id.x)
		show_debug_message("Writing X: "+string(inst_id.x))
		
		buffer_write(DATA_BUFFER, buffer_s16,inst_id.y)
		show_debug_message("Writing Y: "+string(inst_id.x))
		
		buffer_write(DATA_BUFFER, buffer_s16,inst_id.sprite_index)
		show_debug_message("Writing Sprite: "+string(inst_id.sprite_index))
	}
	
	network_send_packet(first_key,DATA_BUFFER,buffer_tell(DATA_BUFFER))
	show_debug_message("Sent Data")*/
}