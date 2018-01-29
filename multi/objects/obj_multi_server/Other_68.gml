var eventId = async_load[? "id"]; //Get id of network object
var type = async_load[? "type"] //get type of event


if (server = eventId) {
	if (type == network_type_connect) {
		var sock = async_load[? "socket"] //Get client ID
		var ip	 = async_load[? "ip"]	  //Get client ip
		var iid  = instance_create_layer(0,0,"players",obj_player)
		ds_map_add(clients, sock, iid);
	}

	if (type == network_type_disconnect) {
		var sock = async_load[? "socket"] //Get client ID
		var inst = clients[? sock]
		ds_map_delete(clients, sock)
		instance_destroy(inst)
	}
}else { //It's client data oh no
var sock = async_load[? "id"]
var inst = clients[? sock]
var buff = async_load[? "buffer"] //Get data
var cmd = buffer_read(buff, buffer_s16) //Read data

switch (cmd) {
	case multiAction.C_LEFT:
		inst.action = multiAction.C_LEFT
	break;
	
	case multiAction.C_RIGHT:
		inst.action = multiAction.C_RIGHT
	break;
	
	case multiAction.C_JUMP:
		inst.action = multiAction.C_JUMP
	break;
	
	case multiAction.C_DUCK:
		inst.action = multiAction.C_DUCK
	break;
	
	case multiAction.C_NAME:
		inst.name = buffer_read(buff, buffer_string)
	break;
}
	
}