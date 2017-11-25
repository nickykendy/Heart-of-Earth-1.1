/// @description draw dwarf stats
var i = 0;
if (instance_exists(o_dwarf)) {
	with (o_dwarf) {
		// background
		if (selected == true) {
			draw_sprite(spr_mineDwarf, 1, 260*i, 0);
		} else {
			draw_sprite(spr_mineDwarf, 0, 260*i, 0);
		}
		// portrait
		draw_sprite(portrait, 0, 260*i+30, 45);
		// name
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_text_color(260*i+65, 15, name, c_white, c_white, c_white, c_white, 1);
		// HP
		var pgs = ((229-71)*(HP/maxHP))+71;
		draw_rectangle_color(260*i+70, 40, 260*i+230, 60, c_yellow, c_yellow, c_yellow, c_yellow, true);
		draw_rectangle_color(260*i+71, 41, 260*i+pgs, 59, c_green, c_green, c_green, c_green, false);
		i++;
	}
}