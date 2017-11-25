/// @description go to level room
if (image_index == 1) {
	image_index = 0;
	// get grid myDwarf ready
	with (o_readyForMission) {
		var i = listId.index;
		global.myDwarf[# DWARF.OUT, i] = true;
	}
	room_goto(rm_mine);
}