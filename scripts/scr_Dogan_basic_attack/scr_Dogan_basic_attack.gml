
function scr_Dogan_basic_attack()
{
	
	// Pull stats
	var attack_index = scr_find_attack_index("Dogan_basic_attack")
	
	var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
	var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
	var dmg_mod = global.attack_stats[attack_index].dmg_mod
	var crit_chance = global.attack_stats[attack_index].crit_chance
	
	// Melee attack that does damage
	scr_standard_pmelee(obj_Dogan_melee, dmg_die_total, dmg_die_sides, dmg_mod, crit_chance);
	
	// States attack was used for cooldowns
	used = true
}