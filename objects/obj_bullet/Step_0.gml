/// @description Insert description here
// You can write your code in this editor
/*if(position_meeting(x,y,obj_energywall))
{	
	instance_destroy(self)	
}*/
if(place_meeting(x+hspd,y,obj_energywall))
{	
	/*while(!place_meeting(x+sign(hspd),y,obj_energywall))
	{	
		x += sign(hspd)
	}
	hspd = 0;*/
	if(type!= 3)
	{		
		var dir = direction;
		var b = instance_create_layer(x,y,"Instances",obj_reflex)
		b.direction = 180-dir;
		b.image_angle = b.direction
		b.period = 0;
		var r =instance_create_layer(x,y,"Instances",obj_reflexfire)
		r.direction = 180-dir;
		r.image_angle = r.direction
	} else {
		scr_card_toUsed();//用过的放入弃牌
		scr_player_atk_refresh();
		scr_deck_draw();//抽卡自动填子弹
	}
	instance_destroy(self)	
}

if(place_meeting(x,y+vspd,obj_energywall))
{
	if(type != 3)
	{		
		var dir = direction;
		var b = instance_create_layer(x,y,"Instances",obj_reflex)
		b.direction =  360-dir;	
		b.image_angle = b.direction
		b.period = 0;
		var r =instance_create_layer(x,y,"Instances",obj_reflexfire)
		r.direction = 360-dir;
		r.image_angle = r.direction
	} else {
		scr_card_toUsed();//用过的放入弃牌
		scr_player_atk_refresh();
		scr_deck_draw();//抽卡自动填子弹
	}
	instance_destroy(self)	
}
x += hspd;
y += vspd;