/// @description Insert description here
// You can write your code in this editor
if(state = scr_003_attack_state)
{
	randomize();
	state = scr_003_stall_state;
	alarm[1] = room_speed
	attacked = false;
}
if(state = scr_003_readyattack_state)
{
	targetX = player.x;
	targetY = player.y;
	if(targetY-y>0)
	{
		sprite_index = asset_get_index("spr_003_attack_"+string(colors));;
	} else {
		sprite_index = asset_get_index("spr_003_attackup_"+string(colors));;
	}
	
	var flipped = (targetX > x)*2 - 1;
	image_xscale = -flipped
	
	state = scr_003_attack_state;
	attacked = true
}