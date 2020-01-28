/// @description Insert description here
// You can write your code in this editor
event_inherited()
//alarm[11] = room_speed/2;
state = scr_009_idle_state
speed_ = 0.9; //速度系数
attacked = false
hp = 4;
alarm[3] = room_speed/2;
sheild = instance_create_layer(x,y,"Instances",obj_009_sheild)
sheild.sprite_index = spr_009_sheild_left