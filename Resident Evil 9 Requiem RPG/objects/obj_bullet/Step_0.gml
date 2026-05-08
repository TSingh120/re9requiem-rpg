image_index = 1;

x += lengthdir_x(spd, image_angle);
y += lengthdir_y(spd, image_angle);

var _p = 256;
if !point_in_rectangle(x,y, -_p, -_p, room_width + _p, room_height + _p) instance_destroy();