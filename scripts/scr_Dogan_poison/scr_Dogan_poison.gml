
function scr_Dogan_poison()
{
	var attack_index = scr_find_attack_index("Dogan_poison")

	var duration = global.attack_stats[attack_index].duration
	
	scr_poison_coating(duration);
	
	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * global.attack_stats[attack_index].cooldown;
	
	// States attack was used for cooldowns
	used = true
}