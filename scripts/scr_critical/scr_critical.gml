function scr_critical(cooldown_time)
{
	// Allows for poison debuff ability, applying DOT to attacks
	
	can_crit = true;
	
	cooldown = game_get_speed(gamespeed_fps) * cooldown_time;
	critical_time = cooldown / 2;
	critical_timer = 0;
}