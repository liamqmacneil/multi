///@arg buffer
///@arg id
var buffer, inst
buffer = argument0
inst = argument1

buffer_write(buffer, buffer_s16, inst.x)
buffer_write(buffer, buffer_s16, inst.y)
buffer_write(buffer, buffer_s16, inst.sprite_index)
buffer_write(buffer, buffer_s16, inst.image_angle)