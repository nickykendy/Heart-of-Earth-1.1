/// @description s_dwarf_determine_state()
if (nextY == curY) {
	// the next slot is horizantal
	if (nextX == endX and nextY == endY) {
		curTarget = target;
	} else {
		var _x = nextX*ROOM_SIZE + 0.5*ROOM_SIZE;;
		var _y = nextY*ROOM_SIZE + 94;
		curTarget = instance_create_layer(_x, _y, "Inst_target", o_curTarget);
	}
	friction = 0;
	sprite_index = spr_dwarf_walk;
	image_index = 0;
	image_speed = 0.7;
	state = "walking";
				
} else if (nextX == curX) {
	// the next slot is vertical
	if (nextX == endX and nextY == endY) {
		curTarget = target;
	} else {
		var _x = curX*ROOM_SIZE + 0.5*ROOM_SIZE;
		var _y = curY*ROOM_SIZE + 94;
		curTarget = instance_create_layer(_x, _y, "Inst_target", o_curTarget);
	}
	speed = 0;
	
	friction = 0;
	sprite_index = spr_dwarf_walk;
	image_index = 0;
	image_speed = 0.7;
	state = "readyToClimb";
}