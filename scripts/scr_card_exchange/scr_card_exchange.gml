var _colors = obj_card_using.colors
var _points = obj_card_using.points
var _type = obj_card_using.type;

obj_card_using.colors = obj_card_vice.colors;
obj_card_using.points = obj_card_vice.points;
obj_card_using.type = obj_card_vice.type;
if(obj_card_using.type = 3)
{
	obj_card_using.sprite_index = spr_card_blue;
}else{
	obj_card_using.sprite_index = spr_card;
}
obj_card_vice.colors = _colors;
obj_card_vice.points = _points;
obj_card_vice.type = _type;
if(obj_card_vice.type = 3)
{
	obj_card_vice.sprite_index = spr_card_blue;
}else{
	obj_card_vice.sprite_index = spr_card;
}
player.colors = obj_card_using.colors
player.points = obj_card_using.points
player.type = obj_card_using.type

obj_card_using.image_index = obj_card_using.colors
obj_card_vice.image_index = obj_card_vice.colors;

scr_card_vice_trigger()