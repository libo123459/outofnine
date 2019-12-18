sprite_index = asset_get_index("spr_002_attack_"+string(colors));
image_speed = 1*global.i_speed;
if(place_meeting(x,y,player))
{
	if(attacked = true && image_index>=7)
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