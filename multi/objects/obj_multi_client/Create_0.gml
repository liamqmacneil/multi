client = network_create_socket(network_socket_tcp);
network_connect(client, "127.0.0.1",4200);


buff = buffer_create(256, buffer_grow, 1)
buffer_write(buff, buffer_s16, multiAction.C_NAME)
buffer_write(buff, buffer_string, "Hello World!")


network_send_packet(client, buff, buffer_tell(buff));