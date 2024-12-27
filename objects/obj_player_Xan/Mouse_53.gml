/// @description Attacks
// You can write your code in this editor

if(self.can_attack == true)
{
	if(active_power = 1 && cooldown_1 == true) // ****
	{
		scr_Xan_basic_attack();
		
		// Set up attack cooldown
		cooldown_1 = false;
		cooldown_time_1 = cooldown;
	
	}else if(active_power = 2 && cooldown_2 == true) // ****
	{
		scr_Xan_powerful_shot();
		
		// Set up attack cooldown
		cooldown_2 = false;
		cooldown_time_2 = cooldown;
	
	}else if(active_power = 3 && cooldown_3 == true) // ****
	{
		scr_Xan_quickdraw();
		
		// Set up attack cooldown
		cooldown_3 = false;
		cooldown_time_3 = cooldown;
	
	}else if(active_power = 4 && cooldown_4 == true) // ****
	{
		scr_Xan_fly();
		
		// Set up attack cooldown
		cooldown_4 = false;
		cooldown_time_4 = cooldown;
	
	}else show_debug_message("No power assigned");
}