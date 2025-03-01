// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_activate_fastheal(time, ticks, healing)
{
	// Activate fastheal using fastheal timer
	
	// Activate fastheal
	fastheal_active = true;
	// Set fastheal timer and duration between ticks
	fastheal_timer = 0;
	fastheal_time = time;
	// Set number of ticks
	fastheal_max_ticks = ticks;
	fastheal_ticks = 0;
	// Set amount of healing per tick
	fastheal_healing = healing;
}