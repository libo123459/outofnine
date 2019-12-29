var xpos = room_width/2
var ypos = room_height/2;
var offset = 80;
var shop_list = ds_list_create();

for(var i = 0;i<3;i++)
{
	var select = instance_create_layer(xpos+((i-1)*offset),ypos,"Instances",obj_shop_select)
	//var zone = instance_create_layer(select.x,select.y+20,"Instances",obj_select_zone)
	if(i = 0)
	{
		select.project_id = 101;
		select.cost = 3;
		select.count = 3;
	}
	if(i = 1)
	{
		select.project_id = 101;
		select.cost = 5;
		select.count = 7;
	}
	if(i = 2)
	{
		select.project_id = 101;
		select.cost = 7;
		select.count = 10;
	}
	scr_project_get_sprite(select)
	select.index = i
}