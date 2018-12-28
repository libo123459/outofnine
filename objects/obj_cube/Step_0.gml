/// @description Insert description here
// You can write your code in this editor
if(card = noone)
{
	if(place_meeting(x,y,obj_card))
	{	
		is_acting = 1;		
	
	} else {		
		is_acting = 0;	
	}
}


if( mouse_check_button( mb_right ) )
{
    //抓取鼠标点击cube
	var temp = collision_rectangle(mouse_x-12,mouse_y-12,mouse_x +12,mouse_y + 12,self,false,false);
	if(temp != noone && temp.card != noone)
	{	
		show_debug_message(temp.card.index)
		with(temp)
		{
			card.x = card.xstart;
			card.y = card.ystart;
			card.actived = false;
			card = noone;		
			is_acting = 0;
		}
		/*
		if(temp.card_index!= 0)
			{				
				//卡片归位
				for(i = 0; i <= array_length_1d(global._cardlist)-1;i+=1)
				{
					var _card = global._cardlist[i]
					if(_card.index = temp.card_index)
					{
						with(_card)
						{
							x = xstart;
							y = ystart;
							actived = false;							
						}		
					}
				}
				card_clearTheCube(temp);				
			}*/
	}	
}
image_index = is_acting;