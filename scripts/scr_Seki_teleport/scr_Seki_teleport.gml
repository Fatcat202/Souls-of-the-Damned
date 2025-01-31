
function scr_Seki_teleport(){

	// Teleport to where the mouse clicks, provided there is no collision
	
	if (place_free(mouse_x, mouse_y))
	{
		x = mouse_x;
		y = mouse_y;
		
		// Cooldown
		cooldown = game_get_speed(gamespeed_fps) * 6;
		
		// States attack was used for cooldowns
		used = true
	}
}