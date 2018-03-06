while (ds_queue_size(CLIENT_DATA_QUEUE) > 0) {
	var action = ds_queue_dequeue(CLIENT_DATA_QUEUE)
	switch (action) {
		case multiAction.C_RIGHT:
			x+=2;
		break;
	
		case multiAction.C_LEFT:
			x-=2;
		break
	
		case multiAction.C_UP:
			y-=2;
		break;
		
		case multiAction.C_DOWN:
			y+=2;
		break;
		
		case multiAction.C_FIRE:
			var bul = instance_create_depth(x,y,0,obj_bullet)
			bul.image_angle = image_angle
		break;
	}


	x+=hsp
	y+=vsp
}

image_angle = point_direction(x,y,mX,mY)