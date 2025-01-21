
function scr_track_target_melee(range)
{
	// Move towards tracked target to attack using A* Grid
	range = 250;

	if(can_move == true)
	{
		if(point_distance(x, y, target_pos_x, target_pos_y) <= range)
		{
			// Update attack path
			alarm[1] = 1
	
		}else if(point_distance(x, y, target_pos_x, target_pos_y) > range)
		{
			path_clear_points(attack_path);
		}
	} else path_clear_points(attack_path);

}