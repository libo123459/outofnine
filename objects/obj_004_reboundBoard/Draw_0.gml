/// @description Insert description here
// You can write your code in this editor
draw_text_transformed_color(x-25,y-25,points,1,1,0,c_black,c_black,c_black,c_black,1)

if(knockback = true)
{
	shader_set(s_hurt)
	draw_self();
	shader_reset();
} else {
	draw_self();
}