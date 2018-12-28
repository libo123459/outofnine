 
 ///@arg obj_cube
	
	/*argument0.monster_hp = self.card.monster_hp;
	argument0.monster_atk = self.card.monster_atk;
	argument0.monster_num = self.card.monster_num;
	argument0.monster_refresh = self.card.monster_refresh;
	argument0.monster_level = self.card.monster_level;
	argument0.monster_style = self.card.monster_style;
	argument0.boss = self.card.boss;
	argument0.trap_num = self.card.trap_num;
	argument0.trap_style = self.card.trap_style;*/
		argument0.compare_points = 2-(argument0.points > argument0.card.points);//判别卡牌与卡盘的点数
		
		if(argument0.colors != argument0.card.colors)
		{
			var sum_colors = argument0.colors + argument0.card.colors;//对比花色
			switch (sum_colors)
			{			
				case 3:
				argument0.compare_colors = 2; ///同色
				break;
				case 7:
				argument0.compare_colors = 2; ///同色
				break;
				
				case 5:
				argument0.compare_colors = 3;//异色
				break;
				
				case 4:
				argument0.compare_colors = 4;//对立
				break;
				
				case 6:
				argument0.compare_colors = 4;//对立
				break;
			}
		} else {
			argument0.compare_colors = 1;//同花
		}		
	
	