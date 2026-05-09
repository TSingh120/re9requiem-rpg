var _dx = 0;
var _dy = gui_h * 0.7;
var _boxw = gui_w;
var _boxh = gui_h - _dy;

draw_sprite_stretched(spr_box, 0, _dx, _dy, _boxw, _boxh);

_dx += 683;
_dy += 32;

draw_set_font(Font1);
draw_set_color(c_white);

var _name = messages[current_message].name;
draw_set_color(global.char_colors[$ _name]);
draw_text(_dx, _dy, _name);
draw_set_color(c_white);

_dy += 90;

draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx * 0.5);