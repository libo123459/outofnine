/// @description Insert description here
// You can write your code in this editor
	instance_destroy(self);			
	
	instance_create_layer(x,y,"Instances",obj_bleed_w);		
	knockback = true;
	alarm[2] = 10
	instance_create_layer(0,0,"Instances",obj_shake)	
