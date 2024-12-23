
function scr_damage(dmg){
	/* TODO Needs to be fixed, add armor regen, bug when hit
	
	
	// Check if the enemy has armor
	if(active_armor <= 0)
	{
		// Apply damage if no armor
		other.active_health = other.active_health - dmg;
		// Tint sprite red for 6 frames when damaged
		other.image_blend = c_red;
		other.alarm[11] = game_get_speed(gamespeed_fps) / 10;
	}else
	{
		// If there is armor, deal damage to armor
		other.active_armor = other.active_armor - dmg;
		
		// If armor hits 0, deal remaining damage to health
		var left_over = other.active_armor % dmg;
		other.active_health = other.active_health - left_over
		
		// Tint sprite red for 6 frames if health is subtracted
		if(left_over > 0)
		{
			// Tint sprite red for 6 frames when damaged
			other.image_blend = c_red;
			other.alarm[11] = game_get_speed(gamespeed_fps) / 10;
		}
	}
	*/
	
	
	other.active_health = other.active_health - dmg;

	// Tint sprite red for 6 frames when damaged
	other.image_blend = c_red;
	other.alarm[11] = game_get_speed(gamespeed_fps) / 10;
	
	
}