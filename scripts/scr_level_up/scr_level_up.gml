
function scr_level_up()
{	
	// Increment party level
	global.player_level++
	
	// Increase HP and Armor
	with (obj_ply_npc_parent)
	{
		// Calculation for never taking less than 1/2, but having a larger varity in rolls
		var min_roll = (global.player_stats[index].dice_hp / 2) - 1;
		var added_die = (global.player_stats[index].dice_hp / 2) + 1;
		var hp_gain = scr_roll_dice(1, added_die) + min_roll + global.player_stats[index].hp_mod;
		
		// Increment health
		max_hp += hp_gain
		active_health += hp_gain
		
		
		// Roll armor gain normally
		var armor_gain = scr_roll_dice(1, global.player_stats[index].dice_armor)
		
		// Increment health
		max_armor += armor_gain
		if(!is_dead) active_armor += armor_gain
	}
	
	
	// Increase attack damage per level for all attacks
	
	for(var i = 1; i < global.attack_index_length + 1; i++)
	{
		global.attack_stats[i].dmg_die_num = global.attack_stats[i].dmg_die_num_base + floor(global.attack_stats[i].dmg_die_num_per_lvl * global.player_level)
		global.attack_stats[i].dmg_die_sides = global.attack_stats[i].dmg_die_sides_base + floor(global.attack_stats[i].dmg_die_sides_per_lvl * global.player_level)
		global.attack_stats[i].dmg_mod = global.attack_stats[i].dmg_mod_base + floor(global.attack_stats[i].dmg_mod_per_lvl * global.player_level)
	}


}





