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
				var combat_pause_char = instance_create_layer(xx, yy, "Combat_Paused", global.arr_combat_pause[i]);
					// Transfer Stats
					scr_transfer_variables(combat_pause_char, obj_player_parent.object_index)

				// If npc, replace with combat pause npc
			}else if(object_get_name(global.arr_npc[i]) == global.active_pc_list[| n])
			{
				var combat_pause_npc = instance_create_layer(global.arr_npc[i].x, global.arr_npc[i].y, "Combat_Paused", global.arr_combat_pause_npc[i]);
					// Transfer stats
					scr_transfer_variables(combat_pause_npc, global.arr_npc[i])
				
			}
		}
	}


	// Capture game moment (except GUI as GUI is rendered independently)
	
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


	// Deactivate all but those needed
	instance_deactivate_object(all);
	instance_activate_object(game_manager);
	instance_activate_object(obj_inventory)
	instance_activate_object(obj_com_pause_parent);
	instance_activate_object(obj_com_pause_npc_parent);
	instance_activate_object(obj_gui_button_parent);
}