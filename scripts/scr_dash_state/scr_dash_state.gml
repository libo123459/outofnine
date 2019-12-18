scr_getinput();

len = spd * 2.5;
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

