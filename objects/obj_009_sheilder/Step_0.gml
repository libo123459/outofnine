/// @description Insert description here
// You can write your code in this editor
event_inherited()
sheild.x = x
sheild.y = y;
var dir = point_direction(x,y,player.x,player.y)
sheild.depth = depth-1;
if(dir>=0 && dir<= 90)
{
	sheild.sprite_index = spr_009_sheild_rightup; 
	
}
if(dir>90 && dir<180)
{
	sheild.sprite_index = spr_009_sheild_leftup; 
	
}
if(dir>=180 && dir<= 270)
{
	sheild.sprite_index = spr_009_sheild_left; 
	
}
if(dir>270 && dir<360)
{
	sheild.sprite_index = spr_009_sheild_right;
	
}