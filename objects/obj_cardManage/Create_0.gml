/// @description Insert description here
// You can write your code in this editor
global.g_speed = room_speed;
global.i_speed = 1;
remain = 0;
used_remain = 0;
instance_create_depth(7,(room_height-35),-10000,obj_deck_icon);
instance_create_depth(room_width-40,(room_height-35),-10000,obj_deck_used_icon);
scr_deck_init();
scr_deck_draw();
show_debug_message(111)
//var card = instance_create_depth(xpos,room_height-23,-10001,obj_card_using);
