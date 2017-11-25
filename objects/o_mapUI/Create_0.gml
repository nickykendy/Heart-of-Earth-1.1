/// @description create some buttons

// create level buttons
var ins = instance_create_layer(400, 250, "Inst_buttons", o_entrance);
ins.level = 1;
ins.desc = "This is the first level";

var ins = instance_create_layer(550, 400, "Inst_buttons", o_entrance);
ins.level = 2;
ins.desc = "This is the second level";

var ins = instance_create_layer(700, 150, "Inst_buttons", o_entrance);
ins.level = 3;
ins.desc = "This is the third level";

// create dwarf list
var num = ds_grid_height(global.myDwarf);
for (var i=0; i<num; i++) {
	var ins = instance_create_layer(1270, 10+i*70, "inst_buttons", o_dwarfList);
	ins.portrait = global.myDwarf[# DWARF.SPRITE, i];
	ins.name = global.myDwarf[# DWARF.NAME, i];
	ins.level = global.myDwarf[# DWARF.LV, i];
	ins.HP = global.myDwarf[# DWARF.HP, i];
	ins.index = i;
}

// create ready for mission slot
var ins = instance_create_layer(500, 650, "Inst_buttons", o_readyForMission);

var ins = instance_create_layer(640, 650, "Inst_buttons", o_readyForMission);

var ins = instance_create_layer(780, 650, "Inst_buttons", o_readyForMission);