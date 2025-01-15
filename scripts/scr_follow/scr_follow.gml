
function scr_follow()
{
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


/*
	// Follow player if further than 100
	var range = 100 
	var within_range = collision_circle(x, y, range, obj_player_parent, true, true);
	
	var path = path_add();
	if(can_move == true && point_distance(x, y, obj_player_parent.x, obj_player_parent.y) > range)
	{
	
		mp_grid_clear_all(global.mp_grid_player)
		mp_grid_add_instances(global.mp_grid_player, obj_enemy_parent, true);
		mp_grid_add_instances(global.mp_grid_player, obj_collision_parent, true);
		
		scr_pathfinding(obj_player_parent.x, obj_player_parent.y, move_spd, global.mp_grid_player, path)	
	}else speed = 0; path_delete(path);
*/
}