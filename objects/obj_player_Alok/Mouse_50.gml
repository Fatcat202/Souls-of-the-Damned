/// @description Attacks

// Check if attacks area allowed
if(can_attack == true)
{	
	// Attacks
	if(active_power == 1 && cooldown_1 == true && !place_meeting(mouse_x, mouse_y, obj_gui_button_parent)) // **Melee Attack**
	{
		// Attack placed here
		scr_Alok_basic_attack();
		
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
		scr_Alok_shield();
		
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
		scr_Alok_javalin();
		
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
		scr_Alok_channel();
		
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