function scr_combat_resume()
{
	// States that the game not combat paused
	global.game_combat_paused = false;
	
	// Makes sure game speed is set to 60 to prevent issues
	game_set_speed(60, gamespeed_fps);

	// Delete the drawn surface and its buffer
	if(surface_exists(global.combat_pause_surf)) surface_free(global.combat_pause_surf); 
	if(buffer_exists(global.combat_pause_surf_buffer)) buffer_delete(global.combat_pause_surf_buffer);

	

	
	// Reactivate regular objects
	instance_activate_all();

	// Transfer command data to PCs
	for(var i = 0; i < global.total_active_pcs; i++)
	{
		global.active_pc_object_list[| i].command_state = global.active_pc_com_pause_object_list[| i].command_state;
		global.active_pc_object_list[| i].command_state_previous = global.active_pc_com_pause_object_list[| i].command_state_previous;
		global.active_pc_object_list[| i].target_move_x = global.active_pc_com_pause_object_list[| i].target_move_x;
		global.active_pc_object_list[| i].target_move_y = global.active_pc_com_pause_object_list[| i].target_move_y;
	}
	obj_player_parent.command_state = obj_com_pause_parent.command_state;
	obj_player_parent.command_state_previous = obj_com_pause_parent.command_state_previous;
	obj_player_parent.target_move_x = obj_com_pause_parent.target_move_x;
	obj_player_parent.target_move_y = obj_com_pause_parent.target_move_y;
	
	
	// Destroy all combat pause objects
	instance_destroy(obj_com_pause_parent);
	instance_destroy(obj_com_pause_npc_parent);
	
	// Clear active_com_pause array
	ds_list_clear(global.active_pc_com_pause_list)
	ds_list_clear(global.active_pc_com_pause_names_list)	
}