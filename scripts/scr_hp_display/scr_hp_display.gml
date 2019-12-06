global.totalHP = 0;
for(i=0;i<array_length_1d(global._cardlist);i+=1)
{	
	var _card = global._cardlist[i];	
	if(_card.actived = true)
	{
		global.totalHP += 4;
		
	}
}
global._hp = floor(global.totalHP/4);	


