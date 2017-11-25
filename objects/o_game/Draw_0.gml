/// @description draw the mouse
if (cursor == noone) {
	var _width = view_wport[0]/camera_get_view_width(view_camera[0]);
	var _height = view_hport[0]/camera_get_view_height(view_camera[0]);
	var _surface = surface_create(64, 64);
	surface_set_target(_surface);
	draw_clear(c_green);
	draw_sprite_ext(spr_mouse, 1, 1, 0, _width, _height, 0, c_white, 1);
	surface_reset_target();
	cursor = sprite_create_from_surface(_surface, 0, 0, _width*sprite_get_width(spr_mouse), _height*sprite_get_height(spr_mouse), true, false, 0, 0);

	surface_free(_surface);
	cursor_sprite = cursor;
}