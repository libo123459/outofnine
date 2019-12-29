/// @description Insert description here
// You can write your code in this editor
instance_create_layer(room_width/2,room_height/2,"Instances",player)
global.room_grid = ds_grid_create(28,28);//room位置矩阵
global.room_list = ds_list_create();//存储数据的room
global.Room_list = ds_list_create();//真正使用的room
global.room_current_index = 0;//每次进入房间时当前的房间序号
for(i = 1;i<=14;i+=1)//房间的list
{
	var theRoom = asset_get_index("room" + string(i));
	ds_list_add(global.Room_list,theRoom);	
}

var room_ori = instance_create_layer(room_width/2,room_height/2,"Instances",obj_testroom);
room_ori.xpos = 14;
room_ori.ypos = 14;//初始房间

ds_grid_add(global.room_grid,room_ori.xpos,room_ori.ypos,1);
ds_list_add(global.room_list,room_ori);


room_num = ds_list_size(global.room_list);
room_ori.index = room_num;

randomize();
room_ori.colors = irandom_range(1,4);
room_ori.arrived = false;
//scr_date_update(room_ori)

global.room_current_index = 1;
scr_room_creat();

room_goto(ds_list_find_value(global.Room_list,0))
obj_enemyManage.roomupdate = true;
