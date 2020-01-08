/// @description dash tail
// You can write your code in this editor
if(state = scr_dash_state)
{	
	var spr = instance_create_layer(x,y,"Instances",player_dashtail)
	spr.sprite_index = sprite_index
	spr.image_xscale = image_xscale

	
	alarm[4]=0.1*room_speed;
}