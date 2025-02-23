/// @description Damage on Hit


// Pull stats
var attack_index = scr_find_attack_index("Nyx_dragons_breath")
	
var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
var dmg_mod = global.attack_stats[attack_index].dmg_mod
var crit_chance = global.attack_stats[attack_index].crit_chance
var crit_mod = global.attack_stats[attack_index].crit_mod


if(other.can_damage) scr_damage(scr_critical(scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod, crit_chance, crit_mod))


