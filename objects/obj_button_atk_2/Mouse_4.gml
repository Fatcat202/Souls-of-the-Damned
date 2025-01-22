/// @description Insert description here
// You can write your code in this editor

// Check if combat paused
if(global.game_combat_paused == true)
{
	if(mouse_check_button_pressed(mb_left))
	{
		obj_com_pause_parent.active_power = 2;
	}
} else // If not combat paused
{
	if(mouse_check_button_pressed(mb_left))
	{
		obj_player_parent.active_power = 2;
	}
}