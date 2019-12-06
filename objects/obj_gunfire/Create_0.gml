/// @description Insert description here
// You can write your code in this editor
image_speed = 1*global.i_speed;

direction = player.fire_dir;
var flipped = (mouse_x > x)*2 - 1;

image_yscale = flipped;
image_angle = direction;
depth = -mouse_y;