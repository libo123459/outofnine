if(instance_number(obj_enemy)=1)
{
	var cRoom = GetRoom(global._index+1);
	if(cRoom.finished = false)
	{			
		cRoom.finished = true;
		player.arrived_room +=1;					
	}
}