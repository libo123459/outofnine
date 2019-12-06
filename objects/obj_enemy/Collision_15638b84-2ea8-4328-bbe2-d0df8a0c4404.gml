/// @description Insert description here
// You can write your code in this editor

if(hp>other.atk)
{		
	hp -=other.atk;
	instance_destroy(other);
} else {			
	instance_create_layer(x,y,"Instances",obj_bleed_w);
	instance_destroy(other);
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
scr_card_toUsed();//用过的放入弃牌
scr_player_atk_refresh();
scr_deck_draw();//抽卡自动填子弹

knockback = true;
alarm[2] = room_speed/5
instance_create_layer(0,0,"Instances",obj_shake)