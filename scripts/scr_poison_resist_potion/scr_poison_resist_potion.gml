// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_poison_resist_potion()
{
	// Activate poison resistance, preventing some types of DOT
	
	var _item = item;
	with (obj_com_pause_parent)
	{
		poison_resist = true
		
		poison_resist_time = game_get_speed(gamespeed_fps) * global.inventory[_item].duration;
		poison_resist_timer = 0;
		poison_resist_ticking = true;
	}
	
	
}