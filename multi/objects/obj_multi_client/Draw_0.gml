for (var i = 0; i < ds_list_size(allsprites);i++) {
	show_debug_message("Drawning Sprites")
	var spr,xx,yy
	xx = ds_list_find_value(allsprites,i)
	i++
	yy = ds_list_find_value(allsprites,i)
	i++
	spr = ds_list_find_value(allsprites,i)
	show_debug_message("Drawing "+string(spr))
	draw_sprite(spr,0,xx,yy)
}