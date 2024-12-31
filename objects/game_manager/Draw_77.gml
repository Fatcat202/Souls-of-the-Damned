/// @description Combat Pausing

// Check if combat pause is active
if(global.game_combat_paused == true)
{
	// Set and draw surface
	surface_set_target(application_surface)
	if(surface_exists(global.combat_pause_surf)) draw_surface(global.combat_pause_surf, 0, 0);
	else // Restore buffer if surface is lost
	{
		global.combat_pause_surf = surface_create(global.res_w, global.res_h);
		buffer_set_surface(global.pause_surf_buffer, global.combat_pause_surf, 0);
	}
	
	surface_reset_target();
	
	
	
	
	
	
	
	
	
	
}
