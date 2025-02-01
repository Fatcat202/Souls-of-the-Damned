
function scr_track_target_ranged(range)
{
	
	// Move away from enemy if they come within range, not using A* Grid
	range = 80;
	var within_range = false;
	if(can_move == true)
	{
		if(point_distance(x, y, target_pos_x, target_pos_y) <= range) within_range = true;
		// Check if player is within collision range
		if(within_range == true)
		{
			// Move away from target as they get closer
			mp_potential_step(-target_pos_x, -target_pos_y, move_spd, 1);
			scr_sprite_direction(direction);

		} else
		{
			// Remains still if no player is within range
			speed = 0;
		}
	}
}