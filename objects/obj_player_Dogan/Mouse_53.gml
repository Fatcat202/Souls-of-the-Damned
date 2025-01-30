/// @description Attacks


if(self.can_attack == true)
{
	if(active_power = 1 && cooldown_1 == true && !place_meeting(mouse_x, mouse_y, obj_gui_button_parent)) // ****
	{
		scr_Dogan_basic_attack()
		
		// Checks if attack was used
		if(used = true)
		{
			// Set up attack cooldown
			cooldown_1 = false;
			cooldown_time_1 = cooldown;
			
			// Reset used
			used = false;
		}
	
	}else if(active_power = 2 && cooldown_2 == true && !place_meeting(mouse_x, mouse_y, obj_gui_button_parent)) // ****
	{
		scr_Dogan_poison();
		
		// Checks if attack was used
		if(used = true)
		{
			// Set up attack cooldown
			cooldown_2 = false;
			cooldown_time_2 = cooldown;
			
			// Reset used
			used = false;
		}
	
	}else if(active_power = 3 && cooldown_3 == true && !place_meeting(mouse_x, mouse_y, obj_gui_button_parent)) // ****
	{
		scr_Dogan_bomb();
		
		// Checks if attack was used
		if(used = true)
		{
			// Set up attack cooldown
			cooldown_3 = false;
			cooldown_time_3 = cooldown;
			
			// Reset used
			used = false;
		}
	
	}else if(active_power = 4 && cooldown_4 == true && !place_meeting(mouse_x, mouse_y, obj_gui_button_parent)) // ****
	{
		scr_Dogan_sneak_attack()
		
		// Checks if attack was used
		if(used = true)
		{
			// Set up attack cooldown
			cooldown_4 = false;
			cooldown_time_4 = cooldown;
			
			// Reset used
			used = false;
		}
	
	}else show_debug_message("No power assigned");
}