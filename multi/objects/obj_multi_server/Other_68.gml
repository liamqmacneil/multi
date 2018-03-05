var eventId = async_load[? "id"]; //Get id of network object
var type = async_load[? "type"] //get type of event


if (server = eventId) {
	if (type = network_type_connect) {
		var sock = async_load[? "socket"] //Get client ID
		var ip	 = async_load[? "ip"]	  //Get client ip
		var iid  = instance_create_layer(10,10,"players",obj_player)
		ds_map_add(clients, sock, iid);
	}

	if (type = network_type_disconnect) {
		var sock = async_load[? "socket"] //Get client ID
		var inst = clients[? sock]
		ds_map_delete(clients, sock)
		instance_destroy(inst)
	}
}else { //It's client data oh no
	var sock = async_load[? "id"]
	var inst = clients[? sock]
	var buff = async_load[? "buffer"] //Get data
	var queID = inst.CLIENT_DATA_QUEUE
	/*
		Client Movement Packet Stack
		
		1. Number of actions (movements, sprint, acting, etc)
		2. Player mouse x
		3. Player mouse y
		4. Queued actions
	
	*/
	
	var actionNum = buffer_read(buff, buffer_s16) //Read data
	inst.mX = buffer_read(buff, buffer_s16)
	inst.mY = buffer_read(buff, buffer_s16)

	for (var i = 0; i < actionNum; i++) {
		ds_queue_enqueue(queID,buffer_read(buff,buffer_s16))
	}
	
	
}