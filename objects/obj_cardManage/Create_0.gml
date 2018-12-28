 /// @description Insert description here
// You can write your code in this editor
global.mousePressed = false;
global.fz = font_add("fanzheng.TTF",10,false,false,32,128)
global.started = false
global.cardlist = ds_list_create();//抽出来的卡牌
//global.decklist = ds_list_create();
global.decklist = ds_list_create();
for(i = 1;i<=4;i+=1)
{
	for(j = 1;j<=13;j+=1)
	{
		var card = ds_map_create();
		ds_map_set(card,"points",j);
		ds_map_set(card,"colors",i);
		ds_list_add(global.decklist,card);
	}
}
card_refreash();