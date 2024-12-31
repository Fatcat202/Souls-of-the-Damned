

function scr_combat_pause()
{
	
	// States that the game is now combat paused
	global.game_combat_paused = true;
	global.combat_pause = true;
	
	// Makes sure game speed is set to 60 to prevent issues
	game_set_speed(60, gamespeed_fps)
	
	// "Pause" alarms by increasing them incrementally
	scr_increment_all_alarms();
	
	// Pauses all particle systems
	scr_part_systems_set_auto_update();
	
	
	for(var n = 0; n < global.player_index_length; n++)
	{
		for(var i = 1; i < array_length(global.arr_players); i++)
		{
			// Checks if players exist, if it does replace with combat pause object
			if(instance_exists(global.arr_players[i]) == true)
			{
				var combat_pause_char = instance_create_layer(global.arr_players[i].x, global.arr_players[i].y, "Combat_Paused", global.arr_combat_pause[i]);
					// Transfer stats ** MUST ADD REMAINING STATS AND TIMERS **
					combat_pause_char.active_health = global.arr_players[i].active_health;
					combat_pause_char.max_hp = global.arr_players[i].max_hp;
					combat_pause_char.active_power = global.arr_players[i].active_power;
					combat_pause_char.active_armor = global.arr_players[i].active_armor;
					combat_pause_char.max_armor = global.arr_players[i].max_armor;
			
			// Checks if players exist, if it does replace with combat pause object
			}else if(instance_exists(global.arr_npc[i]) == true)
			{
				var combat_pause_char = instance_create_layer(global.arr_npc[i].x, global.arr_npc[i].y, "Combat_Paused", global.arr_combat_pause[i]);
					// Transfer stats ** MUST ADD REMAINING STATS AND TIMERS **
					combat_pause_char.active_health = global.arr_npc[i].active_health;
					combat_pause_char.max_hp = global.arr_npc[i].max_hp;
					combat_pause_char.active_power = global.arr_npc[i].active_power;
					combat_pause_char.active_armor = global.arr_npc[i].active_armor;
					combat_pause_char.max_armor = global.arr_npc[i].max_armor;	
		
			}else // Debug
			{
				show_debug_message("NO CHARACTER FOUND FOR COMBAT PAUSE SWAP"); 
			}
		}
	}
	
	// Capture game moment (except GUI)
	global.combat_pause_surf = surface_create(global.res_w, global.res_h);
	surface_set_target(global.combat_pause_surf);
		draw_surface(application_surface, 0, 0);
	surface_reset_target();
	
	// Create buffer to back the surface up to in case it is lost
	if(buffer_exists(global.combat_pause_surf_buffer)) buffer_delete(global.combat_pause_surf_buffer);
	global.combat_pause_surf_buffer = buffer_create(global.res_w * global.res_h * 4, buffer_fixed, 1);
	buffer_get_surface(global.combat_pause_surf_buffer, global.combat_pause_surf, 0);
	
	
	
	instance_deactivate_object(all);
	instance_activate_object(game_manager);
	instance_activate_object(obj_combat_pause_parent);
}
