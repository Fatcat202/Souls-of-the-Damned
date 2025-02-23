
function scr_Dogan_sneak_attack()
{	
	
	var attack_index = scr_find_attack_index("Dogan_sneak_attack")

	var duration = global.attack_stats[attack_index].duration
	
	scr_sneak_attack(duration);
	
	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * global.attack_stats[attack_index].cooldown;
	
	// States attack was used for cooldowns
	used = true
}