scr_card_toUsed();//用过的放入弃牌
if(player.state != scr_fire_state)
{	
	player.fired = false;	
}
scr_deck_draw();//抽卡自动填子弹	
