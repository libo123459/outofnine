/// @description Insert description here
// You can write your code in this editor
scr_card_toUsed();//用过的放入弃牌
player.fired = false;	
scr_deck_draw();//抽卡自动填子弹
instance_destroy(other)