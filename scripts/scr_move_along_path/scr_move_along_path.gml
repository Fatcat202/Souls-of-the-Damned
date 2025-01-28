function scr_move_along_path(grid, path, target_x, target_y, alarm_num)
{
	// Script will use mp_grid to create a path, then will use mp_potential_step
	// to actually move along the path avoiding obstacles
	
	
	if(path_exists(path))
	{
		// Create path on grid
		mp_grid_path(grid, path, x, y, target_x, target_y, true);

		// Gather next point in path
		var next_point_x = path_get_point_x(path, 1)
		var next_point_y = path_get_point_y(path, 1)
	
		// Move towards first point 
		mp_potential_step(next_point_x, next_point_y, move_spd, false)

		// Set sprite direction
		scr_sprite_direction(direction)
	
		// Clean up path
		if(path_exists(path)) path_delete(path)

		// Loop alarm 2x a second
		alarm_set(alarm_num, 30)
	}
}