
function scr_Dogan_basic_attack()
{
	
	// Pull stats
	attack_index = scr_find_attack_index("Dogan_basic_attack")
	
	var dmg_die_total = 1
	var dmg_die_sides = 6
	var dmg_mod = 0;
	
	// Melee attack that does damage
	scr_standard_pmelee(obj_Dogan_melee, dmg_die_total, dmg_die_sides, dmg_mod);
	
	// States attack was used for cooldowns
	used = true
}