/// @description Insert description here
// You can write your code in this editor
/*if(position_meeting(x,y,obj_energywall))
{	
	instance_destroy(self)	
}*/
hspd = lengthdir_x(len,direction);
vspd = lengthdir_y(len,direction);
if(place_meeting(x+hspd,y,obj_energywall))
{	
	/*while(!place_meeting(x+sign(hspd),y,obj_energywall))
	{	
		x += sign(hspd)
	};*/	
		hspd = 0		
		var dir = direction;
		var b = instance_create_layer(x+hspd,y,"Instances",obj_reflex)
		b.direction = 180-dir;
		b.image_angle = b.direction
		b.period = 0;
		b.image_speed = 0;
		b.image_index = 2;
		b.atk = atk
		b.points = points;
	
		var r =instance_create_layer(x,y,"Instances",obj_reflexfire)
		r.direction = 180-dir;
		r.image_angle = r.direction
		instance_destroy(self)	
}

if(place_meeting(x,y+vspd,obj_energywall))
{			
		vspd = 0
		var dir = direction;
		var b = instance_create_layer(x,y+vspd,"Instances",obj_reflex)
		b.direction =  360-dir;	
		b.image_angle = b.direction
		b.period = 0;
		b.image_speed = 0;
		b.image_index = 2;
		b.atk = atk
		b.points = points;

		var r =instance_create_layer(x,y,"Instances",obj_reflexfire)
		r.direction = 360-dir;
		r.image_angle = r.direction
		instance_destroy(self)	
}
if(place_meeting(x,y+vspd,obj_004_reboundBoard))
{	
	vspd = 0;
	var dir = direction;
	direction =  360-dir;
	image_angle = direction
	var rb = instance_nearest(x,y+vspd,obj_004_reboundBoard)
	if(type = rb.type || type = 3)
	{				
		instance_destroy(rb)
		/*if(rb.sprite_index != asset_get_index("spr_004_static_"+string(rb.colors)))
		{
			obj_enemyManage.special_dead += 1;	
			rb.state = scr_004_static_state;
		}*/
		show_debug_message(obj_enemyManage.special_dead)
	}
}
if(place_meeting(x+hspd,y,obj_004_reboundBoard))
{	
	hspd = 0;
	var dir = direction;
	direction =  180-dir;
	image_angle = direction
	var rb = instance_nearest(x+hspd,y,obj_004_reboundBoard)	
	if(type = rb.type || type = 3)
	{		
		instance_destroy(rb)
		/*if(rb.sprite_index != asset_get_index("spr_004_static_"+string(rb.colors)))
		{
			obj_enemyManage.special_dead += 1;	
			rb.state = scr_004_static_state;
		}*/
		show_debug_message(obj_enemyManage.special_dead)
	}
}

x += hspd;
y += vspd;