sprite_index = asset_get_index("spr_008_run_"+string(type));

var dir = point_direction(x,y,targetX,targetY);

hspeed_ = lengthdir_x(speed_,dir);
vspeed_ = lengthdir_y(speed_,dir); 
x += hspeed_*0.9;
y += vspeed_*0.9;

if(abs(targetX - x)<=2 && abs(targetY - y)<=2)
{	
	randomize()
	var _s = irandom_range(1,100)
	if(_s <= 80)
	{
		
		state = scr_008_attack_state;
		attacked = true;
	} else {		
		state = scr_008_chase_state;
	}
	targetX = irandom_range(66,room_width-66)
	targetY = irandom_range(66,room_height-66)
	
}
/*
if(instance_exists(player))
{
	var flipped = (player.x > x)*2 - 1;
	image_xscale = flipped;
}
