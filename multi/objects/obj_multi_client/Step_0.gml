buffer_seek(CLIENT_DATA_BUFFER, buffer_seek_start, 0)
/*
	List how many actions are being taken by the player (int)
	List actions in order
	Send packet to server
	
	Do this by getting all the actions into a buffer then buffer count?
	
	
*/

if (keyboard_check(vk_right)) {
	buffer_write(CLIENT_DATA_BUFFER,buffer_s16, multiAction.C_RIGHT)
}

if (keyboard_check(vk_left)) {
	buffer_write(CLIENT_DATA_BUFFER,buffer_s16, multiAction.C_LEFT)
}

if (keyboard_check(vk_up)) {
	buffer_write(CLIENT_DATA_BUFFER,buffer_s16, multiAction.C_JUMP)
}

if (keyboard_check(vk_down)) {
	buffer_write(CLIENT_DATA_BUFFER,buffer_s16, multiAction.C_DUCK)
}





network_send_packet(client, CLIENT_DATA_BUFFER, buffer_tell(CLIENT_DATA_BUFFER))