var temp = collision_rectangle(mouse_x-12,mouse_y-12,mouse_x +12,mouse_y + 12,obj_cube,false,false);
if(temp != noone && temp.card = noone)
{	
	//temp.actived = true;
	temp.card = self;
	temp.is_acting = 1;	
	//card_dataToCube();	
	self.actived = true
	self.x = 5000
	self.y = 5000;
	
} else {
	self.x = self.xstart
	self.y = self.ystart
}


	
/*var num = 0;
for(i=1;i<=9;i+=1)
{
	num += global.cubelist[i].is_acting;
}

if(num = block_num)
{
	for(i=1;i<=9;i+=1)
	{
		if(global.cubelist[i].is_acting = 1 && global.cubelist[i].index_num == 0)
		{			
			global.cubelist[i].is_acting = 0;
			global.cubelist[i].actived = true;
			global.cubelist[i].type = self.type;
			global.cubelist[i].image_index = self.type + 1;
			card_dataToCube(global.cubelist[i]);			
		}	
	}
	self.actived = true
	self.x = 5000
	self.y = 5000;
	show_debug_message("released!!!")
} else {
	self.x = self.xstart
	self.y = self.ystart
}