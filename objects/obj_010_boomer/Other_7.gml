/// @description Insert description here
// You can write your code in this editor
if(sprite_index = asset_get_index("spr_010_hurt_"+string(colors)))
{
	state = scr_010_explosion_state;
}
if(sprite_index = asset_get_index("spr_010_explosion_"+string(colors)))
{
	state = scr_010_chase_state;
	attacked = true
}
if(sprite_index = asset_get_index("spr_010_readyatk_"+string(colors)))
{
	state = scr_010_explosion_state;
	attacked = true
}