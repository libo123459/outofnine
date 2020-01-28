sprite_index = asset_get_index("spr_009_run_"+string(colors));
//image_speed = 1.3 * global.i_speed;
var dir = point_direction(x,y,targetX,targetY);
hspeed_ = lengthdir_x(speed_,dir);
vspeed_ = lengthdir_y(speed_,dir); 
x += hspeed_;
y += vspeed_;
//var flipped = (targetX > x)*2 - 1;
//image_xscale = -flipped
if(abs(targetX - x)<=2 && abs(targetY - y)<=2)
{	
	state = scr_009_idle_state;
	alarm[3] = room_speed/2;
}