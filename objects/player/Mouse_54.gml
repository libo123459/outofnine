/// @description Insert description here
// You can write your code in this editor

if(energy >0)
{
	if(obj_cardManage.remain > 0)
	{
		energy -= 1;
		scr_card_toInit();
		scr_player_atk_refresh();
		scr_deck_draw();
	}
}
/*
if(global.card_using_list < 4)
{
	if(obj_cardManage.remain > 0)
	{
		scr_deck_draw();
		atk += 1
	}	
}
