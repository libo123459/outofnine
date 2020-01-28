scr_getinput();

var xaxis = (right_key - left_key);
var yaxis = (down_key - up_key);

if(fire_key && fired = false)
{	
	image_index = 0;
	flipped_x = (mouse_x > x)*2 - 1;
	flipped_y = (mouse_y > y)*2 - 1;
	fire_dir = point_direction(x,y,mouse_x,mouse_y);
	state = scr_fire_state;
}

if(xaxis == 0 and yaxis == 0) 
{
	readyrun = false;
	len = 0;
	if(flipped_ud = -1)
	{
		sprite_index = spr_player_idle;
	} else {
		sprite_index = spr_player_idleup;
	}	
	image_speed = 0.5 * global.i_speed;
	image_xscale = image_xscale;	
		
} else {	
	if(dash_key)
	{
		if(dash_cooldown = true)
		{			
			if(xaxis != 0)
			{
				image_xscale = -xaxis;
			} else {
				image_xscale = image_xscale;
			}
			if(sprite_index = spr_player_run_left)
			{
				sprite_index = spr_player_dash_left
			}
			if(sprite_index = spr_player_run_leftup)
			{
				sprite_index = spr_player_dash_leftup
			}
			alarm[0] = 0.3*room_speed;  //dash time
			alarm[4] = 0.05*room_speed  //dash effect
			alarm[5] = room_speed - ex_d_cooldown//dash cooldown
			dash_cooldown = false;
			sTime = true;
			state = scr_dash_state;	
		}
		
	} else {			
		dir = point_direction(0,0,xaxis,yaxis);
		if(xaxis = 0)
		{
			flipped = flipped;
		} else {
			flipped = -xaxis;
		}
		if(yaxis = 0)
		{
			flipped_ud = -1;
		} else {
			flipped_ud = -yaxis;
		}
		if(flipped_ud = -1)
		{
			sprite_index = spr_player_run_left			
		} else {			
			sprite_index = spr_player_run_leftup			
		}
		
		len = spd*1.2 + ex_spd;
		image_speed = 1*global.i_speed;
		image_xscale = flipped;			
	}	
}
			
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);
if(place_meeting(x + hspd + kb_x,y,obj_wall))
{
	hspd = 0;
	kb_x = 0;
}
if(place_meeting(x,y + vspd + kb_y,obj_wall))
{
	vspd = 0;
	kb_y = 0;
}
x += hspd + kb_x;
y += vspd + kb_y;
	

