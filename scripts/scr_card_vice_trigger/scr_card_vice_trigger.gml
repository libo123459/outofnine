player.ex_b_spd = 0;
player.ex_d_cooldown = 0;
player.ex_reflex_max = 0;
player.ex_spd = 0;
switch(obj_card_vice.colors)
{
	case 1:
	player.ex_spd = 1
	break;
	
	case 2:
	player.ex_d_cooldown = room_speed/2;
	break;
	
	case 3:
	player.ex_b_spd = 8;
	break;
	
	case 4:
	player.ex_reflex_max = 1;
	break;
}