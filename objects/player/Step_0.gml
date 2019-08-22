 /// @description Insert description here
// You can write your code in this editor
script_execute(state);
depth = -y;

if(aim_key)
{
	if(ds_list_size(global.card_using_list)<4 && ds_list_size(global.card_list)>0)//如果卡组里有剩余
	{
		scr_deck_draw();
	}
}