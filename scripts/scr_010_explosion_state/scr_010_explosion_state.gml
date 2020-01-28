sprite_index = asset_get_index("spr_010_explosion_"+string(colors));
image_speed = .3
if(place_meeting(x,y,player))
{
	if(attacked = true)
	{					
		scr_player_hurt(self)			
		attacked = false;	
	}	
}
