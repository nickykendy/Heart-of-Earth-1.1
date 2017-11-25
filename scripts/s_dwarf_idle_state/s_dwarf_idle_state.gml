/// @description s_dwarf_idle_state()
// if in the sky, fall on the ground
if (!place_meeting(x, y+1, o_collision)) {
    vspd += grav;
} else {
    vspd = 0;
}

s_move(o_collision);
s_move(o_ladder);