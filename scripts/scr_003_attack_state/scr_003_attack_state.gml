image_speed = 1.4*global.i_speed;
if(place_meeting(x,y,player))
{
	if(attacked = true && image_index>=3)
	{		
		if(player.sTime = true)
		{
			global.i_speed = 0.2;
		} else {
			var kb_dir = point_direction(x,y,player.x,player.y);	
			player.kb_x = lengthdir_x(3, kb_dir);
			player.kb_y = lengthdir_y(3, kb_dir);
			player.knockback = true;
			player.alarm[2] = room_speed/6;
			player.hp -= 1;
		}	
		attacked = false;
	}
}

var dir = point_direction(x,y,targetX,targetY);

hspeed_ = lengthdir_x(speed_,dir);
vspeed_ = lengthdir_y(speed_,dir); 
x += hspeed_*1.9*global.i_speed;;
y += vspeed_*1.9*global.i_speed;;



