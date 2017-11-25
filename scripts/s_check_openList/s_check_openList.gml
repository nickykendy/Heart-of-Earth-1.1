/// @description s_check_openList()
var len = ds_list_size(openList);
var minF = 10000;
var minH = 10000;
var result = -4;
for (var i = 0; i < len; i++) {
	var openMap = openList[| i];
	var tcurX = openMap[? "curX"];
	var tcurY = openMap[? "curY"];
	var H = openMap[? "H"];
	var F = openMap[? "F"];
	// check whether the end slot is in the open list
	if (endX == tcurX and endY == tcurY) {
		// remove from the open list
		ds_list_delete(openList, i);
		openNum --;
		// push into the closed list
		ds_list_add(closedList, openMap);
		ds_list_mark_as_map(closedList, closedNum);
		closedNum ++;
		result = -1;
		break;
	}
	// compare F to find the least
	if (F < minF) {
		minF = F;
		minH = H;
		result = i;
	} else if (F == minF) {
		// the lesser H is more priority
		if (H <= minH) {
			minF = F;
			minH = H;
			result = i;
		}
	}
}

return result;
