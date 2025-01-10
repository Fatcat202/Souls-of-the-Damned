function scr_combat_resume()
{
	var swap_char = global.selected_char;
	
	// Makes sure game speed is set to 60 to prevent issues
	game_set_speed(60, gamespeed_fps);
	
	
	// Delete the drawn surface and its buffer
	if(surface_exists(global.combat_pause_surf)) surface_free(global.combat_pause_surf); 
	if(buffer_exists(global.combat_pause_surf_buffer)) buffer_delete(global.combat_pause_surf_buffer);

	
	// Reactivate regular objects and destroy all combat pause objects
	instance_activate_all();
	instance_destroy(obj_com_pause_parent);
	instance_destroy(obj_com_pause_npc_parent);
	
	// Clear active_com_pause array
	ds_list_clear(global.active_pc_com_pause_list)
	ds_list_clear(global.active_pc_com_pause_names_list)
	
	scr_change_char(swap_char);

}