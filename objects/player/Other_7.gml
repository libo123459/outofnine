/// @description Insert description here
// You can write your code in this editor
/*if(state = scr_dash_state)
{
	state = scr_move_state
}*/
if(sprite_index = spr_player_readyrun)
{
	readyrun = true;
}
if(state = scr_fire_state)
{
	if(!instance_exists(obj_bullet_p))
	{		
		fired = false;
	}
	state = scr_move_state;
}