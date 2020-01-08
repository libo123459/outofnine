scr_getinput();
if(sprite_index = spr_player_run_left)
{
	sprite_index = spr_player_dash_left
}
if(sprite_index = spr_player_run_leftup)
{
	sprite_index = spr_player_dash_leftup
}
len = spd * 3;
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);
if(place_meeting(x + hspd,y,obj_wall))
{
	hspd = 0;
}
if(place_meeting(x,y + vspd,obj_wall))
{
	vspd = 0;
}
	x += hspd;
	y += vspd;
	