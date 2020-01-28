/// @arg obj_door
var yoffset = 80;
var room_tmp = argument0.target_room;
global.room_current_index = argument0.target_room.index;


switch(argument0.dir)//door的方向属性
{
	case "up":
	instance_creat(0,0,obj_transition_8)
	//player.x = room_width/2;
	player.y = room_height-yoffset;
	break;
	
	case "down":
	instance_creat(0,0,obj_transition_2)
	//player.x = room_width/2;
	player.y = yoffset;
	break;
	
	case "left":
	instance_creat(0,0,obj_transition_4)
	player.x = room_width-yoffset;
	//player.y = room_height/2;
	break;
	
	case "right":
	instance_creat(0,0,obj_transition_6)
	player.x = yoffset;
	//player.y = room_height/2;
	break;
}

room_goto(ds_list_find_value(global.Room_list,global.room_current_index-1));
