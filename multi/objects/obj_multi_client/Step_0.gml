buffer_seek(CLIENT_DATA_BUFFER, buffer_seek_start, 0)
ds_queue_clear(CLIENT_DATA_QUEUE)
/*
	List how many actions are being taken by the player (int)
	List actions in order
	Send packet to server
	
	Do this by getting all the actions into a buffer then buffer count?
	
	
*/

if (keyboard_check(vk_right)) {
	ds_queue_enqueue(CLIENT_DATA_QUEUE,	multiAction.C_RIGHT)
}

if (keyboard_check(vk_left)) {
	ds_queue_enqueue(CLIENT_DATA_QUEUE,	multiAction.C_LEFT)
}

if (keyboard_check(vk_up)) {
	ds_queue_enqueue(CLIENT_DATA_QUEUE,	multiAction.C_UP)
}

if (keyboard_check(vk_down)) {
	ds_queue_enqueue(CLIENT_DATA_QUEUE,	multiAction.C_DOWN)
}

buffer_write(CLIENT_DATA_BUFFER, buffer_s16, ds_queue_size(CLIENT_DATA_QUEUE))

buffer_write(CLIENT_DATA_BUFFER, buffer_s32, mouse_x)
buffer_write(CLIENT_DATA_BUFFER, buffer_s32, mouse_y)

show_debug_message(ds_queue_size(CLIENT_DATA_QUEUE))

for (var i = 0; i < ds_queue_size(CLIENT_DATA_QUEUE); i++) {
	buffer_write(CLIENT_DATA_BUFFER, buffer_s16, ds_queue_dequeue(CLIENT_DATA_QUEUE))
	show_debug_message(i)
}

network_send_packet(client, CLIENT_DATA_BUFFER, buffer_tell(CLIENT_DATA_BUFFER))