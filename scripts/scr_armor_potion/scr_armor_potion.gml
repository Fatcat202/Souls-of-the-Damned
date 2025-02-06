// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_armor_potion()
{
	var _item = item;
	with(obj_com_pause_parent)
	{
		// Regain armor based on potion stats
		active_armor += scr_roll_dice(global.inventory[_item].die_num , global.inventory[_item].die_sides) + global.inventory[_item].die_mod
		
		// Check active armor did not exceed max armor
		if(active_armor > max_armor) active_armor = max_armor
		
		can_regain_armor = true;
	}
}