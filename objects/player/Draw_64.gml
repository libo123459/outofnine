/// @description Insert description here
// You can write your code in this editor

//draw_sprite(spr_energy,energy_remain,130,100)
//draw_sprite_ext(spr_energy,energy_remain,1050,800,8,8,0,c_white,255)
draw_sprite_ext(spr_hp,0,60,40,8,8,0,c_white,255)
draw_sprite_ext(spr_gold,0,70,150,8,8,0,c_white,255)
draw_sprite_ext(spr_color_heart,0,120,320,4,4,0,c_white,255)
draw_sprite_ext(spr_color_cube,0,120,370,4,4,0,c_white,255)
draw_sprite_ext(spr_color_sheild,0,120,420,4,4,0,c_white,255)
draw_sprite_ext(spr_color_diamond,0,120,470,4,4,0,c_white,255)

draw_set_font(font_mouse)

draw_text_transformed_color(180,60,sheild,4,4,0,c_black,c_black,c_black,c_black,255)
draw_text_transformed_color(180,180,gold,4,4,0,c_black,c_black,c_black,c_black,255)
draw_text_transformed_color(180,300,color_heart,4,4,0,c_black,c_black,c_black,c_black,255)
draw_text_transformed_color(180,350,color_cube,4,4,0,c_black,c_black,c_black,c_black,255)
draw_text_transformed_color(180,400,color_sheild,4,4,0,c_black,c_black,c_black,c_black,255)
draw_text_transformed_color(180,450,color_diamond,4,4,0,c_black,c_black,c_black,c_black,255)