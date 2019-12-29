 /// @description Insert description here
// You can write your code in this editor
script_execute(state);
depth = -y;
var _inst = instance_place(x,y,obj_shop_select);

if(_inst != noone)
{	
	interact = true;
	target_select = _inst;
	if(!instance_exists(obj_interact))
	{
		instance_create_layer(x+12,y-12,"Instances",obj_interact)	
	}
}else{
	interact = false;
	target_select = noone
	if(instance_exists(obj_interact))
	{
		instance_destroy(obj_interact)		
	}
}

/*
if(aim_key)
{
	if(ds_list_size(global.card_using_list)<4 && ds_list_size(global.card_list)>0)//如果卡组里有剩余
	{
		scr_deck_draw();
	}
}