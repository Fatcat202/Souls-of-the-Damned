
function scr_Alok_basic_attack()
{
	// Melee attack that does damage
	
	// Pull stats
	attack_index = scr_find_attack_index("Alok_basic_attack")
	
	var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
	var dmg_die_sides = 8
	var dmg_mod = 0;
	
	scr_standard_pmelee(obj_pmelee_parent, dmg_die_total, dmg_die_sides, dmg_mod);
		
	// States attack was used for cooldowns
	used = true
}