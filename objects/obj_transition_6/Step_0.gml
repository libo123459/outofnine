/// @description Insert description here
// You can write your code in this editor
currentframe++

if (currentframe > maxframes) {
	/*if(room != roomReady)
	{
		scr_room_creat_things();
	}*/
	instance_activate_object(player)
    instance_destroy() // The transition has finished so destroy it
}


// We are now on the second room so record that room. 
if (currentframe == 2) { 
	instance_deactivate_object(player);
    sur_newroom = surface_create(1280,1024);
    surface_copy(sur_newroom,0,0,application_surface)
}