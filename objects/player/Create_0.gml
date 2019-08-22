/// @description Insert description here
// You can write your code in this editor
knockback = false

kb_x = 0;
kb_y = 0;

spd = 1.5;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;
dash_time = room_speed / 5;

flipped = -1;
flipped_ud = -1;
readyrun = false;

fire_dir = 0;
fired = false;//发射子弹的冷却判定
card_capacity = 4;//可抽的子弹上限
card_colors = 0;
card_points = 0;


hp = 99;
scr_getinput();
state = scr_move_state;

bullet_cooldown = room_speed/2;

alarm[0] = 0;

//display_set_gui_size(160,128);


