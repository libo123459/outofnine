/// @description Insert description here
// You can write your code in this editor
if(sprite_index = asset_get_index("spr_005_attack_"+string(colors)))
{
	state = choose(scr_005_idle_state,scr_005_chase_state)
	if(state = scr_005_idle_state)
	{
		image_index = 0;
		alarm[3] = room_speed;
	}else{		
		image_index = 0;
		targetX = irandom_range(66,room_width-66)
		targetY = irandom_range(66,room_height-66)
	}
}