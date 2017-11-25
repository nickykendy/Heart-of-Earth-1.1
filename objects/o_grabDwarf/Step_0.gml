/// @description check for drop the grabbed dwarf
var ins = instance_place(x, y, o_readyForMission);
// follow the mouse
if (mouse_check_button(mb_left)) {
	x = mouse_x;
	y = mouse_y;
} else {
	if (ins != noone) {
		// reset the list
		var _listId = ins.listId;
		if (_listId != noone) {
			_listId.image_index = 0;
		}
		// clear other ready slot
		with (o_readyForMission) {
			if (listId == o_grabDwarf.grabId) {
				listId = noone;
			}
		}
		// put dwarf into the ready slot
		ins.listId = grabId;
		grabId.image_index = 1;
	}
	instance_destroy();
	
	// check for the embark button
	var slotFull = true;
	with (o_readyForMission) {
		if (listId == noone) {
			slotFull = false;
			break;
		}
	}
	
	if (slotFull == true) {
		o_button_embark.readySlotFull = true;
	} else {
		o_button_embark.readySlotFull = false;
	}
	
	if (slotFull == true and o_button_embark.levelSelected == true) {
		o_button_embark.image_index = 0;
	} else {
		o_button_embark.image_index = 2;
	}
}