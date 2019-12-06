var num = ds_list_size(global.card_using_list);
for(i=0;i<num;i+=1)
{
	var card = ds_list_find_value(global.card_using_list,0);
	var cardtoused = ds_map_create();
	ds_map_set(cardtoused,"colors",card.colors);
	ds_map_set(cardtoused,"points",card.points);
	ds_list_add(global.card_used_list,cardtoused);
	obj_cardManage.used_remain = ds_list_size(global.card_used_list);
	
	instance_destroy(ds_list_find_value(global.card_using_list,0))
	ds_list_delete(global.card_using_list,0);
}
show_debug_message(ds_list_size(global.card_used_list));