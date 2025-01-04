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
var attack_x = 610; // Starting x location
var attack_y = 20; // Starting y location
var attack_spacing = 25; // Space between cooldowns


// Set default font
draw_set_font(fnt_default);



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


	#region Attacks
		// Shows circle in the top right part of the screen indicating the time
		// remaining on the cooldown for each attack
		
		// Cooldown 1
		scr_draw_circ_healthbar(attack_x, attack_y, obj_player_parent.cooldown_timer_1, obj_player_parent.cooldown_time_1, c_maroon, 10, 1)
		attack_y += attack_spacing;
		
		// Cooldown 2
		scr_draw_circ_healthbar(attack_x, attack_y, obj_player_parent.cooldown_timer_2, obj_player_parent.cooldown_time_2, c_maroon, 10, 1)
		attack_y += attack_spacing;
		
		// Cooldown 3
		scr_draw_circ_healthbar(attack_x, attack_y, obj_player_parent.cooldown_timer_3, obj_player_parent.cooldown_time_3, c_maroon, 10, 1)
		attack_y += attack_spacing;
		
		// Cooldown 4
		scr_draw_circ_healthbar(attack_x, attack_y, obj_player_parent.cooldown_timer_4, obj_player_parent.cooldown_time_4, c_maroon, 10, 1)
			
	#endregion Attacks
	
	
	#region Player Name Text
	
		// Displays text stating player name
		draw_set_halign(fa_center);
		draw_text(xx, armor_healthbar_y_top - healthbar_thickness * 2, global.arr_players[global.char_index].player_name + "    Level: " + string(global.player_level))
		
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
	for(var i = 0; i < array_length(global.arr_active_pcs); i++)
	{
		// Detecting which sprite and stats to draw
		for(var z = 1; z <= 8; z++)
		{
			if(object_get_name(global.arr_npc[z]) == global.arr_active_pcs[i] || object_get_name(global.arr_players[z]) == global.arr_active_pcs[i])
			{
				char_index = z;
				break;
			}
		}
		
		draw_set_halign(fa_center);
		// Draw Sprite
		var sprite_id = object_get_sprite(global.arr_npc[char_index]);
		draw_sprite(sprite_id, 0, char_x_start, char_y_start)
		
		// Seporate sprite and text
		char_x_start = char_x_start + 35
		// Draw name
		draw_text(char_x_start, char_y_start - 20, global.arr_active_pcs_names[i]);
		
		
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
		
			// Reset and increment locations
			char_x_start = 20;
			char_y_start = char_y_start + 40;
		}
	
	#endregion Selectable Characters
	

#endregion ** NOT COMBAT PAUSED **


#region ** COMBAT PAUSED **

	// Display if combat paused
} else if(global.game_combat_paused == true)
{
	
	#region HP Healthbar
		var health_percent = (global.arr_combat_pause[global.selected_char].active_health / global.arr_combat_pause[global.selected_char].max_hp) * 100;

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
		draw_text(xx, hp_healthbar_y_top, "HP: " + string(global.arr_combat_pause[global.selected_char].active_health) + " / " + string(global.arr_combat_pause[global.selected_char].max_hp))
		draw_set_font(fnt_default);
		
	#endregion HP Healthbar


	#region Armor Healthbar
		var armor_percent = (global.arr_combat_pause[global.selected_char].active_armor / global.arr_combat_pause[global.selected_char].max_armor) * 100;

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
		draw_text(xx, armor_healthbar_y_top, "Armor: " + string(global.arr_combat_pause[global.selected_char].active_armor) + " / " + string(global.arr_combat_pause[global.selected_char].max_armor))
		draw_set_font(fnt_default);
		
	#endregion Armor Healthbar
	
	
	#region Attacks TODO
	
		
	
	
	#endregion Attacks
	
	
	#region Player Name text
	
		// Displays text stating player name
		draw_set_halign(fa_center);
		draw_text(xx, armor_healthbar_y_top - healthbar_thickness * 2, global.arr_combat_pause[global.selected_char].player_name + "    Level: " + string(global.player_level));

			
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
	
	// Draw the sprite, name, and health of all active PCs
	for(var i = 0; i < array_length(global.arr_active_pcs); i++)
	{
		// Detecting which sprite and stats to draw
		for(var z = 1; z <= 8; z++)
		{
			if(object_get_name(global.arr_npc[z]) == global.arr_active_pcs[i] || object_get_name(global.arr_players[z]) == global.arr_active_pcs[i])
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
		draw_text(char_x_start, char_y_start - 20, global.arr_active_pcs_names[i]);
		
		
		#region HP and Armor healthbars
		
			// Dependent location variables
			var select_armor_healthbar_y_top = char_y_start; // Top of healthbars
			var select_armor_healthbar_y_bottom = select_armor_healthbar_y_top + select_healthbar_thickness;
			// Distance between healthbars
			var select_hp_healthbar_y_top = select_armor_healthbar_y_bottom + select_healthbar_thickness / 2;
			var select_hp_healthbar_y_bottom = select_hp_healthbar_y_top + select_healthbar_thickness;
		
		
			// Set armor and health percent if NPC or Player
			if(instance_exists(global.arr_combat_pause[char_index]))
			{
				var select_health_percent = (global.arr_combat_pause[char_index].active_health / global.arr_combat_pause[char_index].max_hp) * 100;
				var select_armor_percent = (global.arr_combat_pause[char_index].active_armor / global.arr_combat_pause[char_index].max_armor) * 100;
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
		
			// Reset and increment locations
			char_x_start = 20;
			char_y_start = char_y_start + 40;
		}
	
	#endregion Selectable Characters
	
	
	#region Commands
	
	
		var start_y = 610;
		var start_x = 330;

		
		
	#endregion Commands
	
	

}

#endregion ** COMBAT PAUSED **

