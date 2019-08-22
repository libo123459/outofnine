global.card_list = ds_list_create();//原卡组
global.card_using_list = ds_list_create();//正在用的卡组（正在用的子弹）
for(i = 1;i<=4;i+=1) //非joker的52张牌
{
	for(j = 1;j<=13;j+=1)
	{
		var card = ds_map_create();
		ds_map_set(card,"points",j);
		ds_map_set(card,"colors",i);
		
		ds_list_add(global.card_list,card);
	}
}