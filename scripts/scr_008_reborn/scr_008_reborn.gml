var mon = instance_create_layer(room_width/2,room_height/2,"Instances",obj_008_crystal)
var room_tmp = ds_list_find_value(global.room_list,global.room_current_index-1);
mon.points = global.date_num;
randomize();
mon.type = irandom_range(1,2)