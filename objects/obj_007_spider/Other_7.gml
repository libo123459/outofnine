/// @description Insert description here
// You can write your code in this editor
if(sprite_index = asset_get_index("spr_007_summoned_"+string(colors)))
{
	state = scr_007_idle_state;
	alarm[3] = room_speed * 1.1;
}