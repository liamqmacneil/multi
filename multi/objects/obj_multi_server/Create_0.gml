maxPlayers = 4;
server = network_create_server(network_socket_tcp,4200,maxPlayers);

enum multiAction {
	C_JUMP,
	C_LEFT,
	C_RIGHT,
	C_DUCK
}

clientList = ds_map_create()