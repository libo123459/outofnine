///@arg0 cost
///@arg1 count
var count = 0;
if(ds_list_size(global.card_used_list)>=argument1)
{
	count = argument1
	show_debug_message("count" + string(count))
} else {
	count = ds_list_size(global.card_used_list)
	show_debug_message("count" + string(count))
}
for(var i = 0;i<count;i++)
{
	var card = ds_list_find_value(global.card_used_list,0)	
	ds_list_add(global.card_list,card)
	ds_list_delete(global.card_used_list,0);
}
player.gold -= argument0
obj_cardManage.used_remain = ds_list_size(global.card_used_list);
obj_cardManage.remain = ds_list_size(global.card_list);