/// @description Insert description here
// You can write your code in this editor
if(sprite_index = spr_006_disappear_3)
{		
	
	state = scr_006_appear_state;
	attacked = false;
	targetX = player.x
	x = irandom_range(40,277)
	y = irandom_range(40,210)
	var flipped = (targetX > x)*2 - 1;
	image_xscale = -flipped	
}

if(sprite_index = spr_006_attack_3)
{
	state = scr_006_idle_state;
	
	alarm[3] = room_speed
	
}
if(sprite_index = spr_006_appear_3)
{	
	state = scr_006_attack_state;		
	targetX = player.x
	targetY = player.y;

	var flipped = (targetX > x)*2 - 1;
	image_xscale = -flipped
}