///@arg action
var act = argument0

switch (act) {
	case multiAction.C_RIGHT:
	
		return "STATE: RIGHT"

	
	case multiAction.C_LEFT:
	
		return "STATE: left"
	
	case multiAction.C_JUMP:
	
		return "SATE: JUMP"
	
	case multiAction.C_DUCK:
	
		return "STATE: DUCK"
	
	case multiAction.C_STOP:

		return "STATE: STOP"
	default:
	
	return "NULL"
}