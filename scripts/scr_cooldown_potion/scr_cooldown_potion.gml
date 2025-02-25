// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cooldown_potion()
{
	// Reduce duration of all attack cooldowns
	
	var _item = item;
	with(obj_com_pause_parent)
	{
		// Gather reduction amount
		var reduction = game_get_speed(gamespeed_fps) * global.inventory[_item].die_mod
		
		// Reduce all attack timer durations by reduction amount
		cooldown_timer_1 += reduction;
		cooldown_timer_2 += reduction;
		cooldown_timer_3 += reduction;
		cooldown_timer_4 += reduction;
	}
}