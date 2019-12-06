sprite_index = spr_007_walk_2;
image_speed = 1.3 * global.i_speed;
var dir = point_direction(x,y,targetX,targetY);

hspeed_ = lengthdir_x(speed_,dir);
vspeed_ = lengthdir_y(speed_,dir); 
x += hspeed_*0.9;
y += vspeed_*0.9;
var flipped = (targetX > x)*2 - 1;
image_xscale = -flipped
if(abs(targetX - x)<=2 && abs(targetY - y)<=2)
{	
	state = scr_007_idle_state;
	alarm[3] = room_speed * 1.1;
}
/*
if(instance_exists(player))
{
	var flipped = (player.x > x)*2 - 1;
	image_xscale = flipped;
}
