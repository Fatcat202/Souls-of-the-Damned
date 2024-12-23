/// @description Attacks
// You can write your code in this editor

if(self.can_attack == true)
{


	if(active_power = 1 && cooldown_1 == true) // **SEKI MISSILE ATTACK**
	{
		scr_Seki_basic_attack();
	
	}else if(active_power = 2 && cooldown_2 == true) // **SEKI FIREBALL**
	{
		scr_Seki_fireball();
	
	}else if(active_power = 3 && cooldown_3 == true) // **SEKI LIGHTNING BOLT**
	{
		scr_Seki_lightning()
	
	}else if(active_power = 4 && cooldown_4 == true) // **SEKI TELEPORT**
	{
		scr_Seki_teleport();
	
	}else show_debug_message("No power assigned");
}