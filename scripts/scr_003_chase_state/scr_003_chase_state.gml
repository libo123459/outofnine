//scr_003_check_player();

var dir = point_direction(x,y,targetX,targetY);

hspeed_ = lengthdir_x(speed_,dir);
vspeed_ = lengthdir_y(speed_,dir); 
x += hspeed_*2.6*global.i_speed;
y += vspeed_*2.6*global.i_speed;;

if(abs(targetX - x)<=5 && abs(targetY - y)<=5)
{	
	image_index = 0;	
	
	var flipped = (targetX > x)*2 - 1;
	image_xscale = -flipped;
	state = scr_003_readyattack_state;
	targetX = player.x
	targetY = player.y;
}
/*
if(instance_exists(player))
{
	var flipped = (player.x > x)*2 - 1;
	image_xscale = flipped;
}
