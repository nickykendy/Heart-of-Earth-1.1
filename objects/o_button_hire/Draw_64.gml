/// @description draw the gold

// gold icon
draw_sprite(spr_gold, 0, x-24, y-60);
// portrait
draw_sprite_ext(spr_portrait, 0, x, y-180, 2, 2, 0, c_white, 1);
// hire fee
draw_set_font(fnt_companyUI);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text_color(x-12, y-60, string(hireFee), c_yellow, c_yellow, c_yellow, c_yellow, 1);
// dwarf image
draw_sprite(dwarfForHireSprite, 0, x, y-150);
// dwarf name or blank
draw_set_halign(fa_center);
if (dwarfForHireName != noone) {
	draw_text_color(x, y-250, dwarfForHireName, c_white, c_white, c_white, c_white, 1);
} else {
	draw_text_color(x, y-250, "BLANK", c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
}