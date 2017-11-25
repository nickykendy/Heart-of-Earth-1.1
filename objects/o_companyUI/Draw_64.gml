/// @description draw GUI

// gold
if (room == rm_company or room == rm_stuff or room == rm_map) {
	draw_sprite(spr_leftUpCorner, 0, 0, 0);
	draw_sprite(spr_gold, 0, 26, 20);
	draw_set_font(fnt_companyUI);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text_color(46, 20, string(global.gold), c_yellow, c_yellow, c_yellow, c_yellow, 1);
}