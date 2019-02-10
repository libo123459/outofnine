/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(global.fz)
draw_text_transformed(x-10,y-10,points,0.5,0.5,0);

/*
var colors_string = "";
switch(colors)
{
	case 1:
	colors_string = "红桃";
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
draw_text_transformed(x-5,y,colors_string,0.5,0.5,0);