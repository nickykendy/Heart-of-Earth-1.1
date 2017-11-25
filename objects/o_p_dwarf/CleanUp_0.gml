/// @description destroy lists
ds_list_destroy(openList);
ds_list_destroy(closedList);
ds_stack_destroy(myPath);
for (var i = 0; i < 10; i++) {
	for (var j = 0; j< 10; j++) {
		ds_map_destroy(slotMap[i, j]);
	}
}