
function scr_take_dot()
{
	// Tracks ticks each step
	tick++;
	
	// Check if there is armor, terminate if there is
	if(active_armor <= 0) return;
	
	// dot loop
	for (var i = array_length(debuffs) - 1; i >= 0; --i)
	{
		// Apply dot data
		var _debuff = debuffs[i];
		var _tick_rate = round(_debuff[dot_data.tick_rate]);
		var _can_kill = _debuff[dot_data.can_kill]
	  
		// When tick rate is reached, apply damage
		if(tick >= _tick_rate) 
		{
			var _dmg = _debuff[dot_data.dmg];
			
			// Check if DOT is about to reduce HP below 0
			if(active_health - _dmg <= 0)
			{
				// Check if DOT can kill. If not, set HP to 1 and end
				if(_can_kill == 0)
				{
					active_health = 1;
					return;
					
				// Set HP to -1 and end if it can kill
				}else active_health = -1 return;
			
			
			}else
			{
				// Do damage normally if not about to kill
				active_health -= _dmg;
				image_blend = c_red;
				alarm[11] = game_get_speed(gamespeed_fps) / 10;
			}
		}
		
		// Continue loop for as long as defined with duration
		_debuff[dot_data.duration]--;
		if (_debuff[dot_data.duration] <= 0) 
		{
			array_delete(debuffs, i, 1);
		}
	}
}