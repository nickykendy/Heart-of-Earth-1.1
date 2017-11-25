/// @description s_target_fall()
if (!place_meeting(x, y+1, o_collision)) {
	vspd += grav;
} else {
	var result = mp_grid_path(global.mpGrid, global.myPath, dwarf.x, dwarf.y, x, y, false);
	show_debug_message("result = "+string(result));
	show_debug_message("dwarf : "+string(dwarf.x)+","+string(dwarf.y));
	show_debug_message("goal : "+string(x)+","+string(y));
	with (dwarf) {
		path_start(global.myPath, spd, path_action_stop, false);
	}
	state = s_target_freeze;
}
s_move(o_collision);