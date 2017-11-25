/// @description draw GUI

// level info panel
draw_sprite(spr_levelInfoPanel, 0, 0, 80);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
with (o_entrance) {
	if (image_index == 1) {
		// level
		draw_text_color(20, 120, "Level: "+string(level), c_white, c_white, c_white, c_white, 1);
		// description
		draw_text_color(20, 150, desc, c_white, c_white, c_white, c_white, 1);
	}
}