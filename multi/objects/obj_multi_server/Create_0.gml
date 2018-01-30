maxPlayers = 4;
server = network_create_server(network_socket_tcp,global.port,maxPlayers);

DATA_BUFFER = buffer_create(256, buffer_grow,1)

clients = ds_map_create()
global.multiInst = ds_list_create()