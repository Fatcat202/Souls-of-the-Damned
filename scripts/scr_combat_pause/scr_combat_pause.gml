

function scr_combat_pause()
{
	
	// States that the game is now combat paused
	global.game_combat_paused = true;
	
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
				// Transfer stats
				combat_pause_char.active_health = global.arr_players[i].active_health;
				combat_pause_char.max_hp = global.arr_players[i].max_hp;
				combat_pause_char.active_power = global.arr_players[i].active_power;
			
			show_debug_message("Swapping player for combat pause");
			
			
		// Checks if players exist, if it does replace with combat pause object
		}else if(instance_exists(global.arr_npc[i]) == true)
		{
			var combat_pause_char = instance_create_layer(global.arr_npc[i].x, global.arr_npc[i].y, "Combat_Paused", global.arr_combat_pause[i]);
				// Transfer stats
				combat_pause_char.active_health = global.arr_npc[i].active_health;
				combat_pause_char.max_hp = global.arr_npc[i].max_hp;
				combat_pause_char.active_power = global.arr_npc[i].active_power;
					
			show_debug_message("Swapping npc for combat pause");
		
		}else // Debug
		{
			show_debug_message("NO CHARACTER FOUND FOR COMBAT PAUSE SWAP"); 
		}
		}
		show_debug_message("array_players " + string(n) + ": " + string(global.arr_players[n]));
		show_debug_message("array_npc " + string(n) + ": " + string(global.arr_npc[n]));
		

	}
		
		instance_deactivate_object(all);
		instance_activate_object(obj_combat_pause_parent);
		
		
	// TODO display new surface
	/*
	global.combat_pause_surf = surface_create(room_width, room_height);
	surface_set_target(global.combat_pause_surf);
	draw_surface(global.combat_pause_surf, 0, 0);
	surface_reset_target();
	draw_set_halign(fa_center);
	draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_white, c_white, c_white, c_white, 1);
	draw_set_halign(fa_left);
	*/
		
		

}
