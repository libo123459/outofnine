/// @description Insert description here
// You can write your code in this editor
if(roomupdate = true)
{
	obj_enemyManage.special_dead = 0;
	var room_tmp = ds_list_find_value(global.room_list,global.room_current_index-1);
	scr_room_door_create(room_tmp);
	if(room_tmp.style = 0)
	{		
		scr_room_monster_create(room_tmp)
		scr_date_update(room_tmp)
	}
	if(room_tmp.style = 1)
	{
		scr_room_shop_create()
	}
	obj_card_using.image_index = obj_card_using.colors;
	player.fired = false;
	roomupdate = false;	
	room_tmp.arrived = true;
}
