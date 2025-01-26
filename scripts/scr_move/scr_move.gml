function scr_move()
{

	// Initiate new path
	path_start(move_path, move_spd, path_action_stop, true);
	
	// Activate previous command when end of path is reached
	if(path_position = 1)
	{
		command_state = command_state_previous;
	}

}