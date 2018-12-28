/// @description Insert description here
// You can write your code in this editor

if( is_dragging == false && mouse_check_button(mb_left)&&global.mousePressed = false)
{
     if(collision_point(mouse_x,mouse_y,self, false, false ) )
     {
            prev_mouse_x = mouse_x;
			prev_mouse_y = mouse_y;
			is_dragging = true;
			global.mousePressed = true;
     }    
}

if( is_dragging == true)
{
    var mouse_travelx = mouse_x - prev_mouse_x;
	var mouse_travely = mouse_y - prev_mouse_y;
    x += mouse_travelx;
	y += mouse_travely;
    prev_mouse_x = mouse_x;
	prev_mouse_y = mouse_y;
}
/*
if( !mouse_check_button( mb_left ) )
{
    
}
