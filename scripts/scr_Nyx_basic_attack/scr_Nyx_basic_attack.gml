
function scr_Nyx_basic_attack()
{
	// Find attack index
	var attack_index = scr_find_attack_index("Nyx_basic_attack")
	
	// Pull variables
	var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
	var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
	var dmg_mod = global.attack_stats[attack_index].dmg_mod
	var crit_chance = global.attack_stats[attack_index].crit_chance
	var crit_mod = global.attack_stats[attack_index].crit_mod
	
	// Melee attack that does damage
	scr_standard_pmelee(obj_pmelee_parent, dmg_die_total, dmg_die_sides, dmg_mod, crit_chance, crit_mod);
		
	// States attack was used for cooldowns
	used = true
}