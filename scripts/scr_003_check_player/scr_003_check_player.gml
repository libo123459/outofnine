if(instance_exists(player))
{
	
	var xdis = abs(x-player.x)
	var ydis = abs(y-player.y)
	if(xdis <=50 && ydis <= 10)
		{
			targetX = player.x;
			targetY = player.y;
			state = scr_003_readyattack_state;
			image_index = 1;
			
			//_zone.atk = atk
			
		} else{
			sprite_index = asset_get_index("spr_003_run_"+string(colors));;
			image_speed = 1.7*global.i_speed;			
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
		
	}