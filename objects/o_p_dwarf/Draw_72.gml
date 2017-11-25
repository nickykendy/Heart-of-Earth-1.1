/// @description draw the path finding
if (selected) {
	if (!ds_list_empty(openList)) {
		var num = ds_list_size(openList);
		for (var i = 0; i < num; i++) {
			var openMap = openList[| i];
			var _x = openMap[? "curX"];
			var _y = openMap[? "curY"];
			var G = openMap[? "G"];
			var H = openMap[? "H"];
			var F = openMap[? "F"];
			draw_rectangle_color(_x*ROOM_SIZE+1, _y*ROOM_SIZE+1, _x*ROOM_SIZE+ROOM_SIZE-1, _y*ROOM_SIZE+ROOM_SIZE-1, c_red, c_red, c_red, c_red, true);
			draw_text_color(_x*ROOM_SIZE, _y*ROOM_SIZE+10, "F="+string(F), c_red, c_red, c_red, c_red, 1);
		}
	}
	
	if (!ds_list_empty(closedList)) {
		var num = ds_list_size(closedList);
		for (var i = 0; i < num; i++) {
			var closedMap = closedList[| i];
			var _x = closedMap[? "curX"];
			var _y = closedMap[? "curY"];
			var G = closedMap[? "G"];
			var H = closedMap[? "H"];
			var F = closedMap[? "F"];
			draw_rectangle_color(_x*ROOM_SIZE+1, _y*ROOM_SIZE+1, _x*ROOM_SIZE+ROOM_SIZE-1, _y*ROOM_SIZE+ROOM_SIZE-1, c_green, c_green, c_green, c_green, true);
			draw_text_color(_x*ROOM_SIZE, _y*ROOM_SIZE+10, "F="+string(F), c_green, c_green, c_green, c_green, 1);
		}
	}
}

draw_self();
