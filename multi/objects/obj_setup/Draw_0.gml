switch (stage) {

	case 0:
		draw_text(0,0,"Press C for client, press S for server")
		if (keyboard_check_pressed(ord("S"))) {
			stage = 3
			keyboard_string = ""
		}
		if (keyboard_check_pressed(ord("C"))) {
			stage = 1	
			keyboard_string = ""
		}
	break;
	case 1:
		draw_text(0,0,"Enter server IP and press enter. IP: "+keyboard_string)
		if (keyboard_check_pressed(vk_enter)) {
			global.ip = keyboard_string
			stage = 2
			keyboard_string = ""
		}
	break;
	
	case 2:
		draw_text(0,0,"Enter port #: "+keyboard_string)
		if (keyboard_check_pressed(vk_enter)) {
			global.port = keyboard_string
			global.serverClient = "client"
			room_goto(rm_main)
		}
	break;
	case 3:
		draw_text(0,0,"Enter port #: "+keyboard_string)
		if (keyboard_check_pressed(vk_enter)) {
			global.port = keyboard_string
			global.serverClient = "server"
			room_goto(rm_main)
		}
	break
}