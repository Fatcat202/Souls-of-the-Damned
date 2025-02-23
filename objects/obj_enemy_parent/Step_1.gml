/// @description Death

// Timers
event_inherited()


// Death
if(active_health <= 0)
{
	// Add gold reward for killing enemy
	global.party_gold += global.enemy_stats[index].gold;
	
	instance_destroy();
	
	// Tick down spawner when in the arena to allow for the round to end

	if(global.spawn_triggered == true)
	{
		global.remaining_enemies--;
		show_debug_message("Enemy Killed");
	}
}
