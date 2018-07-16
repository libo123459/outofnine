/// @description Insert description here
// You can write your code in this editor
if(instance_exists(player))
{
	if(player.energy_remain = 0)
	{
		
		x = player.x +12;
		y = player.y -12;
	} else {
		instance_destroy(self)
	}
}