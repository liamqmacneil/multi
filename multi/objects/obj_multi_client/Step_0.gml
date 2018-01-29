buffer_seek(CLIENT_DATA_BUFFER, buffer_seek_start, 0)
buffer_write(CLIENT_DATA_BUFFER,buffer_s16, multiAction.C_STOP)	

if (keyboard_check(vk_right)) {
	buffer_seek(CLIENT_DATA_BUFFER, buffer_seek_start, 0)
	buffer_write(CLIENT_DATA_BUFFER,buffer_s16, multiAction.C_RIGHT)
}

if (keyboard_check(vk_left)) {
	buffer_seek(CLIENT_DATA_BUFFER, buffer_seek_start, 0)
	buffer_write(CLIENT_DATA_BUFFER,buffer_s16, multiAction.C_LEFT)
}





network_send_packet(client, CLIENT_DATA_BUFFER, buffer_tell(CLIENT_DATA_BUFFER))