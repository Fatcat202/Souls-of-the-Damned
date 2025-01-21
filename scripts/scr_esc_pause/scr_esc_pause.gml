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
	
	if(!global.game_combat_paused)
	{

		// Adding background sprite ** IN PROGRESS **
		var spr_temp_background = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, surface_get_width(application_surface) / 2, surface_get_height(application_surface) / 2)
	
		// Place new background sprite over where camera is located
		var background_pause_layer = layer_get_id("Pause")
		var background_pause_id = layer_background_get_id(background_pause_layer);
		layer_background_sprite(background_pause_id, spr_temp_background)
		layer_x(background_pause_layer, global.cam_x)
		layer_y(background_pause_layer, global.cam_y)
	
		// Make pause layer visible
		layer_background_visible(background_pause_id, true)

		// Make background layer invisible
		var background_layer = layer_get_id("Background")
		var background_id = layer_background_get_id(background_layer);
		layer_background_visible(background_id, false)
	
	}
	
	// Deactivate all objects except game_manger
	instance_deactivate_object(all);
	instance_activate_object(game_manager)
		
}