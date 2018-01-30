switch (global.serverClient) {
	case "server":
		instance_create_depth(0,0,0,obj_multi_server)
		global.serverClient = "delet"
	break;
	
	case "client":
		instance_create_depth(0,0,0,obj_multi_client)
		global.serverClient = "delet"
	break;
	
	case "delet":
		instance_destroy()
	break;
}