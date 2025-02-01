/// @description Insert description here

event_inherited()

// Check if combat paused
if(global.game_combat_paused == true)
{

	obj_com_pause_parent.active_power = 1;
	
} else // If not combat paused
{

	obj_player_parent.active_power = 1;
	
}
