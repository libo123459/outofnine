///@arg monster_style
///@arg colors;
var xPos = irandom_range(100,room_width-100);
var yPos = irandom_range(100,room_height-100)
switch (argument0)
{
	case 2:	
	var mon = instance_create_layer(xPos,yPos,"Instances",obj_002_FourHands)	
	mon.points = global.date_num;
	mon.colors = argument1;	
	if(mon.colors = 1||mon.colors = 2)
	{
		mon.type = 1;
	} else {
		mon.type = 2;
	}
	break;
	
	case 3:
	var mon = instance_create_layer(xPos,yPos,"Instances",obj_003_ninjia)	
	mon.points = global.date_num;
	mon.colors = argument1;	
	if(mon.colors = 1||mon.colors = 2)
	{
		mon.type = 1;
	} else {
		mon.type = 2;
	}
	break;
	
	case 4:
	var mon = instance_create_layer(xPos,yPos,"Instances",obj_004_reboundBoard)
	var _xpos = irandom_range(100,room_width-100);
	var _ypos = irandom_range(100,room_height-100)
	var mon2 = instance_create_layer(_xpos,_ypos,"Instances",obj_004_reboundBoard)
	mon.points = global.date_num;
	mon2.points = global.date_num;
	mon.colors = argument1;
	mon2.colors = mon.colors
	mon.top = true;
	mon2.top = false
	if(mon.colors = 1||mon.colors = 2)
	{
		mon.type = 1;
	} else {
		mon.type = 2;
	}
	if(mon2.colors = 1||mon2.colors = 2)
	{
		mon2.type = 1;
	} else {
		mon2.type = 2;
	}
	scr_004_position(mon)
	scr_004_position(mon2)
	break;
	
	case 5:
	var mon = instance_create_layer(xPos,yPos,"Instances",obj_005_LongArm)	
	mon.points = global.date_num;
	mon.colors = argument1;	
	if(mon.colors = 1||mon.colors = 2)
	{
		mon.type = 1;
	} else {
		mon.type = 2;
	}
	break;
	
	case 6:
	var mon = instance_create_layer(xPos,yPos,"Instances",obj_006_wizard)	
	mon.points = global.date_num;
	mon.colors = argument1;	
	if(mon.colors = 1||mon.colors = 2)
	{
		mon.type = 1;
	} else {
		mon.type = 2;
	}
	break;
	
	case 8:
	for(var i = 0;i<2;i++)
	{
		var mon = instance_create_layer(xPos,yPos,"Instances",obj_008_crystal)
		mon.points = global.date_num;
		mon.colors = argument1;

		if(mon.colors = 1||mon.colors = 2)
		{
			mon.type = 1;
		} else {
			mon.type = 2;
		}
	}
	break;
	
	case 9:
	var mon = instance_create_layer(xPos,yPos,"Instances",obj_009_sheilder)	
	mon.points = global.date_num;
	mon.colors = argument1;	
	if(mon.colors = 1||mon.colors = 2)
	{
		mon.type = 1;
	} else {
		mon.type = 2;
	}
	break;
	
	case 10:
	var mon = instance_create_layer(xPos,yPos,"Instances",obj_010_boomer)	
	mon.points = global.date_num;
	mon.colors =argument1;	
	if(mon.colors = 1||mon.colors = 2)
	{
		mon.type = 1;
	} else {
		mon.type = 2;
	}
	break;
}