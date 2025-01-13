
function scr_follow(){
	// Follow player if further than 100
	var range = 100 
	var within_range = collision_circle(x, y, range, obj_player_parent, true, true);
	
	move_spd = global.player_stats[index].move_spd;
	
	if(can_move == true)
	{

		// Check if player is within collision range
		if(within_range == noone)
		{
			// Move towards player, avoiding solid objects along the way
			mp_potential_step(obj_player_parent.x, obj_player_parent.y, move_spd, 1);
			scr_sprite_direction(direction);
			scr_non_player_collision(speed);

		} else
		{
			// Remains still if no player is within range
			speed = 0;

		}
	}

}