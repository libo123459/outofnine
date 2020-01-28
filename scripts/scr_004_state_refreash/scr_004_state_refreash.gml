if(instance_number(obj_004_reboundBoard)=1)
{
	var colors = obj_004_reboundBoard.colors;
	var _top = false;
	if(obj_004_reboundBoard.top = false)
	{
		_top = true;
	}
	var mon = instance_create_layer(room_width/2,room_height/2,"Instances",obj_004_reboundBoard)
	var room_tmp = ds_list_find_value(global.room_list,global.room_current_index-1);
	mon.top = _top
	mon.points = global.date_num;
	randomize();
	mon.colors = colors;
	if(mon.colors = 1||mon.colors = 2)
	{
		mon.type = 1;
	} else {
		mon.type = 2;
	}
	scr_004_position(mon)
}

/*
if(obj_enemyManage.special_dead = 1)
{
	for(var i =0;i<instance_number(obj_004_reboundBoard);i++)
	{
		var rb = instance_find(obj_004_reboundBoard,i)
		with(rb)
		{			
			if(sprite_index = asset_get_index("spr_004_static_"+string(rb.colors)))
			{
				state = scr_004_disappear_state;
				image_index = 0;
				image_speed = 1;
				show_debug_message("static state!!!")
				instance_create_layer(x,y,"Instances",obj_004_tip)
			}
		}
	}
}
if(obj_enemyManage.special_dead = 2)
{
	for(var i =0;i<2;i++)
	{
		var rb = instance_find(obj_004_reboundBoard,0)
		instance_destroy(rb)
	}
}
obj_enemyManage.special_dead = 0;