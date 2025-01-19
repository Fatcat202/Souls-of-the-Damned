
function scr_track_target_melee(move_spd)
{
	
	// Movement
	var within_range = false;
	if(can_move == true)
	{
		if(point_distance(x, y, target_pos_x, target_pos_y) <= view_range) within_range = true;
		// Check if player is within collision range
		if(within_range == true)
		{
			// Move towards player, avoiding solid objects along the way
			mp_potential_step(target_pos_x, target_pos_y, move_spd, 1);
			scr_sprite_direction(direction);
			scr_non_player_collision(speed);

		} else
		{
			// Remains still if no player is within range
			speed = 0;
		}
	}
	
	

}