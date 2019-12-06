/// @description Insert description here
// You can write your code in this editor
knockback = false

kb_x = 0;
kb_y = 0;
//about move
spd = 1.5;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;
dash_time = room_speed/5;
trans_x = 0;
trans_y = 0;

flipped = -1;
flipped_ud = -1;
readyrun = false;
hurted = false;
//about bullet
fire_dir = 0;
fired = false;//发射子弹的冷却判定
sTime = false;

atk = 1;
ex_atk = 0;
echo_atk = 0;
energy = 4;
card_capacity = 4;//可抽的子弹上限
card_colors =ds_list_create()
card_points = 0;
type = 0;
bullet_cooldown = room_speed/2;

hp = 99;

scr_getinput();
state = scr_move_state;
//display_set_gui_size(160,128);