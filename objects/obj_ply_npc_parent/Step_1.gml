/// @description Death

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


if(active_health < 0 || active_health = 0)
{
	game_restart();
}