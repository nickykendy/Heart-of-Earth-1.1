/// @description command dwarf to do sth
// move
if (selected) {
	// check whether click on the wall
	if (!position_meeting(mouse_x, mouse_y, o_collision)) {
		startX = x div ROOM_SIZE;
		startY = y div ROOM_SIZE;
		endX = mouse_x div ROOM_SIZE;
		endY = mouse_y div ROOM_SIZE;
		openNum = 1;
		closedNum = 0;
		
		if (global.map[# endX, endY] != BLOCK) {
			while (ds_list_size(openList) > 0) {
				var n = ds_list_size(openList) - 1;
				ds_list_delete(openList, n);
			}
			
			while (ds_list_size(closedList) > 0) {
				var n = ds_list_size(closedList) - 1;
				ds_list_delete(closedList, n);
			}
			
			if (instance_exists(target)) instance_destroy(target);
			if (instance_exists(curTarget)) instance_destroy(curTarget);
			
			/* path finding */
			
			// init starting slot
			var startMap = slotMap[startX, startY];
			startMap[? "curX"] = startX;
			startMap[? "curY"] = startY;
			startMap[? "parX"] = startX;
			startMap[? "parY"] = startY;
			startMap[? "G"] = abs(startX - startX) + abs(startY - startY);
			startMap[? "H"] = abs(endX - startX) + abs(endY - startY);
			startMap[? "F"] = startMap[? "G"] + startMap[? "H"];
			
			// push into open list
			ds_list_add(openList, startMap);
			ds_list_mark_as_map(openList, 0);
			
			// loop to find way to the end slot
			while (s_check_openList() > -1) {
				// when find it, copy from open list to slotMap
				var index = s_check_openList();
				var openMap = openList[| index];
				curX = openMap[? "curX"];
				curY = openMap[? "curY"];
				parX = openMap[? "parX"];
				parY = openMap[? "parY"];
				var G = openMap[? "G"];
				var H = openMap[? "H"];
				var F = openMap[? "F"];
				var curSlotMap = slotMap[curX, curY];
				curSlotMap[? "curX"] = curX;
				curSlotMap[? "curY"] = curY;
				curSlotMap[? "parX"] = parX;
				curSlotMap[? "parY"] = parY;
				curSlotMap[? "G"] = G;
				curSlotMap[? "H"] = H;
				curSlotMap[? "F"] = F;
				// remove from the open list
				ds_list_delete(openList, index);
				openNum --;
				// push into the closed list
				ds_list_add(closedList, curSlotMap);
				ds_list_mark_as_map(closedList, closedNum);
				closedNum ++;
				
				// push 4 directions' slots into open list
				for (var i = -1; i <= 1; i++) {
					for (var j = -1; j <= 1; j++) {
						if (i == -1 and j == -1) { // left up
							continue;
						} else if (i == 1 and j == -1) { // right up
							continue;
						} else if (i == 1 and j == 1) { // right down
							continue;
						} else if (i == -1 and j == 1) { // left down
							continue;
						} else {
							// check the adjacent slot base on the current Tile
							var result = s_check_adjacent_available(i, j);
							if (result == false) {
								continue;
							}
							// init the remaining slot
							var adjX = curX + i;
							var adjY = curY + j;
							if (global.map[# adjX, adjY] != BLOCK) {
								// check whether the adjacent slot is in the closed list
								var lenClosed = ds_list_size(closedList);
								var inClosed = false;
								var inOpen = false;
								for (var l = 0; l < lenClosed; l++) {
									var closedMap = closedList[| l];
									var tcurX = closedMap[? "curX"];
									var tcurY = closedMap[? "curY"];
									if (adjX == tcurX and adjY == tcurY) {
										inClosed = true;
										break;
									}
								}
								
								if (inClosed == false) {
									// check whether the adjacent slot is in the open list
									var lenOpen = ds_list_size(openList);
									for (var l = 0; l < lenOpen; l++) {
										var openMap = openList[| l];
										var tcurX = openMap[? "curX"];
										var tcurY = openMap[? "curY"];
										if (adjX == tcurX and adjY == tcurY) {
											inOpen = true;
											// if in the open, compare the new G, recalculate
											var tparX = openMap[? "parX"];
											var tparY = openMap[? "parY"];
											var G = openMap[? "G"];
											var H = openMap[? "H"];
											var newG = abs(curX - tcurX) + abs(curY - tcurY) + curSlotMap[? "G"];
											if (newG < G) {
												openMap[? "G"] = newG;
												openMap[? "F"] = newG + H;
												openMap[? "parX"] = curX;
												openMap[? "parY"] = curY;
												ds_list_replace(openList, l, openMap);
											}
											break;
										}
									}
								}
								
								// if not in closed or open list, push into the open list
								if (inClosed == false and inOpen == false) {
									var curSlotMap = slotMap[adjX, adjY];
									var parSlotMap = slotMap[curX, curY];
									curSlotMap[? "curX"] = adjX;
									curSlotMap[? "curY"] = adjY;
									curSlotMap[? "parX"] = curX;
									curSlotMap[? "parY"] = curY;
									curSlotMap[? "G"] = abs(curX - adjX) + abs(curY - adjY) + parSlotMap[? "G"];
									curSlotMap[? "H"] = abs(endX - adjX) + abs(endY - adjY);
									curSlotMap[? "F"] = curSlotMap[? "G"] + curSlotMap[? "H"];
									ds_list_add(openList, curSlotMap);
									ds_list_mark_as_map(openList, openNum);
									openNum ++;
								}
							}
						}
					}
				}
			}
			
			// create the path from the closed list
			ds_stack_clear(myPath);
			var lastX = endX;
			var lastY = endY;
			while (lastX != startX or lastY != startY) {
				var len = ds_list_size(closedList);
				for (var i = 0; i < len; i++) {
					var closedMap = closedList[| i];
					var tcurX = closedMap[? "curX"];
					var tcurY = closedMap[? "curY"];
					var tparX = closedMap[? "parX"];
					var tparY = closedMap[? "parY"];
					if (tcurX == lastX and tcurY == lastY) {
						ds_stack_push(myPath, tcurY, tcurX);
						lastX = tparX;
						lastY = tparY;
						ds_list_delete(closedList, i);
						event_perform(ev_draw, ev_draw_begin);
						break;
					}
				}
			}
			
			nextX = ds_stack_pop(myPath);
			nextY = ds_stack_pop(myPath);
			
			// create a target assist the moving
			var _x = endX*ROOM_SIZE + 0.5*ROOM_SIZE;
			var _y = endY*ROOM_SIZE + 94;
			target = instance_create_layer(_x, _y, "Inst_target", o_target);
			
			curX = startX;
			curY = startY;
			
			// determine state base on the next slot
			s_dwarf_determine_state();
		}
	}
}