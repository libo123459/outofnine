///@arg obj_damage_from
if(player.state != scr_dash_state && player.hurted = false)
{
	player.hurted = true;
	if(player.sheild > 0)
	{
		player.sheild -= 1;
	} else {
		player.sprite_index = spr_player_hurt;
		randomize();
		var index =  irandom_range(0,ds_list_size(global.card_list)-1);
		var cardtoused = ds_list_find_value(global.card_list,index);
		ds_list_add(global.card_used_list,cardtoused);
		ds_list_delete(global.card_list,index);
		obj_cardManage.used_remain = ds_list_size(global.card_used_list);
		obj_cardManage.remain = ds_list_size(global.card_list);
	}
	var kb_dir = point_direction(argument0.x,argument0.y,player.x,player.y);	
	player.kb_x = lengthdir_x(4, kb_dir);
	player.kb_y = lengthdir_y(4, kb_dir);		
	player.knockback = true;
	player.alarm[2] = room_speed/5;
}