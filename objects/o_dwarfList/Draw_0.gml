/// @description draw info
draw_self();
draw_set_font(fnt_companyUI);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
// portrait
draw_sprite(portrait, 0, x-347, y+47);
// name
draw_text_color(x-280, y+20, name, c_white, c_white, c_white, c_white, 1);
// level
draw_text_color(x-280, y+50, "Lv "+string(level), c_white, c_white, c_white, c_white, 1);
// HP
draw_text_color(x-180, y+50, "HP = "+string(HP), c_white, c_white, c_white, c_white, 1);