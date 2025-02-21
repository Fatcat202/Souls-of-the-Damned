/// @description Hitting Enemy

if(state != "attacking" && can_attack)
{

	// Pull stats
	var attack_index = scr_find_attack_index("Garyrager_rager_toss")
	
	// Pull variables
	var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
	var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
	var dmg_mod = global.attack_stats[attack_index].dmg_mod
	var duration = global.attack_stats[attack_index].duration

	// Set attack state
	state = "attacking"

	// Find enemy index
	enemy = other.id

	// Enact DOT
	var temp_dmg = 4
	scr_apply_dot(temp_dmg, duration / 4, duration, true)

	// Set object sprite
	//sprite_index = spr_Rager_flurry

	// Set attack duration
	alarm[1] = game_get_speed(gamespeed_fps) * duration
}
