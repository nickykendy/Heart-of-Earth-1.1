/// @description initialize
s_dwarf_init();
faceDir = 1;

// initialize path finding varibles
target = noone;
curTarget = noone;

startX = 0;
startY = 0;
endX = 0;
endY = 0;
curX = 0;
curY = 0;
openNum = 1;
closedNum = 0;
openList = ds_list_create();
closedList = ds_list_create();

// init slotMap
for (var i = 0; i < 10; i++) {
	for (var j = 0; j< 10; j++) {
		slotMap[i, j] = ds_map_create();
		ds_map_add(slotMap[i, j], "curX", 0); // current X
		ds_map_add(slotMap[i, j], "curY", 0); // current Y
		ds_map_add(slotMap[i, j], "parX", 0); // parent X
		ds_map_add(slotMap[i, j], "parY", 0); // parent Y
		ds_map_add(slotMap[i, j], "G", 0); // G cost of start to current
		ds_map_add(slotMap[i, j], "H", 0); // H cost of current to end
		ds_map_add(slotMap[i, j], "F", 0); // F sum cost
	}
}
// init path varible
nextX = 0;
nextY = 0;
myPath = ds_stack_create();