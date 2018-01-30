for (var i = 0; i < ds_list_size(allsprites);i++) {

	var spr,xx,yy
	xx = ds_list_find_value(allsprites,i)
	i++
	yy = ds_list_find_value(allsprites,i)
	i++
	spr = ds_list_find_value(allsprites,i)

	draw_sprite(spr,0,xx,yy)
}