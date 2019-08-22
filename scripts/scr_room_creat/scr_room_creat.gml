	var room_tmp = scr_room_choose();
	var dir = scr_room_dir(room_tmp);//扩展方向
	randomize();
	switch(dir)
	{
		case 1://down
		var room_n = instance_create_layer(room_tmp.x,room_tmp.y+121,"Instances",obj_testroom);
		room_n.xpos = room_tmp.xpos;
		room_n.ypos = room_tmp.ypos+1;//下个房间x,ypos
		room_n.arrived = false;
		ds_grid_add(global.room_grid,room_n.xpos,room_n.ypos,1);
		ds_list_add(global.room_list,room_n);
		room_n.index = ds_list_size(global.room_list)
		room_n.colors = irandom_range(1,4);
		
		//var door = instance_create_layer(room_tmp.x,room_tmp.y+50,"Instances",obj_testdoor);
		//var door_n = instance_create_layer(room_n.x,room_n.y-50,"Instances",obj_testdoor);
		room_tmp.down = 1;//对向开门的房间加入到门的目标变量中
		room_tmp.down_target = room_n;
		room_n.up = 1;
		room_n.up_target = room_tmp;
		break;
			
		case 2://right
		var room_n = instance_create_layer(room_tmp.x+121,room_tmp.y,"Instances",obj_testroom);
		room_n.xpos = room_tmp.xpos+1;
		room_n.ypos = room_tmp.ypos;
		room_n.arrived = false;
		ds_grid_add(global.room_grid,room_n.xpos,room_n.ypos,1);
		ds_list_add(global.room_list,room_n);
		room_n.index = ds_list_size(global.room_list)
		room_n.colors = irandom_range(1,4);		
		
		//var door = instance_create_layer(room_tmp.x+50,room_tmp.y,"Instances",obj_testdoor);
		//var door_n = instance_create_layer(room_n.x-50,room_n.y,"Instances",obj_testdoor);
		room_tmp.right = 1;
		room_tmp.right_target = room_n;
		room_n.left = 1;
		room_n.left_target = room_tmp;
		break;
			
		case 3://up
		var room_n = instance_create_layer(room_tmp.x,room_tmp.y-121,"Instances",obj_testroom);
		room_n.xpos = room_tmp.xpos;
		room_n.ypos = room_tmp.ypos-1;
		room_n.arrived = false;
		ds_grid_add(global.room_grid,room_n.xpos,room_n.ypos,1);
		ds_list_add(global.room_list,room_n);
		room_n.index = ds_list_size(global.room_list)
		room_n.colors = irandom_range(1,4);
		
		//var door = instance_create_layer(room_tmp.x,room_tmp.y-50,"Instances",obj_testdoor);
		//var door_n = instance_create_layer(room_n.x,room_n.y+50,"Instances",obj_testdoor);
		room_tmp.up = 1;
		room_tmp.up_target = room_n;
		room_n.down = 1;
		room_n.down_target = room_tmp;		
		break;
			
		case 4://left
		var room_n = instance_create_layer(room_tmp.x-121,room_tmp.y,"Instances",obj_testroom);
		room_n.xpos = room_tmp.xpos-1;
		room_n.ypos = room_tmp.ypos;
		room_n.arrived = false;
		ds_grid_add(global.room_grid,room_n.xpos,room_n.ypos,1);
		ds_list_add(global.room_list,room_n);
		room_n.index = ds_list_size(global.room_list)
		room_n.colors = irandom_range(1,4);
		
		//var door = instance_create_layer(room_tmp.x-50,room_tmp.y,"Instances",obj_testdoor);
		//var door_n = instance_create_layer(room_n.x+50,room_n.y,"Instances",obj_testdoor);
		room_tmp.left = 1;
		room_tmp.left_target = room_n;
		room_n.right = 1;
		room_n.right_target = room_tmp;
		break;
	}
	room_num = ds_list_size(global.room_list)//房间总数没到一定数量时继续执行
	if(room_num < 13)
	{
		scr_room_creat();
	}

	
