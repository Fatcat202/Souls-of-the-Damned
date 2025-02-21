/// @description Damage

// Pull stats
var attack_index = scr_find_attack_index("Bronwin_imbue_arrow")
	
var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
var dmg_mod = global.attack_stats[attack_index].dmg_mod

if(other.can_damage)
{
	// Check if the attack is imbued with bonus damage
	if(imbue_attack)
	{
		var bonus_damage = scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod;
		scr_damage(damage + bonus_damage);
	}else
	{
		scr_damage(damage);
	}
}


instance_destroy()