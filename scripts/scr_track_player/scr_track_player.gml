
function scr_track_player(range){

	var player_within_range = collision_circle(x, y, range, obj_player_parent, true, true);
	var npc_within_range = collision_circle(x, y, range, obj_npc_parent, true, true);
	
	// Check if player is within collision range
	if(player_within_range != noone)
	{
		// Move towards player 
		speed = global.enemy_stats[index].move_spd;
		direction = point_direction(x, y, obj_player_parent.x, obj_player_parent.y);
		scr_sprite_direction(direction);
		
		scr_non_player_collision(speed);
		
		// Defines that a player is being tracked for melee
		melee_player_tracked = true;
	} else if(npc_within_range != noone)
	{
		// Move towards npc
		speed = global.enemy_stats[index].move_spd;
		direction = point_direction(x, y, obj_npc_parent.x, obj_npc_parent.y);
		scr_sprite_direction(direction);
		scr_non_player_collision(speed);
		
		// Defines that a player is being tracked for melee
		melee_player_tracked = true;
		
	}else
	{
		// Remains still if no player is within range
		speed = 0;
		// Defines that a player is not being tracked for melee
		melee_player_tracked = false;
	}
}