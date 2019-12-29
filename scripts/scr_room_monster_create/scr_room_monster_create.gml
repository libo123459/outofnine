///@arg room_tmp

if(argument0.arrived == false)
{	
	randomize();
	var monster_style = irandom_range(1,4);
	var xPos = room_width/2;
	var yPOS = room_height/2;
	//var mon = instance_create_layer(xPos,yPOS,"Instances",obj_006_wizard)
	var mon = instance_create_layer(xPos,yPOS,"Instances",choose(obj_003_ninjia,obj_005_LongArm,obj_006_wizard,obj_002_FourHands))
	mon.points = global.date_num;
	mon.colors = argument0.colors;
	
	if(mon.colors = 1||mon.colors = 2)
	{
		mon.type = 1;
	} else {
		mon.type = 2;
	}
	//instance_create_layer(xPos,yPOS,"Instances",choose(obj_002_FourHands,obj_003_ninjia,obj_005_LongArm))
	//instance_create_layer(xPos,yPOS,"Instances",scr_room_monster_style(monster_style))
}
