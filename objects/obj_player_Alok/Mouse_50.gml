/// @description Attacks

// Check if attacks area allowed
if(self.can_attack == true)
{	
	// Attacks
	if(active_power == 1 && cooldown_1) // **Melee Attack**
	{
		scr_Alok_basic_attack();
	
	}else if(active_power == 2) // **Shield**
	{
		scr_Alok_shield();
	
	}else if(active_power == 3 && cooldown_3 == true) // **Divine Javelin**
	{
		scr_Alok_javalin();
		
	}else if(active_power == 4 && cooldown_4 == true) // **Channel**
	{
		scr_Alok_channel();
	
	}
}