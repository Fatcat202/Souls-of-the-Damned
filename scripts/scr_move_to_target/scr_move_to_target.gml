
function scr_move_to_target(range)
{
	// Move towards tracked target to attack using A* Grid
	
	
	// ** MINIMUM RANGE IS 100 **
	range = 250;
	
	if(can_move == true)
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
	/*
	
	if(can_move == true)
	{
		if(point_distance(x, y, target_pos_x, target_pos_y) <= 99 && point_distance(x, y, target_pos_x, target_pos_y) >= 32)
		{
			if(path_exists(attack_path)) path_delete(attack_path)
			attack_path = path_add()
			
			mp_potential_step(target_pos_x, target_pos_y, move_spd, false)
			scr_non_player_collision()
		
		} else if(point_distance(x, y, target_pos_x, target_pos_y) > 99 && point_distance(x, y, target_pos_x, target_pos_y) <= range)
		{
			// Update attack path
			alarm[1] = 1;
			
	
		}else
		{
			if(path_exists(attack_path)) path_delete(attack_path);
		}
	}

}