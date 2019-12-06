/// @description Insert description here
// You can write your code in this editor
currentframe++

if (currentframe > maxframes) {
	//instance_activate_object(player)
	instance_activate_all();
	//scr_room_creat_things();
    instance_destroy() // The transition has finished so destroy it
}


// We are now on the second room so record that room. 
if (currentframe == 2) { 
	//instance_deactivate_object(player);
	instance_deactivate_all(true);
    sur_newroom = surface_create(r_w,r_h);
    surface_copy(sur_newroom,0,0,application_surface)
}