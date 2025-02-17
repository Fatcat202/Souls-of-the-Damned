/// @description Attacks

// Check if attacks area allowed
if(can_attack == true)
{	
	// Attacks
	if(active_power == 1 && cooldown_1 == true && !place_meeting(mouse_x, mouse_y, obj_gui_button_parent)) // **Melee Attack**
	{
		var attack = 1;
		
		var attack_name = global.player_attacks_active[# global.selected_char, attack]
		var attack_index = scr_find_attack_index(attack_name)
		script_execute(global.attack_stats[attack_index].scr)
		
		// Debug
		//show_debug_message("attack_name: " + string(attack_name))
		//show_debug_message("attack_index: " + string(attack_index))
		//show_debug_message("global.attack_stats[attack_index].scr(): " + string(global.attack_stats[attack_index].scr))
		
		
		// Checks if attack was used
		if(used = true)
		{
			// Set up attack cooldown
			cooldown_1 = false;
			cooldown_time_1 = cooldown;
			
			// Reset used
			used = false;
		}
	
	}else if(active_power == 2 && cooldown_2 == true && !place_meeting(mouse_x, mouse_y, obj_gui_button_parent)) // **Shield**
	{
		var attack = 2;
		
		var attack_name = global.player_attacks_active[# global.selected_char, attack]
		var attack_index = scr_find_attack_index(attack_name)
		script_execute(global.attack_stats[attack_index].scr)
		
		// Checks if attack was used
		if(used = true)
		{
			// Set up attack cooldown
			cooldown_2 = false;
			cooldown_time_2 = cooldown;
			
			// Reset used
			used = false;
		}
	
	}else if(active_power == 3 && cooldown_3 == true && !place_meeting(mouse_x, mouse_y, obj_gui_button_parent)) // **Divine Javelin**
	{
		var attack = 3;
		
		var attack_name = global.player_attacks_active[# global.selected_char, attack]
		var attack_index = scr_find_attack_index(attack_name)
		script_execute(global.attack_stats[attack_index].scr)
		
		// Checks if attack was used
		if(used = true)
		{
			// Set up attack cooldown
			cooldown_3 = false;
			cooldown_time_3 = cooldown;
			
			// Reset used
			used = false;
		}
		
	}else if(active_power == 4 && cooldown_4 == true && !place_meeting(mouse_x, mouse_y, obj_gui_button_parent)) // **Channel**
	{
		var attack = 4;
		
		var attack_name = global.player_attacks_active[# global.selected_char, attack]
		var attack_index = scr_find_attack_index(attack_name)
		script_execute(global.attack_stats[attack_index].scr)
		
		// Checks if attack was used
		if(used = true)
		{
			// Set up attack cooldown
			cooldown_4 = false;
			cooldown_time_4 = cooldown;
			
			// Reset used
			used = false;
		}
	
	}
}