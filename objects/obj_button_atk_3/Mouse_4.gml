/// @description Insert description here
// You can write your code in this editor

event_inherited()

// Check if combat paused
if(global.game_combat_paused == true)
{

	obj_com_pause_parent.active_power = 3;
	
} else // If not combat paused
{

	obj_player_parent.active_power = 3;
	
}


