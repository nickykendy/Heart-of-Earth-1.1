/// @description grab this dwarf
if (room == rm_map) {
	var ins = instance_create_layer(mouse_x, mouse_y, "Inst_grab", o_grabDwarf);
	ins.grabId = id;
}