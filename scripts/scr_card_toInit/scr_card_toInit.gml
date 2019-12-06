var cardToInit = ds_list_find_value(global.card_using_list,0);//放回原卡组的牌
var card = ds_map_create();//转换为map的临时变量
ds_map_set(card,"points",cardToInit.points);
ds_map_set(card,"colors",cardToInit.colors);

ds_list_delete(global.card_using_list,0)
instance_destroy(cardToInit)

//随机pos,插入原卡组
randomize();
var pos = irandom_range(0,(ds_list_size(global.card_list)-1))
ds_list_insert(global.card_list,pos,card)

