///@arg room
//可扩展的方向
randomize();

var dir_list = ds_list_create();

if(scr_room_get(argument0.xpos,argument0.ypos + 1) != 1)
{
	ds_list_add(dir_list,1);
}
if(scr_room_get(argument0.xpos + 1,argument0.ypos) != 1)
{
	ds_list_add(dir_list,2)
}
if(scr_room_get(argument0.xpos,argument0.ypos - 1) != 1)
{
	ds_list_add(dir_list,3)
}
if(scr_room_get(argument0.xpos - 1,argument0.ypos) != 1)
{
	ds_list_add(dir_list,4)
}

var num = ds_list_size(dir_list)

if(num!=0)
{
	var dir = ds_list_find_value(dir_list,irandom_range(1,(num-1)))
} else {
	dir = 0;
}
return dir;
