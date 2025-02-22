function scr_inventory_pause()
{
	
	// Prevent obj_description from sticking around
	if(instance_exists(obj_description)) instance_destroy(obj_description)
	
	// Makes sure game speed is set to 60 to prevent issues
	game_set_speed(60, gamespeed_fps)
	
	// "Pause" alarms by increasing them incrementally
	scr_increment_all_alarms();
	
	// Pauses all particle systems
	scr_part_systems_set_auto_update();
	
	// Set total_active_com_pause_pcs
	global.total_active_com_pause_pcs = global.total_active_pcs;
	
	
	var xx, yy;
	if(instance_exists(obj_player_parent))
	{
		xx = obj_player_parent.x;
		yy = obj_player_parent.y;
	}
	if(instance_exists(obj_com_pause_parent))
	{
		xx = obj_com_pause_parent.x;
		yy = obj_com_pause_parent.y;
	}
	
	// Swap characters from regular objects to com pause versions
	scr_swap_com_pause(xx, yy)
	

	// Set pause image
	scr_pause_image()


	// Deactivate all but those needed
	instance_deactivate_object(all);
	instance_activate_object(game_manager);
	instance_activate_object(obj_inventory_parent)
	instance_activate_object(obj_com_pause_parent);
	instance_activate_object(obj_com_pause_npc_parent);
	instance_activate_object(obj_enemy_com_pause_parent);
	instance_activate_object(obj_leviathan_com_pause)
	instance_activate_object(obj_gui_button_parent);
}