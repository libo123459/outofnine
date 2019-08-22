if(flipped_y = 1)
{
	sprite_index = spr_player_attack_left;
	
}else{
	sprite_index = spr_player_attack_leftup;
}
flipped_ud = -flipped_y
image_xscale = -flipped_x;
image_speed = 1;

if(image_index>=4)
{
	if(fired = false)
	{		
		var bullet = instance_create_layer(x,y,"Instances",obj_bullet)
	
		alarm[0] = bullet_cooldown;//子弹间隔
	
		scr_card_toUsed();//用过的放入弃牌
		player.card_points = 0;//每次发射卡牌后，角色持有花色和点数归零
		player.card_colors = 0;
		scr_deck_draw();//抽卡自动填子弹
		fired = true;

	}
}
