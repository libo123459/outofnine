/// @description Insert description here
// You can write your code in this editor
event_inherited()
if(sprite_index!=noone)
{	
	draw_sprite_ext(sprite_index,image_index,x,y+13,image_xscale,-0.6,0,c_black,image_alpha);
}
if(knockback = true)
{
	shader_set(s_hurt)
	draw_self();
	shader_reset();
} else {
	draw_self();
}