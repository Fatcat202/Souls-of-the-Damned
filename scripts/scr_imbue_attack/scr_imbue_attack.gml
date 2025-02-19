// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_imbue_attack(duration)
{
	// Add bonus damage to attacks
	
	imbue_attack = true;
	
	var cooldown = game_get_speed(gamespeed_fps) * duration;
	imbue_attack_cooldown_time = cooldown / 2;
	imbue_attack_cooldown_timer = 0;
}

