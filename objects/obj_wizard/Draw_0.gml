/// @description Insert description here
// You can write your code in this editor
if(instance_exists(player))
{
	image_xscale = (player.x > x)*2 - 1;
} else {
	image_xscale = 1;
}
draw_sprite_ext(spr_small_shadow,0,x,y+20,-image_xscale,-0.6,0,c_black,image_alpha);
if(knockback = true)
{
	shader_set(s_hurt)
	draw_self();
	shader_reset();
} else {
	draw_self();
}