/// @description Insert description here
// You can write your code in this editor
knockback = false
kb_x = 0;
kb_y = 0;

//about move
spd = 1.5;
ex_spd = 0;
bullet_spd = 10
ex_b_spd = 0;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;
dash_cooldown = true
ex_d_cooldown =0;
flipped = -1;
flipped_ud = -1;
readyrun = false;
reflex_max = 1
ex_reflex_max = 0;
//about bullet
fire_dir = 0;
fired = false;//发射子弹的冷却判定
sTime = false;
hurted = false;

//属性
atk = 1;
ex_atk = 0;
energy = 4;
points = 0;
type = 0;
colors = 0;
sheild = 0
hp = 99;
gold = 0;
color_heart = 0
color_cube = 0;
color_sheild = 0;
color_diamond = 0;
//other
interact = false;
target_select = noone;
scr_getinput();
state = scr_move_state;
//display_set_gui_size(160,128);
