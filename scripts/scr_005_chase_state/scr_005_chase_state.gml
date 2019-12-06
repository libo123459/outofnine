//scr_003_check_player();
sprite_index = spr_005_run_4;

var dir = point_direction(x,y,targetX,targetY);

hspeed_ = lengthdir_x(speed_,dir);
vspeed_ = lengthdir_y(speed_,dir); 
x += hspeed_*1.8;
y += vspeed_*1.8;
var flipped = (targetX > x)*2 - 1;
image_xscale = -flipped
if(abs(targetX - x)<=2 && abs(targetY - y)<=2)
{	
	randomize()
	var _s = irandom_range(1,100)
	if(_s <= 80)
	{
		image_index = 0;
		state = scr_005_attack_state;
		attacked = true;
	} else {
		image_index = 0;
		state = scr_005_chase_state;
	}

	//state = choose(scr_005_chase_state,scr_005_attack_state);
	image_index = 0;
	targetX = irandom_range(50,260)
	targetY = irandom_range(50,200)
	
}
/*
if(instance_exists(player))
{
	var flipped = (player.x > x)*2 - 1;
	image_xscale = flipped;
}
