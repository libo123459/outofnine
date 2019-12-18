/// @description Insert description here
// You can write your code in this editor
if(sprite_index = asset_get_index("spr_002_disappear_"+string(colors)))
{		
	state = scr_002_attack_state;
		
	targetX = player.x
	targetY = player.y;
	x = targetX
	y = targetY
	var flipped = (targetX > x)*2 - 1;
	image_xscale = -flipped
	attacked = true;
}

if(sprite_index = asset_get_index("spr_002_attack_"+string(colors)))
{
	state = scr_002_appear_state;
	
	targetX = player.x
	x = irandom_range(40,277)
	y = irandom_range(40,210)
	var flipped = (targetX > x)*2 - 1;
	image_xscale = -flipped
}
if(sprite_index = asset_get_index("spr_002_appear_"+string(colors)))
{
	state = scr_002_idle_state;
	
	alarm[3] = room_speed
}