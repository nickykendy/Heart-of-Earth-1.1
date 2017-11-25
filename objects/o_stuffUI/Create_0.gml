/// @description create stuff buttons

// create hire buttons
for (var i=0; i<3; i++) {
	var ins = instance_create_layer(160+256*i, 544, "Inst_buttons", o_button_hire);
	ins.dwarfForHireName = global.storeDwarf[# DWARF.NAME, i];
	ins.dwarfForHireSprite = global.storeDwarf[# DWARF.SPRITE, i];
	ins.hireFee = 100+i*100;
	ins.slot = i;
	with (ins) {
		if (global.gold >= hireFee and dwarfForHireName != noone) {
			image_index = 0;
		} else {
			image_index = 2;
		}
	}
}

// create dwarf list
var num = ds_grid_height(global.myDwarf);
for (var i=0; i<num; i++) {
	var ins = instance_create_layer(1270, 10+i*70, "inst_buttons", o_dwarfList);
	ins.portrait = global.myDwarf[# DWARF.SPRITE, i];
	ins.name = global.myDwarf[# DWARF.NAME, i];
	ins.level = global.myDwarf[# DWARF.LV, i];
	ins.HP = global.myDwarf[# DWARF.HP, i];
}