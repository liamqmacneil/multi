buffer_seek(DATA_BUFFER, buffer_seek_start, 0)
var first_key = ds_map_find_first(clients)
var inst_id = ds_map_find_value(clients,first_key)

buffer_write(DATA_BUFFER, buffer_s16,inst_id.x)
buffer_write(DATA_BUFFER, buffer_s16,inst_id.y)
buffer_write(DATA_BUFFER, buffer_s16,inst_id.sprite_index)

while (ds_map_find_next(clients, first_key) != noone) {
	first_key = ds_map_find_next(clients, first_key)
	inst_id = ds_map_find_value(clients,first_key)
	buffer_write(DATA_BUFFER, buffer_s16,inst_id.x)
	buffer_write(DATA_BUFFER, buffer_s16,inst_id.y)
	buffer_write(DATA_BUFFER, buffer_s16,inst_id.sprite_index)
}

network_send_packet(first_key,DATA_BUFFER,buffer_tell(DATA_BUFFER))