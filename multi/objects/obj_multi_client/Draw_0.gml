for (var i = 0; i < ds_list_size(allsprites);i++) {
	var spr,x,y
	x = ds_list_find_value(allsprites,i)
	i++
	y = ds_list_find_value(allsprites,i)
	i++
	spr = ds_list_find_value(allsprites,i)
	draw_sprite(spr,0,x,y)
}