if (ds_map_size(clients) > 0) {
	
	show_debug_message("Starting data packet")
	buffer_seek(DATA_BUFFER, buffer_seek_start, 0)
	buffer_write(DATA_BUFFER,buffer_u32,instance_number(obj_muli_inst))
	var first_id = ds_map_find_first(clients)
	var inst = ds_map_find_value(clients,first_id)
	show_debug_message(string(inst.x))
	show_debug_message(string(inst.y))
	show_debug_message(string(inst.sprite_index))
	
	buffer_write(DATA_BUFFER, buffer_s16, inst.x)
	buffer_write(DATA_BUFFER, buffer_s16, inst.y)
	buffer_write(DATA_BUFFER, buffer_s16, inst.sprite_index)
	
	while (!(is_undefined(ds_map_find_next(clients,first_id)))) {
	var first_id = ds_map_find_next(clients,first_id)
	var inst = ds_map_find_value(clients,first_id)
	show_debug_message(string(inst.x))
	show_debug_message(string(inst.y))
	show_debug_message(string(inst.sprite_index))
	
	scr_multi_write_sprite_data(DATA_BUFFER,inst)
	/*
	buffer_write(DATA_BUFFER, buffer_s16, inst.x)
	buffer_write(DATA_BUFFER, buffer_s16, inst.y)
	buffer_write(DATA_BUFFER, buffer_s16, inst.sprite_index)*/
	}
	
	for (var i = 0; i < ds_list_size(global.multiInst); i++) {
		var inst = ds_list_find_value(global.multiInst,i)
		if (object_get_name(inst) != "obj_player") {
			scr_multi_write_sprite_data(DATA_BUFFER,inst)
		}
	}
	
	first_id = ds_map_find_first(clients)
	network_send_packet(first_id,DATA_BUFFER,buffer_tell(DATA_BUFFER))
	while (!(is_undefined(ds_map_find_next(clients,first_id)))) {
		first_id = ds_map_find_next(clients,first_id)
		network_send_packet(first_id,DATA_BUFFER,buffer_tell(DATA_BUFFER))
	}
}
show_debug_message(asset_get_index("spr_testsprite"))