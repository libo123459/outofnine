/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x+hspd,y,obj_energywall))
{	
	if(period <player.reflex_max+player.ex_reflex_max)
	{			
		/*while(!place_meeting(x+sign(hspd),y,obj_energywall))
		{	
			x += sign(hspd)
		}*/
		hspd = 0;
		var dir = direction;	
		//var b = instance_create_layer(x,y,"Instances",obj_reflex)
		direction = 180-dir;
		image_angle = direction
		period = period+1
		
		var r =instance_create_layer(x+hspd,y,"Instances",obj_reflexfire)
		r.direction = 180-dir;
		r.image_angle = r.direction
		//atk += 1;
	}else{
		if(instance_number(obj_008_crystal) = 1)
		{
			scr_008_reborn()
		}
		scr_card_newround()
	}	
}

if(place_meeting(x,y+vspd,obj_energywall))
{
	if(period<player.reflex_max+player.ex_reflex_max)
	{		
		
		vspd = 0
		var dir = direction;
		//var b = instance_create_layer(x,y,"Instances",obj_reflex)
		direction =  360-dir;	
		image_angle = direction;
		period = period+1
		var r =instance_create_layer(x,y+vspd,"Instances",obj_reflexfire)
		r.direction = 360-dir;
		r.image_angle = r.direction
		//atk += 1;
	}else{
		if(instance_number(obj_008_crystal) = 1)
		{
			scr_008_reborn()
		}
		scr_card_newround()			
	}	
}
//
//image_angle = direction;

//var tail = instance_create_depth(x,y,-1001,obj_bullet_tail)
//tail.image_angle = direction;
if(place_meeting(x,y,player))
{
	if(instance_number(obj_008_crystal) = 1)
	{
		scr_008_reborn()
	}
	player.type = 3
	player.fired = false;
	obj_card_using.sprite_index = spr_card_blue;
	obj_card_using.colors = player.colors;
	obj_card_using.points = player.points
	obj_card_using.image_index = obj_card_using.colors;
	obj_card_using.type = 3;	
	instance_destroy(self)	
}
hspd = lengthdir_x(len,direction);
vspd = lengthdir_y(len,direction);
x += hspd;
y += vspd;