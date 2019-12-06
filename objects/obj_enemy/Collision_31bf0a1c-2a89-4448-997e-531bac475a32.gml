/// @description Insert description here
// You can write your code in this editor
if(other.type = type || other.type = 3)
{	
	if(hp>other.atk)
	{	
		hp -= other.atk;
	} else {			
		instance_create_layer(x,y,"Instances",obj_bleed_w);		
		instance_destroy(self);
	//scr_room_checkDone();
	}
	if(points <= other.points)
	{
		if(player.energy < 4)
		{
			player.energy += 1
		}	
	}
	knockback = true;
	alarm[2] = 10
	instance_create_layer(0,0,"Instances",obj_shake)
}

scr_card_toUsed();//用过的放入弃牌
scr_player_atk_refresh();
scr_deck_draw();//抽卡自动填子弹
instance_destroy(other);

/*
if(other.reflex = false)
{
	if(red_hp = 0)
	{
		if(hp>1)
		{		
			hp -=1;
			instance_destroy(other);
		} else 
		{
			if(instance_number(obj_enemy)=1)
			{
				var cRoom = GetRoom(global._index+1);
				if(cRoom.finished = false)
				{			
					cRoom.finished = true;
					player.arrived_room +=1;					
				}

				if(player.arrived_room == 9)
				{
					instance_create_layer(room_width/2,room_height/2,"Instances",obj_exitdoor)
				}
			}
			instance_create_layer(x,y,"Instances",obj_bleed_w);
			instance_destroy(other);
			instance_destroy(self);
		}
	}
}else{
	if(red_hp = 0)
	{
		hp = 0;
		if(instance_number(obj_enemy)=1)
		{
			var cRoom = GetRoom(global._index+1);
			if(cRoom.finished = false)
			{			
				cRoom.finished = true;
				player.arrived_room +=1;				
			}

			if(player.arrived_room == 9)
			{
				instance_create_layer(room_width/2,room_height/2,"Instances",obj_exitdoor)
			}
		}
		instance_create_layer(x,y,"Instances",obj_bleed_w);
		instance_destroy(other);
		instance_destroy(self);
	}else {
		red_hp =0;
		if(instance_number(obj_enemy)=1)
		{
			var cRoom = GetRoom(global._index+1);
			if(cRoom.finished = false)
			{			
				cRoom.finished = true;
				player.arrived_room +=1;				
			}

			if(player.arrived_room == 9)
			{
				instance_create_layer(room_width/2,room_height/2,"Instances",obj_exitdoor)
			}
		}
		instance_create_layer(x,y,"Instances",obj_bleed_w);
		instance_destroy(other);
		instance_destroy(self);
	}
}*/
		