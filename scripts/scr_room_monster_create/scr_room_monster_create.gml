///@arg room_tmp

if(argument0.arrived == false)
{	
	randomize();	
	//var monster_style = 4
	var monster_style = choose(2,3,4,5,6,8,9,10);
	scr_monster_choose(monster_style,argument0.colors)
}
