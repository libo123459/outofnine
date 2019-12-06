/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,image_index,x,y+30,image_xscale, -0.5,0,c_black,0.8);
//image_blend = make_color_hsv(1,1,1)
//draw_sprite(spr_player_shadow,0,x,y)
if(knockback = true)
{
	shader_set(s_hurt)
	draw_self()
	shader_reset();
} else {
	draw_self();
}
draw_text_transformed_color(x-15,y-25,atk,0.5,0.5,0,c_black,c_black,c_black,c_black,1)

draw_text_transformed_color(x-15,y+25,energy,0.5,0.5,0,c_black,c_black,c_black,c_black,1)