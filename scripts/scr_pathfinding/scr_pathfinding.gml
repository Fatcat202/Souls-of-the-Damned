function scr_pathfinding(target_x, target_y, move_spd, grid, path)
{
	// Used for movement towards a target using A*
	// Must provide x, y, movement speed, and the grid to use
	
	mp_grid_path(grid, path, x, y, target_x, target_y, true)
	
	path_start(path, move_spd, path_action_stop, false)

}