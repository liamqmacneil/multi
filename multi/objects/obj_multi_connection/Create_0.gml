server = network_create_server(network_socket_tcp,4200,4);
enum multiAction {
	C_JUMP,
	C_LEFT,
	C_RIGHT,
	C_DUCK
}