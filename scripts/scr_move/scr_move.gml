function scr_move()
{
	
	// Clear all follow path points if there are any
	path_delete(follow_path)
	path_delete(attack_path);
	
	// Clear move path point if there are any, then create a new one
	if(path_exists(move_path)) path_delete(move_path)
	move_path = path_add();
	
	// Update player grid to show positions of enemies and walls
	mp_grid_clear_all(global.mp_grid_player)
	mp_grid_add_instances(global.mp_grid_player, obj_enemy_parent, true);
	mp_grid_add_instances(global.mp_grid_player, obj_collision_parent, true);
	// Create path on grid
	mp_grid_path(global.mp_grid_player, move_path, x, y, target_move_x, target_move_y, true);

	// Initiate new path
	path_start(move_path, move_spd, path_action_stop, true);
	
	// Activate previous command when end of path is reached
	if(path_position = 1)
	{
		command_state = command_state_previous;
	}

}