

function scr_combat_pause()
{

	// Makes sure game speed is set to 60 to prevent issues
	game_set_speed(60, gamespeed_fps)
	
	// "Pause" alarms by increasing them incrementally
	scr_increment_all_alarms();
	
	// Pauses all particle systems
	scr_part_systems_set_auto_update();
	
	
	for(var n = 0; n < global.total_active_pcs; n++)
	{
		for(var i = 1; i < array_length(global.arr_players); i++)
		{
			
			// Checks if players exist, if it does replace with combat pause object
			if(string(global.arr_player_index_name[i]) == string(global.arr_active_pcs_names[n]))
			{
				var combat_pause_char = instance_create_layer(global.arr_players[global.char_index].x, global.arr_players[global.char_index].y, "Combat_Paused", global.arr_combat_pause[i]);	
				
				
					// Health and armor
					combat_pause_char.active_health = global.arr_players[global.char_index].active_health;
					combat_pause_char.max_hp = global.arr_players[global.char_index].max_hp;
					combat_pause_char.active_armor = global.arr_players[global.char_index].active_armor;
					combat_pause_char.max_armor = global.arr_players[global.char_index].max_armor;
					combat_pause_char.non_lethal = global.arr_players[global.char_index].non_lethal;
	
					// Cooldowns
					combat_pause_char.cooldown_1 = global.arr_players[global.char_index].cooldown_1;
					combat_pause_char.cooldown_timer_1 = global.arr_players[global.char_index].cooldown_timer_1;
					combat_pause_char.cooldown_time_1 = global.arr_players[global.char_index].cooldown_time_1;
					combat_pause_char.cooldown_2 = global.arr_players[global.char_index].cooldown_2;
					combat_pause_char.cooldown_timer_2 = global.arr_players[global.char_index].cooldown_timer_2;
					combat_pause_char.cooldown_time_2 = global.arr_players[global.char_index].cooldown_time_2;
					combat_pause_char.cooldown_3 = global.arr_players[global.char_index].cooldown_3;
					combat_pause_char.cooldown_timer_3 = global.arr_players[global.char_index].cooldown_timer_3;
					combat_pause_char.cooldown_time_3 = global.arr_players[global.char_index].cooldown_time_3;
					combat_pause_char.cooldown_4 = global.arr_players[global.char_index].cooldown_4;
					combat_pause_char.cooldown_timer_4 = global.arr_players[global.char_index].cooldown_timer_4;
					combat_pause_char.cooldown_time_4 = global.arr_players[global.char_index].cooldown_time_4;
	
					// Status
					combat_pause_char.can_damage = global.arr_players[global.char_index].can_damage;
					combat_pause_char.can_attack = global.arr_players[global.char_index].can_attack;
					combat_pause_char.can_regain_armor = global.arr_players[global.char_index].can_regain_armor;
					combat_pause_char.can_move = global.arr_players[global.char_index].can_move;
					combat_pause_char.stunned = global.arr_players[global.char_index].stunned;
					combat_pause_char.is_flyer = global.arr_players[global.char_index].is_flyer;
					combat_pause_char.blocking = global.arr_players[global.char_index].blocking;
					combat_pause_char.poison_coating = global.arr_players[global.char_index].poison_coating;
					combat_pause_char.knocked_back = global.arr_players[global.char_index].knocked_back;
					combat_pause_char.can_control = global.arr_players[global.char_index].can_control;
					combat_pause_char.can_heal = global.arr_players[global.char_index].can_heal;
					combat_pause_char.index = global.arr_players[global.char_index].index;
					combat_pause_char.active_power = global.arr_players[global.char_index].active_power;
	
					// Timers
					combat_pause_char.dot_tick = global.arr_players[global.char_index].dot_tick;
					combat_pause_char.non_lethal_tick = global.arr_players[global.char_index].non_lethal_tick;
					combat_pause_char.armor_regain_cooldown_time = global.arr_players[global.char_index].armor_regain_cooldown_time
					combat_pause_char.armor_regain_cooldown_timer = global.arr_players[global.char_index].armor_regain_cooldown_timer
					combat_pause_char.stun_cooldown_time = global.arr_players[global.char_index].stun_cooldown_time;
					combat_pause_char.stun_cooldown_timer = global.arr_players[global.char_index].stun_cooldown_timer;
					combat_pause_char.blocking_cooldown_timer = global.arr_players[global.char_index].blocking_cooldown_timer;
					combat_pause_char.poison_coating_timer = global.arr_players[global.char_index].poison_coating_timer;
					combat_pause_char.poison_coating_timer = global.arr_players[global.char_index].poison_coating_time;
					combat_pause_char.knockback_cooldown_timer = global.arr_players[global.char_index].knockback_cooldown_timer;
					combat_pause_char.knockback_cooldown_time = global.arr_players[global.char_index].knockback_cooldown_time;
					

			// Checks if players exist, if it does replace with combat pause object
			}else if(global.arr_npc[i] == global.arr_active_pcs[n])
			{
				var combat_pause_char = instance_create_layer(global.arr_npc[i].x, global.arr_npc[i].y, "Combat_Paused", global.arr_combat_pause_npc[i]);
					// Transfer stats ** MUST ADD REMAINING STATS AND TIMERS **

					// Health and armor
					combat_pause_char.active_health = global.arr_npc[i].active_health;
					combat_pause_char.max_hp = global.arr_npc[i].max_hp;
					combat_pause_char.active_armor = global.arr_npc[i].active_armor;
					combat_pause_char.max_armor = global.arr_npc[i].max_armor;
					combat_pause_char.non_lethal = global.arr_npc[i].non_lethal;
	
					// Cooldowns
					combat_pause_char.cooldown_1 = global.arr_npc[i].cooldown_1;
					combat_pause_char.cooldown_timer_1 = global.arr_npc[i].cooldown_timer_1;
					combat_pause_char.cooldown_time_1 = global.arr_npc[i].cooldown_time_1;
					combat_pause_char.cooldown_2 = global.arr_npc[i].cooldown_2;
					combat_pause_char.cooldown_timer_2 = global.arr_npc[i].cooldown_timer_2;
					combat_pause_char.cooldown_time_2 = global.arr_npc[i].cooldown_time_2;
					combat_pause_char.cooldown_3 = global.arr_npc[i].cooldown_3;
					combat_pause_char.cooldown_timer_3 = global.arr_npc[i].cooldown_timer_3;
					combat_pause_char.cooldown_time_3 = global.arr_npc[i].cooldown_time_3;
					combat_pause_char.cooldown_4 = global.arr_npc[i].cooldown_4;
					combat_pause_char.cooldown_timer_4 = global.arr_npc[i].cooldown_timer_4;
					combat_pause_char.cooldown_time_4 = global.arr_npc[i].cooldown_time_4;
	
					// Status
					combat_pause_char.can_damage = global.arr_npc[i].can_damage;
					combat_pause_char.can_attack = global.arr_npc[i].can_attack;
					combat_pause_char.can_regain_armor = global.arr_npc[i].can_regain_armor;
					combat_pause_char.can_move = global.arr_npc[i].can_move;
					combat_pause_char.stunned = global.arr_npc[i].stunned;
					combat_pause_char.is_flyer = global.arr_npc[i].is_flyer;
					combat_pause_char.blocking = global.arr_npc[i].blocking;
					combat_pause_char.poison_coating = global.arr_npc[i].poison_coating;
					combat_pause_char.knocked_back = global.arr_npc[i].knocked_back;
					combat_pause_char.can_control = global.arr_npc[i].can_control;
					combat_pause_char.can_heal = global.arr_npc[i].can_heal;
					combat_pause_char.index = global.arr_npc[i].index;
					combat_pause_char.active_power = global.arr_npc[i].active_power;
	
					// Timers
					combat_pause_char.dot_tick = global.arr_npc[i].dot_tick;
					combat_pause_char.non_lethal_tick = global.arr_npc[i].non_lethal_tick;
					combat_pause_char.armor_regain_cooldown_time = global.arr_npc[i].armor_regain_cooldown_time
					combat_pause_char.armor_regain_cooldown_timer = global.arr_npc[i].armor_regain_cooldown_timer
					combat_pause_char.stun_cooldown_time = global.arr_npc[i].stun_cooldown_time;
					combat_pause_char.stun_cooldown_timer = global.arr_npc[i].stun_cooldown_timer;
					combat_pause_char.blocking_cooldown_timer = global.arr_npc[i].blocking_cooldown_timer;
					combat_pause_char.poison_coating_timer = global.arr_npc[i].poison_coating_timer;
					combat_pause_char.poison_coating_timer = global.arr_npc[i].poison_coating_time;
					combat_pause_char.knockback_cooldown_timer = global.arr_npc[i].knockback_cooldown_timer;
					combat_pause_char.knockback_cooldown_time = global.arr_npc[i].knockback_cooldown_time;
		
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
	instance_activate_object(obj_com_pause_parent);
	instance_activate_object(obj_com_pause_npc_parent);
}
