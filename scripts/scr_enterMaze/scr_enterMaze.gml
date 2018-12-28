global.started = true;
scr_room_init();//初始化房间
cube_dataToRoom();//待更新 12.15
scr_hp_display();
for(i=0;i<9;i+=1)//cube的数据清零
{
	card_clearTheCube(global.cubelist[i]);
}

for(i=0;i<array_length_1d(global._cardlist)-1;i+=1)
{	
	var _card = global._cardlist[i];
	if(_card.actived = true)//从当前的抽牌中删除已经使用的牌
	{
		ds_list_delete(global.cardlist,_card.index-1);		
	}
	instance_destroy(_card)
}

scr_makeMaze();
instance_creat(0,0,obj_transition_6);
room_goto(roomReady)


