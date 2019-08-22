/// @arg obj_door

var room_tmp = argument0.target_room;
global.room_current_index = argument0.target_room.index;

scr_date_update(room_tmp)
switch(argument0.dir)//door的方向属性
{
	case "up":
	instance_creat(0,0,obj_transition_8)
	player.x = room_width/2;
	player.y = room_height-50;
	break;
	
	case "down":
	instance_creat(0,0,obj_transition_2)
	player.x = room_width/2;
	player.y = 50;
	break;
	
	case "left":
	instance_creat(0,0,obj_transition_4)
	player.x = room_width-50;
	player.y = room_height/2;
	break;
	
	case "right":
	instance_creat(0,0,obj_transition_6)
	player.x = 50;
	player.y = room_height/2;
	break;
}

room_goto(ds_list_find_value(global.Room_list,global.room_current_index-1));
