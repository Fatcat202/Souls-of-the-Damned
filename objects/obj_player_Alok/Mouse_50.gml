/// @description Attacks

// Check if attacks area allowed
if(can_attack == true)
{	
	// Attacks
	if(active_power == 1 && cooldown_1 == true) // **Melee Attack**
	{
		// Attack placed here
		scr_Alok_basic_attack();
		
		// Set up attack cooldown
		cooldown_1 = false;
		cooldown_time_1 = cooldown;
	
	}else if(active_power == 2 && cooldown_2 == true) // **Shield**
	{
		scr_Alok_shield();
		
		// Set up attack cooldown
		cooldown_2 = false;
		cooldown_time_2 = cooldown;
	
	}else if(active_power == 3 && cooldown_3 == true) // **Divine Javelin**
	{
		scr_Alok_javalin();
		
		// Set up attack cooldown
		cooldown_3 = false;
		cooldown_time_3 = cooldown;
		
	}else if(active_power == 4 && cooldown_4 == true) // **Channel**
	{
		scr_Alok_channel();
		
		// Set up attack cooldown
		cooldown_4 = false;
		cooldown_time_4 = cooldown;
	
	}
}