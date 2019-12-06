/// @description Insert description here
// You can write your code in this editor
r_w = 1152;
r_h = 1152
currentframe = 0
maxframes = 25
toward = 0;
persistent = true; // when changing room keep this object alive

// copy the old room so we can display it on the second room
sur_oldroom = surface_create(r_w,r_h);
surface_copy(sur_oldroom,0,0,application_surface)