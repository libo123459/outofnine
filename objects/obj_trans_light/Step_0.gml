/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,"Instances",obj_bullet_tail)
x += hspd;
y += vspd;
if(abs(x-targetX)<=2)
{
	instance_destroy(self)
}
