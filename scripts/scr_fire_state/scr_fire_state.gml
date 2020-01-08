if(flipped_y = 1)
{
	sprite_index = spr_player_attack_left;	
}else{
	sprite_index = spr_player_attack_leftup;
}
flipped_ud = -flipped_y
image_xscale = -flipped_x;
image_speed = 1;

if(image_index>=3 && image_index <=4)
{
	if(fired = false)
	{		
		var bullet = instance_create_layer(x,y,"Instances",obj_bullet);
		//bullet.colors = card_colors;
		bullet.points = points;
		bullet.type = type
		bullet.atk = atk+ex_atk;
		bullet.image_index = type-1;
		bullet.image_speed = 0;
		//bullet.spd = bullet_spd+ex_b_spd;
		
		//alarm[0] = bullet_cooldown;//子弹间隔		
	
		//atk = 1;
		var gunfire = instance_create_layer(x,y,"Instances",obj_gunfire);
		obj_card_using.image_index = 0;
		fired = true;
	}
}
