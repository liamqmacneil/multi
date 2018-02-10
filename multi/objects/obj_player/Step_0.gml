while (ds_queue_size(CLIENT_DATA_QUEUE) > 0) {
	var action = ds_queue_dequeue(CLIENT_DATA_QUEUE)
	switch (action) {
		case multiAction.C_RIGHT:
			hsp+=2;
		break;
	
		case multiAction.C_LEFT:
			hsp-=2;
		break
	
		case multiAction.C_JUMP:
			if (place_meeting(x,y+1,obj_wall)) {
				vsp = -20;
			}
		break;
	}


	if (action != multiAction.C_JUMP && place_meeting(x,y+1,obj_wall)) {
		if (hsp > 0) {
			hsp--;
		}
		if (hsp < 0) {
			hsp++;	
		}
	}

	hsp = clamp(hsp,HSP_MIN,HSP_MAX)
	if !(place_meeting(x+hsp,y,obj_wall)) {
		if (action != multiAction.C_STOP) {
			x+=hsp;
		}
	}else {
		while !(place_meeting(x+clamp(hsp,-1,1),y,obj_wall)) {
			x+=clamp(hsp,-1,1)
		}
	}

	if !(place_meeting(x,y+vsp,obj_wall)) {
		y += vsp
		vsp+=grav
		vsp = clamp(vsp,-8,100)
	}else {
		while !(place_meeting(x,y+clamp(vsp,-1,1),obj_wall)) {
			y+=clamp(vsp,-1,1);
		}
		vsp = 0
	}
}