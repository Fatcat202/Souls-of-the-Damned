
function scr_take_dot()
{
	// Tracks ticks each step
	tick++;
	
	// dot loop
	for (var i = array_length(debuffs) - 1; i >= 0; --i)
	{
		// Apply dot data
		var _debuff = debuffs[i];
		var _tick_rate = round(_debuff[dot_data.tick_rate]);
		var _can_kill = _debuff[dot_data.can_kill]
	  
		// When tick rate is reached, apply damage
		if (tick mod _tick_rate == 0) 
		{
			var _dmg = _debuff[dot_data.dmg];
			
			// Check if dot will kill. If it will, set hp to 1
			if(active_health - _dmg <= 0 && _can_kill == 0)
			{
				active_health = 1;
			}else scr_damage(_dmg);
		}
		
		// Continue loop for as long as defined with duration
		_debuff[dot_data.duration]--;
		if (_debuff[dot_data.duration] <= 0) 
		{
			array_delete(debuffs, i, 1);
		}
	}
}