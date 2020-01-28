var rb = instance_nearest(x+hspd,y,obj_004_reboundBoard)
if(type = rb.type || type = 3)
{		
	if(rb.state != scr_004_static_state)
	{
		obj_enemyManage.special_dead += 1;	
		rb.state = scr_004_static_state;
	}
	show_debug_message(string(obj_enemyManage.special_dead))
}
