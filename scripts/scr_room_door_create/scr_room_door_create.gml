///@arg room_tmp

if(argument0.up = 1)
{
	var temp = instance_create_layer(room_width/2,16,"Instances",obj_door);
	temp.target_room = argument0.up_target;
	temp.dir = "up";
	temp.image_index = temp.target_room.colors;
	temp.colors = temp.image_index;
}

if(argument0.down = 1)
{
	var temp = instance_create_layer(room_width/2,room_height-16,"Instances",obj_door);
	temp.target_room = argument0.down_target;
	temp.dir = "down";
	temp.image_angle = 180;
	temp.image_index = temp.target_room.colors;
	temp.colors = temp.image_index;
}

if(argument0.left = 1)
{
	var temp = instance_create_layer(16,room_height/2,"Instances",obj_door);
	temp.target_room = argument0.left_target;
	temp.dir = "left"
	temp.image_angle += 90;
	temp.image_index = temp.target_room.colors;
	temp.colors = temp.image_index;
}

if(argument0.right = 1)
{
	var temp = instance_create_layer(room_width-16,room_height/2,"Instances",obj_door);
	temp.target_room = argument0.right_target;
	temp.dir = "right"
	temp.image_angle -= 90;
	temp.image_index = temp.target_room.colors;
	temp.colors = temp.image_index;
}

var _floor = instance_create_depth(room_width/2,room_height/2,-1,obj_floor);
_floor.colors = argument0.colors;
_floor.image_index = _floor.colors;
//scr_room_monster_create(argument0)
argument0.arrived = true;