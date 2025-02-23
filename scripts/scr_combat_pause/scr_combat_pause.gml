function scr_combat_pause()
{
	// Prevent obj_description from sticking around
	if(instance_exists(obj_description)) instance_destroy(obj_description);
	
	// Set combat pause to true
	global.game_combat_paused = true;
	
	
	// Makes sure game speed is set to 60 to prevent issues
	game_set_speed(60, gamespeed_fps);
	
	// "Pause" alarms by increasing them incrementally
	scr_increment_all_alarms();
	
	// Pauses all particle systems
	scr_part_systems_set_auto_update();
	
	// Swap characters from regular objects to com pause versions
	scr_swap_com_pause()
	
	// Set pause image	
	scr_pause_image()

	// Deactivate all but those needed
	instance_deactivate_object(all);
	instance_activate_object(game_manager);
	instance_activate_object(obj_com_pause_parent);
	instance_activate_object(obj_enemy_com_pause_parent);
	instance_activate_object(obj_leviathan_com_pause)
	instance_activate_object(obj_com_pause_npc_parent);
	instance_activate_object(obj_gui_button_parent);
	
	

}