
function scr_part_systems_set_auto_update()
{
	
	// Pauses all particle effects while paused in or out of combat
	
	var i = 0;
	while(i < 20)
	{
		if(part_system_exists(i))
		{
			part_system_automatic_update(i, !global.game_combat_paused);
			part_system_automatic_update(i, !global.game_paused);
		}
		i++
	}
}