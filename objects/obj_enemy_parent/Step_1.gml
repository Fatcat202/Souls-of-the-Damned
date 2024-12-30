/// @description Death

// Timers
event_inherited()


// Death
if(active_health <= 0)
{
	instance_destroy();
	
	// Tick down spawner when in the arena to allow for the round to end

	if(global.spawn_triggered == true)
	{
		global.remaining_enemies--;
		show_debug_message("Enemy Killed");
	}
}
