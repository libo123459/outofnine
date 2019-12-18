sprite_index = asset_get_index("spr_006_attack_"+string(colors))
image_speed = 1*global.i_speed;
if(image_index>=12 && attacked = false)
{
	var spider = instance_create_layer(x,y+40,"Instances",obj_007_spider)
	//spider.state = scr_007_summoned_state;
	spider.colors = colors
	spider.type = type

	attacked = true;
}