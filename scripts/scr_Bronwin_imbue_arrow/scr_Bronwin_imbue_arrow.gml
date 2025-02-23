// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bronwin_imbue_arrow()
{
	// Imbue arrow shots with magic, increasing their damage with other potential effects
	
	// Pull stats
	var attack_index = scr_find_attack_index("Bronwin_imbue_arrow")
	var duration = global.attack_stats[attack_index].duration

	scr_imbue_attack(duration)

	// Cooldown and reloading
	cooldown = game_get_speed(gamespeed_fps) * global.attack_stats[attack_index].cooldown;
	
	// States attack was used for cooldowns
	used = true
}