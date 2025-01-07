
function scr_track_player(range)
{
	// ** USED FOR ENEMIES **

	var nearest, within_range = false;
	
	
	// Check if closest target is dead, if they are, select the next closest
	// ** NOT WORKING **
	for(var i = 0; i < global.total_active_pcs; i++)
	{
		nearest = scr_instance_nth_nearest(x, y, obj_ply_npc_parent, 0)
		show_debug_message("nearest: " + string(nearest))
		if(nearest.is_dead == true)
		{
			nearest = scr_instance_nth_nearest(x, y, obj_ply_npc_parent, i + 1)
			show_debug_message("nearest.is_dead: " + string(nearest.is_dead))
			break;
		}
	}
	// ** NOT WORKING **
	// ** WORKS FINE **
	if(can_move == true)
	{
		if(point_distance(x, y, nearest.x, nearest.y) <= range) within_range = true;
		// Check if player is within collision range
		if(within_range == true)
		{
			// Move towards player, avoiding solid objects along the way
			mp_potential_step(nearest.x, nearest.y, global.enemy_stats[index].move_spd, 1);
			scr_sprite_direction(direction);
			scr_non_player_collision(speed);


		} else
		{
			// Remains still if no player is within range
			speed = 0;

		}
		
		return nearest;
	}
}
