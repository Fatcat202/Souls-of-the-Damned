// Behavior

// NPCs are affected by Damage Over Time
scr_take_dot();

// Players can automatically regain armor over time
scr_regain_armor();

/*
// Follow player if further than 175

var within_range = collision_circle(x, y, 100, obj_player_parent, 1, 0);
	
if(within_range == noone)
{
	speed = global.player_stats[index].move_spd;
	direction = point_direction(x, y, obj_player_parent.x, obj_player_parent.y)
	scr_sprite_direction(direction);
	
	scr_non_player_collision(speed);

} else speed = 0;

*/


// Follow player if further than 100
var range = 100 
var within_range = collision_circle(x, y, range, obj_player_parent, true, true);
	
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