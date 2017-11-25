/// @description s_dwarf_climbing_state()
// move to other side of the ladder
if (instance_exists(curTarget)) {
	var _x = curTarget.x;
	var _y = curTarget.y;
	var dir = point_direction(x, y, _x, _y);
	motion_add(dir, acc);

	if (speed > spd) speed = spd;

	// when finish climbing the ladder
	if (position_meeting(x, y, curTarget)) {
		instance_destroy(curTarget);
		speed = 0;
		// get next xy from stack
		if (!ds_stack_empty(myPath)) {
			curX = nextX;
			curY = nextY;
			nextX = ds_stack_pop(myPath);
			nextY = ds_stack_pop(myPath);
			s_dwarf_determine_state();
		} else {
			friction = 2;
			sprite_index = spr_dwarf_idle;
			image_index = 0;
			image_speed = 0;
			state = "idle";
		}
	}
}