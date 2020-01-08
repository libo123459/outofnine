///@arg obj_damage_from
if(player.sheild > 0)
{
	player.sheild -= 1;
} else {
	if(instance_number(obj_008_crystal) = 1)
	{
		scr_008_reborn()
	}
	var kb_dir = point_direction(argument0.x,argument0.y,player.x,player.y);	
	player.kb_x = lengthdir_x(3, kb_dir);
	player.kb_y = lengthdir_y(3, kb_dir);
	player.fired = false;
	scr_card_toUsed()
	scr_deck_draw();
	instance_destroy(obj_bullet_p)
}
player.knockback = true;
player.alarm[2] = room_speed/6;