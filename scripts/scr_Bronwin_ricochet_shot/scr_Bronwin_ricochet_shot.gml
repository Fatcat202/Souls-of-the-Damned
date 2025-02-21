// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bronwin_ricochet_shot()
{
	// Fire sucessive shots that will bounce off walls
	
	// Pull stats
	var attack_index = scr_find_attack_index("Bronwin_ricochet_shot")
	
	// Set total number of shots
	total_shots = 3
	shots = 0
	
	// Fire arrows, found in obj_player_Bronwin alarm[1]
	alarm[1] = 1;
	
	// Cooldown and reloading
	cooldown = game_get_speed(gamespeed_fps) * global.attack_stats[attack_index].cooldown;
	
	// States attack was used for cooldowns
	used = true
	
}