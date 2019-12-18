/// @description Insert description here
// You can write your code in this editor
global.g_speed = room_speed;
global.i_speed = 1;
remain = 0;
used_remain = 0;
instance_create_depth(7,(room_height-45),-10000,obj_deck_icon);
instance_create_depth(room_width-40,(room_height-45),-10000,obj_deck_used_icon);
instance_create_depth(45,room_height-45,-10001,obj_card_using);//初始化主卡
instance_create_depth(75,room_height-30,-10001,obj_card_vice);//初始化副卡
scr_deck_init();
scr_deck_draw();

randomize();
var index =  irandom_range(0,ds_list_size(global.card_list)-1);//随机从deck里抽取牌的index	
var _cardIndeck = ds_list_find_value(global.card_list,index);//从牌组中出来的卡（方便书写用，否则公式太长）
var _colors = ds_map_find_value(_cardIndeck,"colors")//花色
var _points = ds_map_find_value(_cardIndeck,"points")
//表现层
obj_card_vice.image_index = _colors;
//赋予抽出卡牌属性
obj_card_vice.colors = _colors;
obj_card_vice.points = _points;
scr_card_type_get(obj_card_vice)
if(obj_card_vice.colors = 2)//初始化时检查是否有加攻击力buff
{
	player.ex_atk = 1;
}
ds_list_delete(global.card_list,index);//最后从原卡组中删除抽调的牌
obj_cardManage.remain = ds_list_size(global.card_list);
show_debug_message(111)
//var card = instance_create_depth(xpos,room_height-23,-10001,obj_card_using);
