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
	
	// Set total_active_com_pause_pcs
	global.total_active_com_pause_pcs = global.total_active_pcs;
	

	// Checks if players exist, if it does replace with combat pause object
	// Loop through all active pcs
	for(var n = 0; n < global.total_active_pcs; n++)
	{
		// Loop through all potential npcs
		for(var i = 1; i <= 8; i++)
		{
			// If player, replace player with com pause player
			if(object_get_name(global.arr_players[i]) == global.active_pc_list[| n])
			{
				var combat_pause_char = instance_create_layer(x, y, "Combat_Paused", global.arr_combat_pause[i]);	
					// Transfer Stats
					scr_transfer_variables(combat_pause_char, self)

				// If npc, replace with combat pause npc
			}else if(object_get_name(global.arr_npc[i]) == global.active_pc_list[| n])
			{
				var combat_pause_npc = instance_create_layer(global.arr_npc[i].x, global.arr_npc[i].y, "Combat_Paused", global.arr_combat_pause_npc[i]);
					// Transfer stats
					scr_transfer_variables(combat_pause_npc, global.arr_npc[i])
				
			}
		}
	}
	
	
	// Set pause image	
	scr_pause_image()

	

	// Deactivate all but those needed
	instance_deactivate_object(all);
	instance_activate_object(game_manager);
	instance_activate_object(obj_com_pause_parent);
	instance_activate_object(obj_com_pause_npc_parent);
	instance_activate_object(obj_gui_button_parent);
	

}