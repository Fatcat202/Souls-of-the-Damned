
function scr_move_to_target(range)
{
	// Move towards tracked target to attack using A* Grid
	
	
	// ** MINIMUM RANGE IS 100 **
	range = 250;
	
	if(can_move)
	{
		if(point_distance(x, y, target_pos_x, target_pos_y) <= range)
		{
			// Update attack path
			if(!path_exists(attack_path)) attack_path = path_add()
			
			alarm[1] = 1;
		} else
		{
			// Delete path if out of range
			if(path_exists(attack_path)) path_delete(attack_path);
		}
	
	}
	
	
}
