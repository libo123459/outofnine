
image_speed = .8;

sprite_index = spr_wizard_attack;
if(instance_exists(player))
{
	
if((x - player.x)>0)
{
	image_xscale = -1;
}else{
	image_xscale = 1;
}
}