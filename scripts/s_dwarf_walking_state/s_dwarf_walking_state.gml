/// @description s_dwarf_walking_state()
// move forward
if (instance_exists(curTarget)) {
	var _x = curTarget.x;
	var _y = curTarget.y;
	var dir = point_direction(x, y, _x, _y);
	motion_add(dir, acc);
	
	if (_x - x != 0) {
		 faceDir = sign(_x - x);
	}
	image_xscale = faceDir;

	if (speed > spd) speed = spd;

	// when reach the next target
	if (position_meeting(x, y, curTarget)) {
		instance_destroy(curTarget);
		
		// get next xy from stack
		if (!ds_stack_empty(myPath)) {
			curX = nextX;
			curY = nextY;
			nextX = ds_stack_pop(myPath);
			nextY = ds_stack_pop(myPath);
			s_dwarf_determine_state();
		} else {
			friction = 1;
			sprite_index = spr_dwarf_idle;
			image_index = 0;
			image_speed = 0;
			state = "idle";
		}
	}
}