/// @description init

// set random seed
random_set_seed(current_time);

// initialize gold
global.gold = 10000;

// macro
#macro CELL_SIZE		16
#macro ROOM_SIZE		128
#macro RIGHT			0
#macro UP				1
#macro LEFT				2
#macro DOWN				3
#macro BLOCK			1

// dwarfs' attributes
enum DWARF {
	NAME,
	LV,
	HP,
	SPD,
	SPRITE,
	OUT,
	COUNT
}

// dwarfs' names
firstName[0] = "Sam";
firstName[1] = "Jones";
firstName[2] = "Lily";
firstName[3] = "Bruce";
firstName[4] = "Nicky";
firstName[5] = "May";
firstName[6] = "Dizzy";
firstName[7] = "Jack";
firstName[8] = "Phil";
firstName[9] = "David";

lastName[0] = "Will";
lastName[1] = "Baker";
lastName[2] = "Rose";
lastName[3] = "Booker";
lastName[4] = "Chris";
lastName[5] = "Misty";
lastName[6] = "Long";
lastName[7] = "Manson";
lastName[8] = "Quil";
lastName[9] = "Jackson";

// create 3 dwarfs for hire
global.storeDwarf = ds_grid_create(DWARF.COUNT, 3);
for (var i=0; i<3; i++) {
	var num1 = irandom(9);
	var num2 = irandom(9);
	global.storeDwarf[# DWARF.NAME, i] = firstName[num1]+" "+lastName[num2];
	global.storeDwarf[# DWARF.LV, i] = 1;
	global.storeDwarf[# DWARF.HP, i] = 100;
	global.storeDwarf[# DWARF.SPD, i] = 6;
	global.storeDwarf[# DWARF.SPRITE, i] = spr_dwarf_idle;
	global.storeDwarf[# DWARF.OUT, i] = false;
}

// create your dwarf managment
global.myDwarf = ds_grid_create(DWARF.COUNT, 0);