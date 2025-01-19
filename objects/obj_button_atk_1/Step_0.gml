/// @description Action When Clicked

// Check if combat paused
if(global.game_combat_paused == true)
{
	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id))
	{
		obj_com_pause_parent.active_power = 1;
	}
} else // If not combat paused
{
	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id))
	{
		obj_player_parent.active_power = 1;
	}
}