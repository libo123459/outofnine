 /// @description Insert description here
// You can write your code in this editor
script_execute(state);
depth = -y;

if(energy_remain = 0)
{
	if(!instance_exists(obj_energy_needsup))
	{
		instance_create_layer(x,y,"Instances",obj_energy_needsup);
	}	
}
if(fill_key)
{
	if(energy_remain=0 && hp>0)
	{
		hp-=1;
		energy_remain = 4;
	}
}