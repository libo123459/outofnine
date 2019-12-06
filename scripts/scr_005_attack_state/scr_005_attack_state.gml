sprite_index = spr_005_attack_4;
image_speed = .9*global.i_speed;
var flipped = (targetX > x)*2 - 1;
image_xscale = -flipped
if(image_index >= 3)
{	
	if(attacked = true)
	{
		var arm = instance_create_layer(player.x,player.y,"Instances",obj_005_arm);
		arm.image_speed = 1.1*global.i_speed;
		attacked = false;
	}
}