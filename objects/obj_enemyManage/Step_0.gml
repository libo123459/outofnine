/// @description Insert description here
// You can write your code in this editor

var room_tmp = ds_list_find_value(global.room_list,global.room_current_index-1);
if(roomupdate = true)
{	
	scr_room_door_create(room_tmp);
	if(room_tmp.style = 0)
	{		
		scr_room_monster_create(room_tmp)
		//scr_room_monster_create(room_tmp)
		scr_date_update(room_tmp)
		if(room_tmp.trap_style = 0)
		{		
			if(global.date_num>4)
			{			
				if(room_tmp.arrived = false)
				{				
					room_tmp.trap_style = choose(1,2,3,4)
					scr_room_trap_create(room_tmp.trap_style);	
				}
			}
		} else {
			scr_room_trap_create(room_tmp.trap_style);	
		}
	}
	if(room_tmp.style = 1)
	{
		scr_room_shop_create()
	}
	
	obj_card_using.image_index = obj_card_using.colors;
	player.fired = false;
	player.state = scr_move_state;
	roomupdate = false;	
	room_tmp.arrived = true;
}

if(instance_number(obj_enemy) == 0 && instance_number(obj_gear)=0)
{	
	if(room_tmp.finished = false)
	{		
		switch(room_tmp.colors)
		{
			case 1:
			player.color_heart +=1;
			break;
			case 2:
			player.color_cube +=1;
			break;
			case 3:
			player.color_sheild +=1;
			break;
			case 4:
			player.color_diamond +=1;
			break;
		}
		room_tmp.finished = true;
	}
}

