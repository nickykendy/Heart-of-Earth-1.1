/// @description draw the portrait
draw_self();
if (listId != noone) {
	draw_sprite(listId.portrait, 0, x, y+12);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_color(x, y-50, listId.name, c_white, c_white, c_white, c_white, 1);
}