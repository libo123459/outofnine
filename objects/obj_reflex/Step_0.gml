/// @description Insert description here
// You can write your code in this editor
if(!place_meeting(x+hspd,y,obj_energywall)||!place_meeting(x,y+vspd,obj_energywall))
{
	
}
if(place_meeting(x+hspd,y,obj_energywall))
{	
	if(period <3)
	{			
		while(!place_meeting(x+sign(hspd),y,obj_energywall))
		{	
			x += sign(hspd)
		}
		hspd = 0;
		var dir = direction;	
		//var b = instance_create_layer(x,y,"Instances",obj_reflex)
		direction = 180-dir;
		image_angle = direction
		period = period+1
		
		var r =instance_create_layer(x,y,"Instances",obj_reflexfire)
		r.direction = 180-dir;
		r.image_angle = r.direction
		//atk += 1;
	}else{
		scr_card_toUsed();//用过的放入弃牌
		player.fired = false;	
		scr_deck_draw();//抽卡自动填子弹		
		instance_destroy(self)		
	}	
}

if(place_meeting(x,y+vspd,obj_energywall))
{
	if(period<3)
	{		
		while(!place_meeting(x,y+sign(vspd),obj_energywall))
		{
			y+=sign(vspd)
		}
		vspd = 0
		var dir = direction;
		//var b = instance_create_layer(x,y,"Instances",obj_reflex)
		direction =  360-dir;	
		image_angle = direction;
		period = period+1
		var r =instance_create_layer(x,y,"Instances",obj_reflexfire)
		r.direction = 360-dir;
		r.image_angle = r.direction
		//atk += 1;
	}else{
		scr_card_toUsed();//用过的放入弃牌
		player.fired = false;
		scr_deck_draw();//抽卡自动填子弹

		instance_destroy(self)				
	}	
}
//
//image_angle = direction;

//var tail = instance_create_depth(x,y,-1001,obj_bullet_tail)
//tail.image_angle = direction;
if(place_meeting(x,y,player))
{	
	/*if(atk>1)
	{
		player.echo_atk = atk-1;
	}
	player.atk += player.echo_atk;*/
	player.type = 3
	player.fired = false;
	obj_card_using.colors = 5;
	obj_card_using.image_index = 5;
	obj_card_using.type = 3;
	//player.energy += 1;
	//if(player.energy >=4)
	//{
	//	player.energy = 4;
	//}
	/*
	for(var i =0;i<ds_list_size(global.card_using_list);i+=1)
	{
		var _tmp = ds_list_find_value(global.card_using_list,i);
		_tmp.colors = 5;
		_tmp.image_index = 5;
	}	*/
	instance_destroy(self)	
}
hspd = lengthdir_x(len,direction);
	vspd = lengthdir_y(len,direction);
	x += hspd;
	y += vspd;