/// @description Insert description here
// You can write your code in this editor
spd = 3;
len = spd;			
//direction = spr_gun.direction;
direction = point_direction(x,y,player.x,player.y);
hspd = lengthdir_x(len,direction);
vspd = lengthdir_y(len,direction);

atk = 1;
depth = player.depth + 1;