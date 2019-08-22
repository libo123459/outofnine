if(instance_exists(player))
{
	var dis = point_distance(x,y,player.x,player.y);
	var xdis = abs(x-player.x)
	var ydis = abs(y-player.y)
	if(dis < sight)
	{
		if(xdis <=50 && ydis <= 10)
		{
			targetX = player.x;
			targetY = player.y;
			state = scr_003_readyattack_state;
			image_index = 1;
			
			//_zone.atk = atk
			
		} else{
			sprite_index = spr_003_run_4;
			image_speed = 1.7;			
			if(x > player.x)
			{
				targetX = player.x + 10
			} else {
				targetX = player.x - 10
			}			
			targetY = player.y;
			var flipped = (targetX > x)*2 - 1;
			image_xscale = -flipped;
			state = scr_003_chase_state;
		}
		
	} else {
		scr_003_choose_state();
	}
} else {
	scr_003_choose_state();
}