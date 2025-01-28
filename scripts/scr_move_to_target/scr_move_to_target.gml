
function scr_move_to_target(range)
{
	// Move towards tracked target to attack using A* Grid
	
	
	// ** MINIMUM RANGE IS 100 **
	range = 250;

	if(can_move == true)
	{
		if(point_distance(x, y, target_pos_x, target_pos_y) <= 99 && point_distance(x, y, target_pos_x, target_pos_y) >= 32)
		{
			attack_path = path_add()
			mp_potential_path(attack_path, target_pos_x, target_pos_y, move_spd, 1, false)
		
		} else if(point_distance(x, y, target_pos_x, target_pos_y) > 99 && point_distance(x, y, target_pos_x, target_pos_y) <= range)
		{
			// Update attack path
			alarm[1] = 1;
	
		}else
		{
			path_delete(attack_path);
		}
	}

}