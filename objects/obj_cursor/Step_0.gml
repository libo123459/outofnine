/// @description Insert description here
// You can write your code in this editor
x = mouse_x
y = mouse_y;
if(instance_exists(player))
{
	direction = point_direction(player.x,player.y,mouse_x,mouse_y)
}

image_angle = direction;