/// @description Insert description here
// You can write your code in this editor
//hspd = 0;
//vspd = 0;
spd = player.bullet_spd+player.ex_b_spd;
len = spd;			
//direction = spr_gun.direction;
direction = player.fire_dir;

xStart = x;
yStart = y;
image_angle = direction;

atk = 1;
colors = 0;
points = 0;
depth = player.depth + 1;