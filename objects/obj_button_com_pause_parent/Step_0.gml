/// @description Destroy

// Inherit the parent event
event_inherited();


// Destroy if not combat paused
if(global.game_combat_paused == false)
{
	instance_destroy()
}
