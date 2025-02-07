
function scr_level_up()
{
	// Increase level, roll new HP and armor
	
	
	// Increment party level
	global.player_level++
	
	with (obj_ply_npc_parent)
	{
		// Calculation for never taking less than 1/2, but having a larger varity in rolls
		var min_roll = (global.player_stats[index].dice_hp / 2) - 1;
		var added_die = (global.player_stats[index].dice_hp / 2) + 1;
		var hp_gain = scr_roll_dice(1, added_die) + min_roll + global.player_stats[index].hp_mod;
		
		// Increment health
		max_hp += hp_gain
		active_health += hp_gain
		
		
		var armor_gain = scr_roll_dice(1, global.player_stats[index].dice_armor)
		
		// Increment health
		max_armor += armor_gain
		active_armor += armor_gain
		
		
	}
}