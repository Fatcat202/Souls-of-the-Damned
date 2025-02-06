// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_health_potion()
{
	var _item = item;
	with(obj_com_pause_parent)
	{
		scr_heal(scr_roll_dice(global.inventory[_item].die_num , global.inventory[_item].die_sides) + global.inventory[_item].die_mod, 0)
	}
}