for (var i = 0; i < ds_list_size(allsprites);i++) {
	var spr,xx,yy,angle
	
	xx = ds_list_find_value(allsprites,i)
	
	i++
	yy = ds_list_find_value(allsprites,i)
	
	i++
	spr = ds_list_find_value(allsprites,i)
	
	i++
	angle = ds_list_find_value(allsprites,i)
	
	draw_text(0,0,angle)
	draw_sprite_ext(spr,0,xx,yy,1,1,angle,noone,1)
}