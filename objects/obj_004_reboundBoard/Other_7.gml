/// @description Insert description here
// You can write your code in this editor
if(sprite_index = asset_get_index("spr_004_appear_"+string(colors)))
{		
	state = scr_004_attack_state;
	attacked = true;
}

if(sprite_index = asset_get_index("spr_004_attack_"+string(colors)))
{
	alarm[3] = room_speed*1.5;	
	image_speed = 0
	image_index = 4
}
if(sprite_index = asset_get_index("spr_004_disappear_"+string(colors)))
{	
	alarm[4] = room_speed;
	image_speed = 0;
	image_index = 6
}