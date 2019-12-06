player.card_points = 0;//每次发射卡牌后，角色持有花色和点数归零
ds_list_clear(player.card_colors);
player.type = 0;
player.ex_atk = 0;
player.echo_atk = 0;
player.atk = 1;
player.fired = false;