maxPlayers = 4;
server = network_create_server(network_socket_tcp,4200,maxPlayers);

enum multiAction {
	C_JUMP,
	C_LEFT,
	C_RIGHT,
	C_DUCK,
	C_STOP,
	C_NAME
}

DATA_BUFFER = buffer_create(256, buffer_grow,1)

clients = ds_map_create()