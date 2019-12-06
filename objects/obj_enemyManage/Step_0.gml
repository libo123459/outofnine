/// @description Insert description here
// You can write your code in this editor
if(roomupdate = true)
{
	var room_tmp = ds_list_find_value(global.room_list,global.room_current_index-1);
	scr_room_door_create(room_tmp);
	scr_room_monster_create(room_tmp)
	roomupdate = false;
}
