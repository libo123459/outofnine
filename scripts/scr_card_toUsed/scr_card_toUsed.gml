var card = obj_card_using;
var cardtoused = ds_map_create();//建立移动至弃卡堆的临时card
ds_map_set(cardtoused,"colors",card.colors);
ds_map_set(cardtoused,"points",card.points);
ds_list_add(global.card_used_list,cardtoused);
obj_cardManage.used_remain = ds_list_size(global.card_used_list);
