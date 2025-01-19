function scr_esc_resume()
{

	// States that the game not esc paused
	global.game_esc_paused = false;
	
	// Makes sure game speed is set to 60 to prevent issues
	game_set_speed(60, gamespeed_fps);
	
	
	// Delete the drawn surface and its buffer
	if(surface_exists(global.esc_pause_surf)) surface_free(global.esc_pause_surf); 
	if(buffer_exists(global.esc_pause_surf_buffer)) buffer_delete(global.esc_pause_surf_buffer);
	
	// Reactivate regular objects
	instance_activate_all();	

}