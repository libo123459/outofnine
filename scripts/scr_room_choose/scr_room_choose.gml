//选出可扩展的房间
randomize();
var index = irandom_range(0,room_num-1);
var room_tmp = ds_list_find_value(global.room_list,index);
var a = 0;
var b = 0;
var c = 0;
var d = 0;
if(scr_room_get(room_tmp.xpos,room_tmp.ypos + 1) = 0)
{
	a = 0;
}
if(scr_room_get(room_tmp.xpos + 1,room_tmp.ypos) = 0)
{
	b = 0;
}
if(scr_room_get(room_tmp.xpos,room_tmp.ypos - 1) = 0)
{
	c = 0;
}
if(scr_room_get(room_tmp.xpos - 1,room_tmp.ypos) = 0)
{
	d = 0;
}
if(a*b*c*d = 0)
{
	return room_tmp;
} else {
	scr_room_choose();
}