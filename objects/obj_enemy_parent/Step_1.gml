/// @description Death

// Timers
event_inherited()


// Death
if(active_health <= 0)
{
	instance_destroy();
}