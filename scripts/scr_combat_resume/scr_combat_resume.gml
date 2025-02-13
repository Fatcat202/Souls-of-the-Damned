function scr_combat_resume()
{
	// Prevent obj_description from sticking around
	if(instance_exists(obj_description)) instance_destroy(obj_description)
	
	// States that the game not combat paused
	global.game_combat_paused = false;
	
	// Resets end_combat_pause
	global.end_combat_pause = false;
	
	// Makes sure game speed is set to 60 to prevent issues
	game_set_speed(60, gamespeed_fps);
	
	// Removing background sprite ** IN PROGRESS **
	var background_pause_layer = layer_get_id("Pause")
	var background_pause_id = layer_background_get_id(background_pause_layer);
	layer_background_visible(background_pause_id, false)
	
	var background_layer = layer_get_id("Background")
	var background_id = layer_background_get_id(background_layer);
	layer_background_visible(background_id, true)



	
	//scr_com_resume_change_char(obj_player_parent.pc_index)

	// Transfer command data to PCs
	for(var i = 0; i < global.total_active_pcs; i++)
	{
		global.active_pc_object_list[| i].command_state = global.active_pc_com_pause_object_list[| i].command_state;
		global.active_pc_object_list[| i].command_state_previous = global.active_pc_com_pause_object_list[| i].command_state_previous;
		global.active_pc_object_list[| i].target_move_x = global.active_pc_com_pause_object_list[| i].target_move_x;
		global.active_pc_object_list[| i].target_move_y = global.active_pc_com_pause_object_list[| i].target_move_y;
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