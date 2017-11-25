/// @description hire dwarf
if (global.gold >= hireFee and image_index == 1) {
	global.gold -= hireFee;
	image_index = 0;
	// add the dwarf to your crew list
	var _row = s_dsgrid_add_row(global.myDwarf);
	global.myDwarf[# DWARF.NAME, _row] = global.storeDwarf[# DWARF.NAME, slot];
	global.myDwarf[# DWARF.LV, _row] = global.storeDwarf[# DWARF.LV, slot];
	global.myDwarf[# DWARF.HP, _row] = global.storeDwarf[# DWARF.HP, slot];
	global.myDwarf[# DWARF.SPD, _row] = global.storeDwarf[# DWARF.SPD, slot];
	global.myDwarf[# DWARF.SPRITE, _row] = global.storeDwarf[# DWARF.SPRITE, slot];
	global.myDwarf[# DWARF.OUT, _row] = global.storeDwarf[# DWARF.OUT, slot];
	// add a dwarf to the list
	var num = instance_number(o_dwarfList);
	var ins = instance_create_layer(1270, 10+num*70, "inst_buttons", o_dwarfList);
	ins.portrait = global.storeDwarf[# DWARF.SPRITE, slot];
	ins.name = global.storeDwarf[# DWARF.NAME, slot];
	ins.level = global.storeDwarf[# DWARF.LV, slot];
	ins.HP = global.storeDwarf[# DWARF.HP, slot];
	// clear the dwarf from hire grid
	ds_grid_set(global.storeDwarf, DWARF.NAME, slot, noone);
	dwarfForHireName = noone;
	// reset all the hire buttons
	with (o_button_hire) {
		if (global.gold >= hireFee and dwarfForHireName != noone) {
			image_index = 0;
		} else {
			image_index = 2;
		}
	}
}