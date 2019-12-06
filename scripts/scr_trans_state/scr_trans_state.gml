if(fired = true)
{
	var tail = instance_create_layer(x,y,"Instances",obj_bullet_tail)
	dir = point_direction(x,y,obj_bullet_p.x,obj_bullet_p.y);
	tail.image_angle = dir;
	tail.targetX = obj_bullet_p.x
	tail.targetY = obj_bullet_p.y
	//tail.len = 30;
	//tail.hspd = lengthdir_x(len,dir);
	//tail.vspd = lengthdir_y(len,dir);
	with(tail)
	{
		move_towards_point(targetX,targetY,10)
	}

}

x = obj_bullet_p.x
y = obj_bullet_p.y
instance_destroy(obj_bullet_p)
fired = false;
state = scr_move_state;