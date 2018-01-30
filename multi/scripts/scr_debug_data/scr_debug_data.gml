///@arg inst
var fstId = argument0
if (global.debug = true) {
	var inst = ds_map_find_value(clients,fstId)
	var debugData = ""
	debugData += scr_debug_action_string(inst.action)
	buffer_write(DATA_BUFFER, buffer_string, debugData)
	show_debug_message(debugData)
}