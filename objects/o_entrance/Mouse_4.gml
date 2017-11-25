/// @description selected
// inverse all
with (o_entrance) {
	image_index = 0;
}
// selected
image_index = 1;

// check for the embark button
var selected = false;
with (o_entrance) {
	if (image_index == 1) {
		selected = true;
		break;
	}
}

if (selected == true) {
	o_button_embark.levelSelected = true;
} else {
	o_button_embark.levelSelected = false;
}

if (selected == true and o_button_embark.readySlotFull == true) {
	o_button_embark.image_index = 0;
} else {
	o_button_embark.image_index = 2;
}