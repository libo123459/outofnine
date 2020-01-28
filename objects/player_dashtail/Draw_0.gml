/// @description Insert description here
// You can write your code in this editor
//draw_self()
var _c = c_white;
if(obj_card_using.type = 1)
{
	_c = c_red;
} else {
	_c = c_black;
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,0,_c,image_alpha)