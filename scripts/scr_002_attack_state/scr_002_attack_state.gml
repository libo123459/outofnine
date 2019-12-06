sprite_index = spr_002_attack_2;
image_speed = 1*global.i_speed;
if(place_meeting(x,y,player))
{
	if(attacked = true && image_index>=7)
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