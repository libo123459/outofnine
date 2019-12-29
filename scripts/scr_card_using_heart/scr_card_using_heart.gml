if(ds_list_size(global.card_used_list)>0)
{
	randomize()
	var _max = ds_list_size(global.card_used_list)-1
	var index = irandom_range(0,_max)
	var card = ds_list_find_value(global.card_used_list,index)
	
	ds_list_add(global.card_list,card)
	ds_list_delete(global.card_used_list,index);
	show_debug_message("Got A Card!!!!!")
	obj_cardManage.used_remain = ds_list_size(global.card_used_list);
	obj_cardManage.remain = ds_list_size(global.card_list);

}
