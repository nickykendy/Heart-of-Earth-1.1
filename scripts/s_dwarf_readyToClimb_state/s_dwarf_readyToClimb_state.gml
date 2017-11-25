/// @description s_dwarf_readyToClimb_state()
// move to the ladder
if (instance_exists(curTarget)) {
	// find the ladder of current room
	var _x = curTarget.x;
	var _y = curTarget.y;
	var dir = point_direction(x, y, _x, _y);
	motion_add(dir, acc);

	if (speed > spd) speed = spd;

	// when reach the ladder
	if (position_meeting(x, y, curTarget)) {
		instance_destroy(curTarget);
		speed = 0;
		var _x = nextX*ROOM_SIZE + 0.5*ROOM_SIZE;
		var _y = nextY*ROOM_SIZE + 94;
		curTarget = instance_create_layer(_x, _y, "Inst_target", o_curTarget);
		friction = 0;
		sprite_index = spr_dwarf_walk;
		image_index = 0;
		image_speed = 0.7;
		state = "climbing";
	}
}