/// @description Insert description here
// You can write your code in this editor
image_speed = 1;
if(instance_exists(player))
{
		var flipped = (player.x>x)*2-1;
image_xscale = flipped;
}


