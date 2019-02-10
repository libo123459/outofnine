/// @description Insert description here
// You can write your code in this editor
draw_self();
//draw_sprite(asset_get_index("card_tiny" + string(style)),0,x,y+9)

draw_set_font(global.fz)
draw_text_transformed(x-10,y-10,points,.5,.5,0);
image_index = colors;
//draw_text_transformed(x-5,y,colors_string,0.5,0.5,0);

/*var colors_string = "";
switch(colors)
{
	case 1:
	image_index = colors;
	break;
	
	case 2:
	colors_string = "方片";
	break;
	
	case 3:
	colors_string = "黑桃";
	break;
	
	case 4:
	colors_string = "梅花";
	break;
}
