sprite_index = asset_get_index("spr_004_attack_"+string(colors));
//image_speed = .9*global.i_speed;
//var flipped = (targetX > x)*2 - 1;
//image_xscale = -flipped
if(attacked = true)
{
	var arm = instance_create_layer(x,y,"Instances",obj_004_bullet);
	arm.image_speed = 1*global.i_speed;
	attacked = false;
}
