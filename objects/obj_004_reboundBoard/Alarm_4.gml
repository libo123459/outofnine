/// @description stall time(dis to app)
// You can write your code in this editor
if(sprite_index != asset_get_index("spr_004_static_"+string(colors)))
{	
	scr_004_position(self)
	state = scr_004_appear_state;
	image_speed = 1;
	image_index = 0;
}