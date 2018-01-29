var eventId = async_load[? "id"]; //Get id of network object
var type = async_load[? "type"] //get type of event

if (type == network_type_connect) {
	var sock = async_load[? "socket"] //Get client ID
	var ip	 = async_load[? "ip"]	  //Get client ip
	var iid  = instance_create_layer(0,0,"players",obj_player)
}