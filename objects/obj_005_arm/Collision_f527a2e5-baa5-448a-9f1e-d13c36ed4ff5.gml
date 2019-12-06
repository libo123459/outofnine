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
			var kb_dir = point_direction(obj_005_LongArm.x,obj_005_LongArm.y,player.x,player.y);	
			player.kb_x = lengthdir_x(3, kb_dir);
			player.kb_y = lengthdir_y(3, kb_dir);
			player.knockback = true;
			player.alarm[2] = room_speed/6;
			player.hp -= 1;
		}
		attacked = false;
	}
}