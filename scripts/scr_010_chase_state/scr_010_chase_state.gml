sprite_index = asset_get_index("spr_010_run_"+string(colors));
//image_speed = 1.3 * global.i_speed;
targetX = player.x
targetY = player.y
var dir = point_direction(x,y,targetX,targetY);

hspeed_ = lengthdir_x(speed_,dir);
vspeed_ = lengthdir_y(speed_,dir); 
x += hspeed_*1.5
y += vspeed_*1.5

if(abs(targetX - x)<=25 && abs(targetY - y)<=25)
{	
	image_index = 0;	
	var flipped = (targetX > x)*2 - 1;
	image_xscale = -flipped;
	state = scr_010_readyatk_state;
}