/// @description Insert description here
// You can write your code in this editor
global.date_num = 0;
global.date_grid = ds_grid_create(5,14);
global.date_icon_list = ds_list_create()
for(i=0;i<13;i+=1)
{
	var date = instance_create_depth(room_width-20,20+i*17,-10000,obj_date);
	ds_list_add(global.date_icon_list,date)
	date.points = i+1;
}