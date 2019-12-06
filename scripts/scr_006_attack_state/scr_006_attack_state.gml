sprite_index = spr_006_attack_3;
image_speed = 1*global.i_speed;
if(image_index>=12 && attacked = false)
{
	var spider = instance_create_layer(x,y+40,"Instances",obj_007_spider)
	spider.state = scr_007_summoned_state;
	
	attacked = true;
}