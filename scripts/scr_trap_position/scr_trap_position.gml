//@arg pos_list

var _index = 0;
var xpos = 0;
var ypos = 0;
for(var i=0;i<ds_list_size(argument0);i++)
{
	_index = ds_list_find_value(argument0,i)
	ypos = ceil(_index/12);
	xpos = _index - (ypos-1)*12-1;
	instance_create_layer((xpos)*32 + 80,(ypos-1)*32 + 76,"Instances",obj_001_stab);
}