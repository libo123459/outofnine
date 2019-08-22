var num = ds_list_size(global.card_using_list);
for(i=0;i<num;i+=1)
{
	instance_destroy(ds_list_find_value(global.card_using_list,0))
	ds_list_delete(global.card_using_list,0);
}