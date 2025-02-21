/// @description Hitting Enemy

// Pull stats
var attack_index = scr_find_attack_index("Garyrager_rager_toss")
	
// Pull variables
var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
var dmg_mod = global.attack_stats[attack_index].dmg_mod

// Set attack state
state = "attacking"

// Find enemy index
enemy = other.object_index

// Enact DOT
var temp_dmg = 4
scr_apply_dot(temp_dmg, 30, duration, true)

// Set object sprite
//object_set_sprite(object_index, spr_Rager_flurry)