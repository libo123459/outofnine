/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_005_LongArm))
{	
	if(attacked = true && image_index>=6)
	{		
		if(player.sTime = true)
		{
			global.i_speed = 0.2;
		} else {
			scr_player_hurt(self)
		}
		attacked = false;
	}
}