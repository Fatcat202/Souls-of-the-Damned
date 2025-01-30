/// @description HUD GUI


	// ** VARIABLES **

	// Half display width and height
	var xx = display_get_gui_width() / 2;
	var yy = display_get_gui_height() / 2;

	// Healthbars
	var healthbar_thickness = 8;
	var armor_healthbar_y_top = 320; // Top of healthbars
	var healthbar_half_width = 100; // Half width of healthbars
	var armor_healthbar_y_bottom = armor_healthbar_y_top + healthbar_thickness
	// Distance between healthbars
	var hp_healthbar_y_top = armor_healthbar_y_bottom + healthbar_thickness / 2;
	var hp_healthbar_y_bottom = hp_healthbar_y_top + healthbar_thickness;

	// Attacks
	var attack_x = 620; // Starting x location
	var attack_y = 20; // Starting y location
	var attack_spacing = 36; // Space between cooldowns
	



	// Set default font
	draw_set_font(fnt_default);


// Check if ESC paused
if(global.game_esc_paused == false)
{

	#region Combat Round
	
		with(obj_arena_spawner)
		{
			if(global.spawn_triggered == true)
			{
				// Displays text stating combat round and remaining enemies
				draw_text(xx, 30, "Combat Round: " + string(global.combat_round) + "     Remaining Enemies: " + string(global.remaining_enemies));
			}else
			{
				// Displays text saying to press "J" to start the next round
				draw_text(xx, 30, "Press J to start Combat Round " + string(global.combat_round));
			}
		}

	#endregion Combat Round


	#region ** NOT COMBAT PAUSED **

		// Check if combat paused
		if(global.game_combat_paused == false)
		{

			#region HP Healthbar
				var health_percent = (obj_player_parent.active_health / obj_player_parent.max_hp) * 100;

				draw_healthbar(
				xx - healthbar_half_width,  	//The x coordinate of the left of the healthbar
				hp_healthbar_y_top,	// The y coordinate of the top of the healthbar
				xx + healthbar_half_width,	//The x coordinate of the right of the healthbar
				hp_healthbar_y_bottom,	//The y coordinate of the bottom of the healthbar
				health_percent,		//The variable which defines total health (between 0 and 100)
				c_black, //The colour of the background for the bar
				c_red,	 //The colour of the bar when at no health (0)
				c_green,	//The colour of the bar when at full health (100)
				0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
				true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
				true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
				);
		
				// Displaying health over healthbar
				draw_set_font(fnt_gui_healthbar);
				draw_set_halign(fa_center);
				draw_text(xx, hp_healthbar_y_top, "HP: " + string(obj_player_parent.active_health) + " / " + string(obj_player_parent.max_hp))
				draw_set_font(fnt_default);
		
			#endregion HP Healthbar


			#region Armor Healthbar
				var armor_percent = (obj_player_parent.active_armor / obj_player_parent.max_armor) * 100;

				draw_healthbar(
				xx - healthbar_half_width,  	//The x coordinate of the left of the healthbar
				armor_healthbar_y_top,	// The y coordinate of the top of the healthbar
				xx + healthbar_half_width,	//The x coordinate of the right of the healthbar
				armor_healthbar_y_bottom,	//The y coordinate of the bottom of the healthbar
				armor_percent,		//The variable which defines total health (between 0 and 100)
				c_black, //The colour of the background for the bar
				c_blue,	 //The colour of the bar when at no health (0)
				c_blue,	//The colour of the bar when at full health (100)
				0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
				true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
				true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
				);
		
		
				// Displaying armor over healthbar
				draw_set_font(fnt_gui_healthbar);
				draw_set_halign(fa_center);
				draw_text(xx, armor_healthbar_y_top, "Armor: " + string(obj_player_parent.active_armor) + " / " + string(obj_player_parent.max_armor))
				draw_set_font(fnt_default);
		
			#endregion Armor Healthbar


			#region Attack Cooldowns
				// Shows circle in the top right part of the screen indicating the time
				// remaining on the cooldown for each attack
		
				// Cooldown 1
				if(obj_player_parent.cooldown_1 = false != 0)
				{
					scr_draw_circ_healthbar(attack_x , attack_y, obj_player_parent.cooldown_timer_1, obj_player_parent.cooldown_time_1, c_black, 16, 0.5)
				}
				attack_y += attack_spacing;
		
				// Cooldown 2
				if(obj_player_parent.cooldown_2 = false != 0)
				{
					scr_draw_circ_healthbar(attack_x , attack_y, obj_player_parent.cooldown_timer_2, obj_player_parent.cooldown_time_2, c_black, 16, 0.5)
				}
				attack_y += attack_spacing;
		
				// Cooldown 3
				if(obj_player_parent.cooldown_3 = false != 0)
				{
					scr_draw_circ_healthbar(attack_x , attack_y, obj_player_parent.cooldown_timer_3, obj_player_parent.cooldown_time_3, c_black, 16, 0.5)
				}
				attack_y += attack_spacing;
		
				// Cooldown 4
				if(obj_player_parent.cooldown_4 = false != 0)
				{
					scr_draw_circ_healthbar(attack_x , attack_y, obj_player_parent.cooldown_timer_4, obj_player_parent.cooldown_time_4, c_black, 16, 0.5)
				}
			
			#endregion Attacks

	
			#region Player Name Text
	
				// Displays text stating player name
				draw_set_halign(fa_center);
				
				if(obj_player_parent.player_name == "Xan")
				{
					draw_text(xx, armor_healthbar_y_top - healthbar_thickness * 2, obj_player_parent.player_name + "    Bullets: " + string(obj_player_Xan.bullets) + "    Level: " + string(global.player_level))
				}else 
				{
					draw_text(xx, armor_healthbar_y_top - healthbar_thickness * 2, obj_player_parent.player_name + "    Level: " + string(global.player_level))
				}
		
			#endregion Player Name Text
	
	
			#region Selectable Characters
	
				// Initial location variables
				var char_x_start = 20;
				var char_y_start = 30;
				var char_index = 0;
				// Healthbar variables
				var select_healthbar_thickness = 6; // Thickness of healthbars
				var select_healthbar_half_width = 20; // Half width of healthbars
	
				// Draw the sprite, name, and health of all active PCs
				for(var i = 0; i < ds_list_size(global.active_pc_list); i++)
				{
					// Detecting which sprite and stats to draw
					for(var z = 1; z <= array_length(global.arr_players); z++)
					{
						if(object_get_name(global.arr_npc[z]) == global.active_pc_list[| i] || object_get_name(global.arr_players[z]) == global.active_pc_list[| i])
						{
							char_index = z;
							break;
						}
					}
		
					draw_set_halign(fa_center);
					// Draw Sprite
					var sprite_id = object_get_sprite(global.arr_npc[char_index]);
					draw_sprite(sprite_id, 0, char_x_start, char_y_start)
		
					// Separate sprite and text
					char_x_start = char_x_start + 35
					// Draw name
					draw_text(char_x_start, char_y_start - 20, global.active_pc_names_list[| i]);
		
		
				#region HP and Armor healthbars
		
						// Dependent location variables
						var select_armor_healthbar_y_top = char_y_start; // Top of healthbars
						var select_armor_healthbar_y_bottom = select_armor_healthbar_y_top + select_healthbar_thickness;
						// Distance between healthbars
						var select_hp_healthbar_y_top = select_armor_healthbar_y_bottom + select_healthbar_thickness / 2;
						var select_hp_healthbar_y_bottom = select_hp_healthbar_y_top + select_healthbar_thickness;
		
		
						// Set armor and health percent if NPC or Player
						if(instance_exists(global.arr_players[char_index]))
						{
							var select_health_percent = (obj_player_parent.active_health / obj_player_parent.max_hp) * 100;
							var select_armor_percent = (obj_player_parent.active_armor / obj_player_parent.max_armor) * 100;
						}else if(instance_exists(global.arr_npc[char_index]))
						{
							var select_health_percent = (global.arr_npc[char_index].active_health / global.arr_npc[char_index].max_hp) * 100;
							var select_armor_percent = (global.arr_npc[char_index].active_armor / global.arr_npc[char_index].max_armor) * 100;
						}else show_debug_message("NO OBJECT LOCATED FOR SELECT HEALTHBAR");
			
						#region HP Healthbar
			
							draw_healthbar(
							char_x_start - select_healthbar_half_width,  	//The x coordinate of the left of the healthbar
							select_hp_healthbar_y_top,	// The y coordinate of the top of the healthbar
							char_x_start + select_healthbar_half_width,	//The x coordinate of the right of the healthbar
							select_hp_healthbar_y_bottom,	//The y coordinate of the bottom of the healthbar
							select_health_percent,		//The variable which defines total health (between 0 and 100)
							c_black, //The colour of the background for the bar
							c_red,	 //The colour of the bar when at no health (0)
							c_green,	//The colour of the bar when at full health (100)
							0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
							true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
							true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
							);
						#endregion HP Healthbar
		
						#region Armor Healthbar
			
							draw_healthbar(
							char_x_start - select_healthbar_half_width,  	//The x coordinate of the left of the healthbar
							select_armor_healthbar_y_top,	// The y coordinate of the top of the healthbar
							char_x_start + select_healthbar_half_width,	//The x coordinate of the right of the healthbar
							select_armor_healthbar_y_bottom,	//The y coordinate of the bottom of the healthbar
							select_armor_percent,		//The variable which defines total health (between 0 and 100)
							c_black, //The colour of the background for the bar
							c_blue,	 //The colour of the bar when at no health (0)
							c_blue,	//The colour of the bar when at full health (100)
							0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
							true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
							true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
							);
						#endregion Armor Healthbar
			
					#endregion Armor and Healthbars
				
				#region Active Commands
		
					var command_sprite_y = (select_armor_healthbar_y_bottom + select_hp_healthbar_y_top) / 2
					var command_sprite_x = char_x_start + select_healthbar_half_width + 10
						
					// Active Commands for Controlled PC
					if(instance_exists(global.arr_players[char_index]))
					{
						if(obj_player_parent.command_state == "attack_state")
						{
							draw_sprite(spr_assigned_attack, 0, command_sprite_x, command_sprite_y)
						}else if(obj_player_parent.command_state == "defend_state")
						{
							draw_sprite(spr_assigned_defend, 0, command_sprite_x, command_sprite_y)
						}else if(obj_player_parent.command_state == "follow_state")
						{
							draw_sprite(spr_assigned_follow, 0, command_sprite_x, command_sprite_y)
						}else if(obj_player_parent.command_state == "move_state")
						{
							draw_sprite(spr_assigned_move_to, 0, command_sprite_x, command_sprite_y)
						}
						
						// Active Commands for NPCs
						}else if(instance_exists(global.arr_npc[char_index]))
						{
							if(global.arr_npc[char_index].command_state == "attack_state")
							{
								draw_sprite(spr_assigned_attack, 0, command_sprite_x, command_sprite_y)
							}else if(global.arr_npc[char_index].command_state == "defend_state")
							{
								draw_sprite(spr_assigned_defend, 0, command_sprite_x, command_sprite_y)
							}else if(global.arr_npc[char_index].command_state == "follow_state")
							{
								draw_sprite(spr_assigned_follow, 0, command_sprite_x, command_sprite_y)
							}else if(global.arr_npc[char_index].command_state == "move_state")
							{
								draw_sprite(spr_assigned_move_to, 0, command_sprite_x, command_sprite_y)
							}
						}else show_debug_message("NO OBJECT LOCATED FOR ASSIGNED COMMAND");
						
						
						// Reset and increment locations
						char_x_start = 20;
						char_y_start = char_y_start + 40;
						
				}
				
				#endregion Active Commands
	
			#endregion Selectable Characters
	

	#endregion ** NOT COMBAT PAUSED **


	#region ** COMBAT PAUSED **

		// Display if combat paused
	} else if(global.game_combat_paused == true)
	{
	
		#region HP Healthbar
			var health_percent = (obj_com_pause_parent.active_health / obj_com_pause_parent.max_hp) * 100;

			draw_healthbar(
			xx - healthbar_half_width,  	//The x coordinate of the left of the healthbar
			hp_healthbar_y_top,	// The y coordinate of the top of the healthbar
			xx + healthbar_half_width,	//The x coordinate of the right of the healthbar
			hp_healthbar_y_bottom,	//The y coordinate of the bottom of the healthbar
			health_percent,		//The variable which defines total health (between 0 and 100)
			c_black, //The colour of the background for the bar
			c_red,	 //The colour of the bar when at no health (0)
			c_green,	//The colour of the bar when at full health (100)
			0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
			true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
			true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
			);
		
			// Displaying health over healthbar
			draw_set_font(fnt_gui_healthbar);
			draw_set_halign(fa_center);
			draw_text(xx, hp_healthbar_y_top, "HP: " + string(obj_com_pause_parent.active_health) + " / " + string(obj_com_pause_parent.max_hp))
			draw_set_font(fnt_default);
		
		#endregion HP Healthbar


		#region Armor Healthbar
			var armor_percent = (obj_com_pause_parent.active_armor / obj_com_pause_parent.max_armor) * 100;

			draw_healthbar(
			xx - healthbar_half_width,  	//The x coordinate of the left of the healthbar
			armor_healthbar_y_top,	// The y coordinate of the top of the healthbar
			xx + healthbar_half_width,	//The x coordinate of the right of the healthbar
			armor_healthbar_y_bottom,	//The y coordinate of the bottom of the healthbar
			armor_percent,		//The variable which defines total health (between 0 and 100)
			c_black, //The colour of the background for the bar
			c_blue,	 //The colour of the bar when at no health (0)
			c_blue,	//The colour of the bar when at full health (100)
			0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
			true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
			true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
			);
		
			// Displaying armor over healthbar
			draw_set_font(fnt_gui_healthbar);
			draw_set_halign(fa_center);
			draw_text(xx, armor_healthbar_y_top, "Armor: " + string(obj_com_pause_parent.active_armor) + " / " + string(obj_com_pause_parent.max_armor))
			draw_set_font(fnt_default);
		
		#endregion Armor Healthbar
	
	
		#region Attack Cooldowns
			// Shows circle in the top right part of the screen indicating the time
			// remaining on the cooldown for each attack
		
			// Cooldown 1
			if(obj_com_pause_parent.cooldown_1 = false != 0)
			{
				scr_draw_circ_healthbar(attack_x , attack_y, obj_com_pause_parent.cooldown_timer_1, obj_com_pause_parent.cooldown_time_1, c_black, 16, 0.5)
			}
			attack_y += attack_spacing;
		
			// Cooldown 2
			if(obj_player_parent.cooldown_2 = false != 0)
			{
				scr_draw_circ_healthbar(attack_x , attack_y, obj_com_pause_parent.cooldown_timer_2, obj_com_pause_parent.cooldown_time_2, c_black, 16, 0.5)
			}		
			attack_y += attack_spacing;
		
			// Cooldown 3
			if(obj_player_parent.cooldown_3 = false != 0)
			{
				scr_draw_circ_healthbar(attack_x , attack_y, obj_com_pause_parent.cooldown_timer_3, obj_com_pause_parent.cooldown_time_3, c_black, 16, 0.5)
			}
			attack_y += attack_spacing;
		
			// Cooldown 4
			if(obj_player_parent.cooldown_4 = false != 0)
			{
				scr_draw_circ_healthbar(attack_x , attack_y, obj_com_pause_parent.cooldown_timer_4, obj_com_pause_parent.cooldown_time_4, c_black, 16, 0.5)
			}
			attack_y += attack_spacing;
	
	
		#endregion Attack Cooldowns
	
	
		#region Combat Paused Player Name Text
	
			// Displays text stating player name

			if(obj_com_pause_parent.player_name == "Xan")
			{
				draw_text(xx, armor_healthbar_y_top - healthbar_thickness * 2, obj_com_pause_parent.player_name + "    Bullets: " + string(obj_com_pause_Xan.bullets) + "    Level: " + string(global.player_level))
		
			} else // If not Xan
			{
				draw_text(xx, armor_healthbar_y_top - healthbar_thickness * 2, obj_com_pause_parent.player_name + "    Level: " + string(global.player_level))
			}
			
		#endregion Player Name Text
	
	
		#region Combat Paused Text
		
			// Displays text stating player name
			draw_set_halign(fa_center);
			draw_text(xx, 100, "Combat Paused");
		
			
		#endregion Combat Paused Text
	
	
		#region Selectable Characters
	
			// Initial location variables
			var char_x_start = 20;
			var char_y_start = 30;
			var char_index = 0;
	
			// Healthbar variables
			var select_healthbar_thickness = 6; // Thickness of healthbars
			var select_healthbar_half_width = 20; // Half width of healthbars
	
			// Draw the sprite, name, and health of all combat paused pcs
			for(var i = 0; i < ds_list_size(global.active_pc_list); i++)
			{
				// Detecting which sprite and stats to draw
				for(var z = 1; z <= array_length(global.arr_players); z++)
				{
					if(object_get_name(global.arr_npc[z]) == global.active_pc_list[| i] || object_get_name(global.arr_players[z]) == global.active_pc_list[| i])
					{
						char_index = z;
						break;
					}
				}
		
				draw_set_halign(fa_center);
				// Draw Sprite
				var sprite_id = object_get_sprite(global.arr_combat_pause[char_index]);
				draw_sprite(sprite_id, 0, char_x_start, char_y_start)
		
				// Seporate sprite and text
				char_x_start = char_x_start + 35
				// Draw name
				draw_text(char_x_start, char_y_start - 20, global.active_pc_names_list[| i]);
		
		
				#region HP and Armor healthbars
		
					// Dependent location variables
					var select_armor_healthbar_y_top = char_y_start; // Top of healthbars
					var select_armor_healthbar_y_bottom = select_armor_healthbar_y_top + select_healthbar_thickness;
					// Distance between healthbars
					var select_hp_healthbar_y_top = select_armor_healthbar_y_bottom + select_healthbar_thickness / 2;
					var select_hp_healthbar_y_bottom = select_hp_healthbar_y_top + select_healthbar_thickness;
			
						// ** ERROR HERE ** defaulting to only printing parent hp
					
					// Set armor and health percent if NPC or Player
					if(instance_exists(global.arr_combat_pause[char_index]))
					{
						var select_health_percent = (obj_com_pause_parent.active_health / obj_com_pause_parent.max_hp) * 100;
						var select_armor_percent = (obj_com_pause_parent.active_armor / obj_com_pause_parent.max_armor) * 100;
					}else if(instance_exists(global.arr_combat_pause_npc[char_index]))
					{
						var select_health_percent = (global.arr_combat_pause_npc[char_index].active_health / global.arr_combat_pause_npc[char_index].max_hp) * 100;
						var select_armor_percent = (global.arr_combat_pause_npc[char_index].active_armor / global.arr_combat_pause_npc[char_index].max_armor) * 100;
					} else
					{
						var select_health_percent = 0;
						var select_armor_percent = 0;
					}
			
			
					#region HP Healthbar
			
						draw_healthbar(
						char_x_start - select_healthbar_half_width,  	//The x coordinate of the left of the healthbar
						select_hp_healthbar_y_top,	// The y coordinate of the top of the healthbar
						char_x_start + select_healthbar_half_width,	//The x coordinate of the right of the healthbar
						select_hp_healthbar_y_bottom,	//The y coordinate of the bottom of the healthbar
						select_health_percent,		//The variable which defines total health (between 0 and 100)
						c_black, //The colour of the background for the bar
						c_red,	 //The colour of the bar when at no health (0)
						c_green,	//The colour of the bar when at full health (100)
						0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
						true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
						true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
						);
					#endregion HP Healthbar
		
					#region Armor Healthbar
			
						draw_healthbar(
						char_x_start - select_healthbar_half_width,  	//The x coordinate of the left of the healthbar
						select_armor_healthbar_y_top,	// The y coordinate of the top of the healthbar
						char_x_start + select_healthbar_half_width,	//The x coordinate of the right of the healthbar
						select_armor_healthbar_y_bottom,	//The y coordinate of the bottom of the healthbar
						select_armor_percent,		//The variable which defines total health (between 0 and 100)
						c_black, //The colour of the background for the bar
						c_blue,	 //The colour of the bar when at no health (0)
						c_blue,	//The colour of the bar when at full health (100)
						0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
						true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
						true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
						);
					#endregion Armor Healthbar
			
				#endregion Armor and Healthbars
				
				#region Selected Command
				
					var command_sprite_y = (select_armor_healthbar_y_bottom + select_hp_healthbar_y_top) / 2
					var command_sprite_x = char_x_start + select_healthbar_half_width + 10
						
					// Active Commands for Controlled PC
					if(instance_exists(global.arr_combat_pause[char_index]))
					{
						if(obj_com_pause_parent.command_state == "attack_state")
						{
							draw_sprite(spr_assigned_attack, 0, command_sprite_x, command_sprite_y)
						}else if(obj_com_pause_parent.command_state == "defend_state")
						{
							draw_sprite(spr_assigned_defend, 0, command_sprite_x, command_sprite_y)
						}else if(obj_com_pause_parent.command_state == "follow_state")
						{
							draw_sprite(spr_assigned_follow, 0, command_sprite_x, command_sprite_y)
						}else if(obj_com_pause_parent.command_state == "move_state")
						{
							draw_sprite(spr_assigned_move_to, 0, command_sprite_x, command_sprite_y)
						}
						
					// Active Commands for NPCs
					}else if(instance_exists(global.arr_combat_pause_npc[char_index]))
					{
						if(global.arr_combat_pause_npc[char_index].command_state == "attack_state")
						{
							draw_sprite(spr_assigned_attack, 0, command_sprite_x, command_sprite_y)
						}else if(global.arr_combat_pause_npc[char_index].command_state == "defend_state")
						{
							draw_sprite(spr_assigned_defend, 0, command_sprite_x, command_sprite_y)
						}else if(global.arr_combat_pause_npc[char_index].command_state == "follow_state")
						{
							draw_sprite(spr_assigned_follow, 0, command_sprite_x, command_sprite_y)
						}else if(global.arr_combat_pause_npc[char_index].command_state == "move_state")
						{
							draw_sprite(spr_assigned_move_to, 0, command_sprite_x, command_sprite_y)
						}
					}else show_debug_message("NO OBJECT LOCATED FOR ASSIGNED COMMAND");
					
				#endregion Selected Command
		
				// Reset and increment locations
				char_x_start = 20;
				char_y_start = char_y_start + 40;
			}
	
		#endregion Selectable Characters
	}

	#endregion ** COMBAT PAUSED **
	
}

