/// @description Death and Timers
// You can write your code in this editor

// Inherit the parent event
event_inherited();


// Reload Timer

// Check if gun is fully loaded
if(bullets < max_bullets)
{
	// Increment cooldown each frame
	reload_timer++;
	
	// If reload time has been reached
	if(reload_timer >= reload_time)
	{
		// Reset cooldown once time has been reached
		bullets++;
		reload_timer = 0;
	}
}


// Xan_fly reset
if(Xan_fly_active == true)
{
	// Increment cooldown each frame
	Xan_fly_timer++;
	
	// If ability length has been reached
	if(Xan_fly_timer >= Xan_fly_end)
	{
		// Reset changed abilities
		move_spd = global.player_stats[index].move_spd;
		is_flyer = false;
		Xan_fly_active = false;
		Xan_fly_timer = 0;
	}
}