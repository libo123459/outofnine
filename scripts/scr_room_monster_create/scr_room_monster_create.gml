///@arg room_tmp

if(argument0.arrived == false)
{	
	randomize();
	var monster_style = irandom_range(1,4);
	var xPos = room_width/2;
	var yPOS = room_height/2;
	instance_create_layer(xPos,yPOS,"Instances",scr_room_monster_style(monster_style))
}