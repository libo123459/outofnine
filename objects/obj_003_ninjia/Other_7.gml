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
		sprite_index = spr_003_attack_4;
	} else {
		sprite_index = spr_003_attackup_4;
	}
	
	var flipped = (targetX > x)*2 - 1;
	image_xscale = -flipped
	
	state = scr_003_attack_state;
	attacked = true
}