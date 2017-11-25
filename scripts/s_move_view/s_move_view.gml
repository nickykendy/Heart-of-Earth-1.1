/// @description s_move_view()

var right = keyboard_check(vk_right) or (mouse_x >= x + 310);
var left = keyboard_check(vk_left) or (mouse_x <= x - 310);
var up = keyboard_check(vk_up) or (mouse_y <= y - 190);
var down = keyboard_check(vk_down) or (mouse_y >= y + 190);

var hspd = (right - left)*viewspd;
var vspd = (down - up)*viewspd;

x += hspd;
y += vspd;