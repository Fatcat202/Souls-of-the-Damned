/// @description Start next round

if(global.spawn_triggered == false)
{
	// Trigger spawning
	global.spawn_triggered = true;
/*
	// Work out number of waves and enemies per wave
	for(var i = 0; i < ds_list_size(waves); i++)
	{
		var this_entry = ds_list_find_value(waves, i);
		if (this_entry[COMBAT_ROUND] > i)
		{
			global.remaining_enemies = 0;
		}
		// Increase number of enemies
		global.remaining_enemies++;
		
	}
	*/
}else return;
