/// @description Update Sprite Index


// Check if combat paused
if(global.game_combat_paused == true)
{
	if(obj_com_pause_parent.active_power == 3)
	{
		// Set sprite frame to frame 1
		image_speed = 0;
		image_index = 1;
	}
} else // If not combat paused
{
	if(obj_player_parent.active_power == 3)
	{
		// Set sprite frame to frame 1
		image_speed = 0;
		image_index = 1;
	}
}