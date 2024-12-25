// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_non_player_collision(move_spd)
{
	var collision_speed = move_spd + global.collision_distance;
	
	// X direction
	if(!place_free (x - collision_speed, y)) // Left
	{
		direction += x;
	}else if(!place_free (x + collision_speed, y)) // Right
	{
		direction -= y;
	}
	// Y direction
	if(!place_free (x, y - collision_speed)) // Up
	{
		direction += y;
	}else if(!place_free (x, y + collision_speed)) // Down
	{
		direction -= y;
	}
}