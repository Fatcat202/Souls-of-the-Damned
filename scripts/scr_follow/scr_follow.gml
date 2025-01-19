
function scr_follow()
{
	// Clear other potential paths
	path_clear_points(attack_path);
	path_clear_points(move_path);

	// Follow player at a set range. Stop when within range
	var range = 100;

	if(can_move == true)
	{
		if(point_distance(x, y, obj_player_parent.x, obj_player_parent.y) > range)
		{
			// Update follow path
			alarm[2] = 1
	
		}else if(point_distance(x, y, obj_player_parent.x, obj_player_parent.y) <= range)
		{
			path_clear_points(follow_path);
		}
	} else path_clear_points(follow_path);

}