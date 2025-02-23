function scr_sneak_attack(cooldown_time)
{
	// Start sneak attack timer
	
	can_crit = true;
	
	cooldown = game_get_speed(gamespeed_fps) * cooldown_time;
	critical_time = cooldown / 2;
	critical_timer = 0;
}