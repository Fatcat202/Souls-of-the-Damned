
function scr_Xan_fly()
{
	// Personal buff. Avoid ground effects and gain speed boost for limited time.
	is_flyer = true;
	move_spd = move_spd * 1.33;
	
	// Set cooldown on ability
	cooldown = game_get_speed(gamespeed_fps) * 6
	
	// Set end of effect timer
	Xan_fly_timer = 0;
	Xan_fly_end = cooldown / 2;
	Xan_fly_active = true;

}