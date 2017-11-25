/// @description state
if (state == "walking") {
	s_dwarf_walking_state();
} else if (state == "idle") {
	s_dwarf_idle_state();
} else if (state == "readyToClimb") {
	s_dwarf_readyToClimb_state();
} else if (state == "climbing") {
	s_dwarf_climbing_state();
}