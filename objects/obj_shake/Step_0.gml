/// @description Insert description here
// You can write your code in this editor
if(shake = true)
{
	var ran_x = random_range(s_min,s_max)
	var ran_y = random_range(s_min,s_max)
	camera_set_view_pos(view_camera[0],0+ran_x,0+ran_y)
	view_x = camera_get_view_x(view_camera[0]);
	view_y = camera_get_view_y(view_camera[0]);
	
}
