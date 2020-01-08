image_speed = 1.4*global.i_speed;
if(place_meeting(x,y,player))
{
	if(attacked = true && image_index>=3)
	{		
		if(player.sTime = true)
		{
			global.i_speed = 0.2;
		} else {			
			scr_player_hurt(self)
		}	
		attacked = false;
	}	
}

var dir = point_direction(x,y,targetX,targetY);

hspeed_ = lengthdir_x(speed_,dir);
vspeed_ = lengthdir_y(speed_,dir); 
x += hspeed_*2.1*global.i_speed;;
y += vspeed_*2.1*global.i_speed;;



