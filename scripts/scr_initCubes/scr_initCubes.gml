//instance_create_layer(160,90,"Instances",obj_borad);
/*
global.Enemy_decklist = ds_list_create();
global.Enemy_cardlist = ds_list_create();
for(i = 1;i<=4;i+=1) //非joker的52张牌
{
	for(j = 1;j<=13;j+=1)
	{
		var card = ds_map_create();
		ds_map_set(card,"points",j);
		ds_map_set(card,"colors",i);
		ds_list_add(global.Enemy_decklist,card);
	}
}

var joker1 = ds_map_create(); //大小王
var joker2 = ds_map_create();
ds_map_set(joker1,"points",14);
ds_map_set(joker2,"points",15);
ds_map_set(joker1,"colors",5);
ds_map_set(joker2,"colors",5);
ds_list_add(global.Enemy_decklist,joker1);
ds_list_add(global.Enemy_decklist,joker2);

if(ds_list_size(global.Enemy_decklist)>0)//如果卡组里有剩余
{
	for(i = 1;i <= 9;i+=1)
	{
		randomize();
		var index = random_range(1,ds_list_size(global.Enemy_decklist)-2);//随机从deck里抽取牌的index
		var _card = ds_map_create();//抽到的卡
		var _cardIndeck = ds_list_find_value(global.Enemy_decklist,index-1);//从牌组中出来的卡（方便书写用，否则公式太长）
		var _colors = ds_map_find_value(_cardIndeck,"colors")//花色
		var _points = ds_map_find_value(_cardIndeck,"points")
		ds_map_set(_card,"colors",_colors)
		ds_map_set(_card,"points",_points)
		ds_list_add(global.Enemy_cardlist,_card);

		ds_list_delete(global.Enemy_decklist,index-1);//最后从原卡组中删除抽调的牌
		}	
}

for(i = 1;i <= 3;i+=1)//抽出的9张
{
	for(j = 1;j<=3;j+=1)
	{
		var temp = instance_create_layer(24*(j-1) + 136,24*(i-1) + 80,"Instances",obj_cube);
		temp.index = j + 3*(i-1);
		temp.a = j - 1;
		temp.b = i - 1;
		temp.colors = ds_map_find_value(ds_list_find_value(global.Enemy_cardlist,temp.index-1),"colors");	
		temp.points = ds_map_find_value(ds_list_find_value(global.Enemy_cardlist,temp.index-1),"points");
		temp.sprite_index = asset_get_index("spr_cube" + string(temp.colors));
		scr_initDir(temp);
		global.cubelist[j-1 + 3*(i-1)] = temp;	
		
	}
}