
function scr_track_player(range)
{
	// ** USED FOR ENEMIES **

	var nearest = instance_nearest(x, y, obj_ply_npc_parent)
	var within_range = collision_circle(x, y, range, nearest, true, true);
	
	if(can_move == true)
	{

		// Check if player is within collision range
		if(within_range != noone)
		{
			// Move towards player, avoiding solid objects along the way
			mp_potential_step(nearest.x, nearest.y, global.enemy_stats[index].move_spd, 1);
			scr_sprite_direction(direction);
			scr_non_player_collision(speed);
		
			// Defines that a player is being tracked for melee for some enemy abilites
			melee_player_tracked = true;

		} else
		{
			// Remains still if no player is within range
			speed = 0;
			// Defines that a player is not being tracked for melee for some enemy abilities
			melee_player_tracked = false;
		}
	}
}