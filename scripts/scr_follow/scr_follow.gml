
function scr_follow()
{
	// Clear other potential paths
	if(path_exists(attack_path)) path_delete(attack_path);
	if(path_exists(move_path)) path_delete(move_path);

	// Follow player at a set range. Stop when within range
	var range = 100;

	if(can_move == true)
	{
		if(point_distance(x, y, obj_player_parent.x, obj_player_parent.y) > range)
		{
			// Update attack path
			if(!path_exists(follow_path)) follow_path = path_add()
			
			// Update follow path
			alarm[2] = 1;
	
		}else if(point_distance(x, y, obj_player_parent.x, obj_player_parent.y) <= range)
		{
			if(path_exists(follow_path)) path_delete(follow_path);
		}
	} else if(path_exists(follow_path)) path_delete(follow_path);

}