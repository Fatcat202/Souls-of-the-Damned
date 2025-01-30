
function scr_Nyx_basic_attack()
{
	var dmg_die_total = 1
	var dmg_die_sides = 8
	var dmg_mod = 0;
	
	// Melee attack that does damage
	scr_standard_pmelee(obj_pmelee_parent, dmg_die_total, dmg_die_sides, dmg_mod);
		
	// States attack was used for cooldowns
	used = true
}