client = network_create_socket(network_socket_tcp);
network_connect(client, "127.0.0.1",4200);
allsprites = ds_list_create()