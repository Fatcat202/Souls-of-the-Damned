/// @description Death and Timers


#region Non-Lethal
var non_lethal_tick_rate = 30
non_lethal_tick++;

// Remove 5 non-lethal damage every 30 frames
if (non_lethal_tick mod non_lethal_tick_rate == 0) 
{	
	non_lethal = non_lethal - 5;
	// Check if non-lethal will knock unconsious
	if(active_health <= non_lethal)
	{
		// TODO Set up script for unconsious condition
	}
}

#endregion Non-Lethal


#region Death

if(active_health < 0 || active_health = 0)
{
	game_restart();
}

#endregion Death


#region Timers

// Timers for attacks 1-4 cooldowns

if(cooldown_1 = false) cooldown_timer_1++;
if(cooldown_2 = false) cooldown_timer_2++;
if(cooldown_3 = false) cooldown_timer_3++;
if(cooldown_4 = false) cooldown_timer_4++;

#endregion Timers
