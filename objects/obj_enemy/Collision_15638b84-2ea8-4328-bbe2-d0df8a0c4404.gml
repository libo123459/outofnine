/// @description Insert description here
// You can write your code in this editor
if(points <= obj_card_using.points)
{
	scr_card_using_trigger()
	show_debug_message("Main card trigger!!!")
}

/*if(points <= obj_card_vice.points)
{
	scr_card_vice_trigger()
	show_debug_message("Vice card trigger!!!")
}*/

hp -= player.atk
if(hp <=0)
{
	instance_create_layer(x,y,"Instances",obj_bleed_w);		
	instance_destroy(self);
}

scr_card_newround()
instance_destroy(other);

knockback = true;
alarm[2] = room_speed/5
instance_create_layer(0,0,"Instances",obj_shake)