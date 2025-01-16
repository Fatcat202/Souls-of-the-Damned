function scr_esc_pause()
{
	// Set game esc pause to true
	global.game_esc_paused = true;
	
	// Makes sure game speed is set to 60 to prevent issues
	game_set_speed(60, gamespeed_fps)
	
	// "Pause" alarms by increasing them incrementally
	scr_increment_all_alarms();
	
	// Pauses all particle systems
	scr_part_systems_set_auto_update();	

	// Capture game moment (except GUI as GUI is rendered independently)
	global.esc_pause_surf = surface_create(global.res_w, global.res_h);
	surface_set_target(global.esc_pause_surf);
	draw_surface(application_surface, 0, 0);
	surface_reset_target();
	
	// Create buffer to back the surface up to in case it is lost
	if(buffer_exists(global.esc_pause_surf_buffer)) buffer_delete(global.esc_pause_surf_buffer);
	global.esc_pause_surf_buffer = buffer_create(global.res_w * global.res_h * 4, buffer_fixed, 1);
	buffer_get_surface(global.esc_pause_surf_buffer, global.esc_pause_surf, 0);
	
	// Deactivate all objects except game_manger
	instance_deactivate_object(all);
	instance_activate_object(game_manager)
}