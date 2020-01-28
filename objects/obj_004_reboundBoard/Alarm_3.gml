/// @description stall time (atk to dis)
// You can write your code in this editor
if(sprite_index != asset_get_index("spr_004_static_"+string(colors)))
{	
	state = scr_004_disappear_state;
	image_speed = 1;
	image_index = 0;
}