	randomize();
	var index =  irandom_range(0,ds_list_size(global.card_list)-1);//随机从deck里抽取牌的index
	
	var _cardIndeck = ds_list_find_value(global.card_list,index);//从牌组中出来的卡（方便书写用，否则公式太长）
	var _colors = ds_map_find_value(_cardIndeck,"colors")//花色
	var _points = ds_map_find_value(_cardIndeck,"points")
	//表现层
	var xpos = ds_list_size(global.card_using_list)*25 + 50;
	
	var card = instance_create_depth(xpos,room_height-23,-10001,obj_card_using);
	card.sprite_index = spr_card;
	card.image_index = _colors;
	//赋予抽出卡牌属性
	card.colors = _colors;
	card.points = _points;
	switch(card.colors)
	{
		case 1:
		card.type = 1;
		break;
		
		case 2:
		card.type = 1;
		break;
		
		case 3:
		card.type = 2;
		break;
		
		case 4:
		card.type = 2;
		break;
	}
	player.card_points = player.card_points + card.points;
	if(player.card_colors = 0)
	{
		player.card_colors = card.type;
	} else {
		if(player.card_colors != card.type)
		{
			player.card_colors = 3;
		}
	}
	/*var _card = ds_map_create();//抽到的卡
	ds_map_set(_card,"colors",_colors)
	ds_map_set(_card,"points",_points)*/
	ds_list_add(global.card_using_list,card);

	ds_list_delete(global.card_list,index);//最后从原卡组中删除抽调的牌
	obj_cardManage.remain = ds_list_size(global.card_list);
	
	switch(player.card_colors)
	{
		case 1:
		show_debug_message("Red");
		break;
		
		case 2:
		show_debug_message("Black");
		break;
		
		case 3:
		show_debug_message("No Color")
		break;
	}

	
	