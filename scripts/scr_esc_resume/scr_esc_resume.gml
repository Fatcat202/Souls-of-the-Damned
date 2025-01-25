function scr_esc_resume()
{

	// States that the game not esc paused
	global.game_esc_paused = false;
	
	// Makes sure game speed is set to 60 to prevent issues
	game_set_speed(60, gamespeed_fps);
	
	if(!global.game_combat_paused)
	{
		// Removing background sprite ** IN PROGRESS **
		var background_pause_layer = layer_get_id("Pause")
		var background_pause_id = layer_background_get_id(background_pause_layer);
		layer_background_visible(background_pause_id, false)
	
		var background_layer = layer_get_id("Background")
		var background_id = layer_background_get_id(background_layer);
		layer_background_visible(background_id, true)
	
		// Reactivate regular objects
		instance_activate_all();
	} else
	{
		instance_activate_object(obj_com_pause_parent)
		instance_activate_object(obj_com_pause_npc_parent)
	}

}