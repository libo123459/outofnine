/// @description Insert description here
// You can write your code in this editor
if(image_alpha>0)
{
	image_alpha -=.2;
	//image_xscale -=.05;
	//image_yscale -=.05;
} else {
	instance_destroy(self)
}