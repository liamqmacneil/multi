
if (ds_map_size(clients) > 0) {
	
	buffer_seek(DATA_BUFFER, buffer_seek_start, 0)
	buffer_write(DATA_BUFFER,buffer_u32,instance_number(obj_muli_inst))
	
	for (var i = 0; i < ds_list_size(global.multiInst); i++) {
		var inst = ds_list_find_value(global.multiInst,i)
		scr_multi_write_sprite_data(DATA_BUFFER,inst)
	}
	
	first_id = ds_map_find_first(clients)
	network_send_packet(first_id,DATA_BUFFER,buffer_tell(DATA_BUFFER))
	
	while (!(is_undefined(ds_map_find_next(clients,first_id)))) {
		first_id = ds_map_find_next(clients,first_id)
		network_send_packet(first_id,DATA_BUFFER,buffer_tell(DATA_BUFFER))
	}
}
