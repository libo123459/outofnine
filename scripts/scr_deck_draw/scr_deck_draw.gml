randomize();
var index =  irandom_range(0,ds_list_size(global.card_list)-1);//随机从deck里抽取牌的index
	
var _cardIndeck = ds_list_find_value(global.card_list,index);//从牌组中出来的卡（方便书写用，否则公式太长）
var _colors = ds_map_find_value(_cardIndeck,"colors")//花色
var _points = ds_map_find_value(_cardIndeck,"points")
	//表现层
	//var xpos = ds_list_size(global.card_using_list)*25 + 50;	
	//var card = instance_create_depth(50,room_height-30,-10001,obj_card_using);
	//card.sprite_index = spr_card;

	//赋予抽出卡牌属性
	
obj_card_using.image_index = _colors;
obj_card_using.colors = _colors;
obj_card_using.points = _points;
scr_card_type_get(obj_card_using)
if(obj_card_using.type = 3)
{
	obj_card_using.sprite_index = spr_card_blue
}else{
	obj_card_using.sprite_index = spr_card
}
player.points = _points;
player.colors = _colors;
player.type = obj_card_using.type	
ds_list_delete(global.card_list,index);//最后从原卡组中删除抽调的牌
obj_cardManage.remain = ds_list_size(global.card_list);
	
	