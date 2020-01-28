///@arg trap_style
var position_list = ds_list_create();
switch (argument0)
{
	case 1:
	ds_list_add(position_list,1,2,11,12,13,24,49,60,61,62,71,72)
	break;
	
	case 2:
	ds_list_add(position_list,28,29,32,33,40,41,44,45)
	break;
	
	case 3:
	ds_list_add(position_list,4,16,28,40,52,64,9,21,33,45,57,69)
	break;
	
	case 4:
	ds_list_add(position_list,15,16,21,22,51,52,57,58)
	break;
}
scr_trap_position(position_list);