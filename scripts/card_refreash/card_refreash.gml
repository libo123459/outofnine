/*var supple = 0;
var cardmax = 4;
if(ds_list_size(global.decklist)>0)//如果卡组里有剩余
{	
	if(ds_list_size(global.cardlist)<cardmax)
	{	
		supple = cardmax-ds_list_size(global.cardlist) //需要补充的牌
		if(supple > ds_list_size(global.decklist) ) //检查卡组剩余是否够supple
		{
			supple = ds_list_size(global.decklist)
		}
		for(i = 1;i <= supple;i+=1)
		{
			randomize();
			var index = random_range(1,ds_list_size(global.decklist));//随机从deck里抽取牌的index
			var _card = ds_map_create();//抽到的卡
			var _cardIndeck = ds_list_find_value(global.decklist,index-1);//从牌组中出来的卡（方便书写用，否则公式太长）
			var _colors = ds_map_find_value(_cardIndeck,"colors")//花色
			var _points = ds_map_find_value(_cardIndeck,"points")
			ds_map_set(_card,"colors",_colors)
			ds_map_set(_card,"points",_points)
			ds_list_add(global.cardlist,_card);
	
			ds_list_delete(global.decklist,index);//最后从原卡组中删除抽调的牌
		}	
	}
}

for(i = 1;i<=ds_list_size(global.cardlist);i+=1)//实体化的卡牌list
{	
	var temp = instance_create_layer(40*(i-1) + 82,170,"Instances",obj_card);
	temp.colors = ds_map_find_value(ds_list_find_value(global.cardlist,i-1),"colors");	
	temp.points = ds_map_find_value(ds_list_find_value(global.cardlist,i-1),"points");	

	temp.sprite_index = spr_card;
	temp.index = i;
	
	global._cardlist[i-1] = temp;
}

