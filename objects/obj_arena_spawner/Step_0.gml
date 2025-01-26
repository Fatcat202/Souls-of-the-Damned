/// @description Spawn Things


if(global.spawn_triggered == true)
{
	// Check the list for enemies that are ready to spawn and 
	// if they are the right wave/time then spawn them
	for(var i = 0; i < ds_list_size(waves); i++)
	{
		var next = ds_list_find_value(waves, i);
		if(next[COMBAT_ROUND] == global.combat_round && next[DELAY] == timer)
		{
			// Collect spawn points
			var spawn_point = next[SPAWN];
			// Create enemy
			instance_create_layer(spawn[spawn_point, 0], spawn[spawn_point, 1], "Enemies", next[TYPE]);
			global.remaining_enemies++
			show_debug_message("ds_list_size : " + string(ds_list_size(waves)));
		}	
	}
	
	// Increment spawning timer
	timer++;
	
	
	// **THIS WORKS FINE**
	
	
	// End this wave and reset spawning timer if all enemies are killed
	if(global.remaining_enemies <= 0)
	{
		// When reaching maximum waves
		if(global.combat_round >= global.max_combat_rounds)
		{
			// Increment round but not player level
			global.combat_round++;
			
			// Ensure variables are reset
			global.remaining_enemies = 0;
			timer = 0;
			global.spawn_triggered = false;
			
		}else // When a round is completed, do these steps
		{
			// Increment combat round
			global.combat_round++;
			// Increment player level
			global.player_level++;
			// Check to make sure level does not exceed 20
			if(global.player_level > 20) global.player_level = 20;
			
			// Ensure variables are reset
			global.remaining_enemies = 0;
			timer = 0;
			global.spawn_triggered = false;
		}
	}
}