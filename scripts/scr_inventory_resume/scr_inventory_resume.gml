function scr_inventory_resume()
{
	
	// Prevent obj_description from sticking around
	if(instance_exists(obj_description)) instance_destroy(obj_description)
	
	
	// States that the inventory is not shown
	global.show_inventory = false;
	
	// Resets end_inventory_pause
	global.end_inventory_pause = false;
	
	if(!global.game_combat_paused)
	{
		
		// Makes sure game speed is set to 60 to prevent issues
		game_set_speed(60, gamespeed_fps);
	
		// Destroy pause image
		layer_destroy("Pause_Sprites")


		// Transfer command data to PCs
		for(var i = 0; i < global.total_active_pcs; i++)
		{
			scr_transfer_variables(global.active_pc_object_list[| i], global.active_pc_com_pause_object_list[| i]);
		}

	
		// Destroy all combat pause objects
		instance_destroy(obj_com_pause_parent);
		instance_destroy(obj_com_pause_npc_parent);
	
		// Clear active_com_pause array
		ds_list_clear(global.active_pc_com_pause_list)
		ds_list_clear(global.active_pc_com_pause_names_list)
	
	
		// Automatically change char if there was an issue with being changed to the right char
		if(global.selected_char != obj_player_parent.pc_index) scr_com_resume_change_char(global.selected_char)
	}
}