function scr_attack()
{
	// Clear other potential paths
	path_clear_points(follow_path);
	path_clear_points(move_path);
	
	
	// Follow player at a set range. Stop when within range

	if(can_move == true)
	{
		if(point_distance(x, y, target_pos_x, target_pos_y) > view_range)
		{
			// Update follow path
			alarm[1] = 1
	
		}else if(point_distance(x, y, target_pos_x, target_pos_y) <= view_range)
		{
			path_clear_points(attack_path);
		}
	} else path_clear_points(attack_path);

}