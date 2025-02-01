/// @description ESC Pause

// Prevent ESC pausing if on death screen
if(!global.game_death_paused)
{
	// Activate ESC Pause
	if(global.game_esc_paused = false)
	{
		global.game_esc_paused = true;
		layer_destroy_instances("HUD_Buttons");
		scr_esc_pause();
		
		// Create ESC Menu object
		instance_create_layer(0, 0, "Game_Manager", obj_esc_menu);
		instance_activate_object(obj_esc_menu)

	}else // Deactivate ESC Pause
	{
		global.game_esc_paused = false;
		scr_esc_resume();
		
		// Create ESC Menu object
		instance_destroy(obj_esc_menu)
		instance_destroy(obj_help_screen)
		layer_destroy_instances("Menu_Buttons")
	}
}
