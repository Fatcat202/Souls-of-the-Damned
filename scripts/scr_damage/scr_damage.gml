
function scr_damage(dmg)
{

	// Script will check if enemy has armor, if they do then deal damage to armor
	// If armor is destroyed then deal remaining damage to HP
	
	
	// Check if the enemy has armor
	if (other.active_armor > 0)
	{
		// If there is armor, deal damage to armor
		other.active_armor = other.active_armor - dmg;
		
		// Tint sprite blue for 6 frames when damaged
		other.image_blend = c_blue;
		other.alarm[11] = game_get_speed(gamespeed_fps) / 10;
		
		// Check if armor remains to determine how long it takes to start regaining armor
		if(other.active_armor > 0)
		{
			// Delay armor regeneration by armor regeneration time
			other.can_regain_armor = false;
			other.alarm[6] = game_get_speed(gamespeed_fps) * global.regain_armor_timer;
		}else
		{
			// Delay armor regeneration by 150% armor regeneration time
			other.can_regain_armor = false;
			other.alarm[6] = game_get_speed(gamespeed_fps) * global.regain_armor_timer * 1.5;
		}
	}else if(other.active_armor <= 0) // Apply damage if no armor
	{
		other.active_health = other.active_health - dmg;
		// Tint sprite red for 6 frames when damaged
		other.image_blend = c_red;
		other.alarm[11] = game_get_speed(gamespeed_fps) / 10;
	}
}