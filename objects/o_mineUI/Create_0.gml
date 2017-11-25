/// @description create on mission dwarf
var num = ds_grid_height(global.myDwarf);
var pos = 0;
for (var i=0; i<num; i++) {
	if (global.myDwarf[# DWARF.OUT, i] == true) {
		var dwarf = instance_create_layer(16*CELL_SIZE+pos*5*CELL_SIZE, 12*CELL_SIZE, "Inst_dwarf", o_dwarf);
		dwarf.name = global.myDwarf[# DWARF.NAME, i];
		dwarf.spd = global.myDwarf[# DWARF.SPD, i];
		dwarf.level = global.myDwarf[# DWARF.LV, i];
		dwarf.maxHP = global.myDwarf[# DWARF.HP, i];
		dwarf.HP = dwarf.maxHP;
		dwarf.sprite_index = global.myDwarf[# DWARF.SPRITE, i];
		dwarf.portrait = global.myDwarf[# DWARF.SPRITE, i];
		pos++;
	}
}