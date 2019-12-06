///@arg room

if(argument0.arrived = false)
{	
	if(global.date_num < 13)
	{
		global.date_num +=1;
	}	
	var xpos = argument0.colors;
	var ypos = global.date_num;
	ds_grid_add(global.date_grid,xpos,ypos,1);
	
	var date = ds_list_find_value(global.date_icon_list,ypos-1);
	date.colors = argument0.colors;
	date.image_index = date.colors;
	
}