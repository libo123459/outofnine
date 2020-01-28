///@arg obj_004
randomize()
if(argument0.top = true)
{	
	var xpos = irandom_range(1,12)
	var ypos = irandom_range(1,3)
	argument0.x = (xpos-1)*32 + 80;
	argument0.y = (ypos-1)*32 + 80;
} else {
	var xpos = irandom_range(1,12)
	var ypos = irandom_range(4,6)
	argument0.x = (xpos-1)*32 + 80;
	argument0.y = (ypos-1)*32 + 80;
}