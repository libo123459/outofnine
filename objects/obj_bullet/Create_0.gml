/// @description Insert description here
// You can write your code in this editor
//hspd = 0;
//vspd = 0;
spd = 10;
len = spd;			
//direction = spr_gun.direction;
direction = player.fire_dir;
hspd = lengthdir_x(len,direction);
vspd = lengthdir_y(len,direction);
xStart = x;
yStart = y;
image_angle = direction;
echo = false;//加持状态

atk = 1;
colors = 0;
points = 0;
depth = player.depth + 1;