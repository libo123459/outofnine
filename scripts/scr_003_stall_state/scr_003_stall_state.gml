
sprite_index = asset_get_index("spr_003_idle_"+string(colors));
image_speed = 1.4*global.i_speed;

if(alarm[1]<=0)
{
	state = scr_003_idle_state;
}