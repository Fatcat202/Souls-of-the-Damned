// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_knockback(length)
{
	
	if(other.can_damage == true)
	{
		// Knockback
		other.can_control = false;
		other.speed = 4
		other.direction = point_direction(x ,y, other.x, other.y)
		
		// I Frames Set
		other.can_damage = false;
	
		// Duration
		other.alarm[5] = game_get_speed(gamespeed_fps) * length;
	}
	if(!place_free(x - global.collision_distance, y) || !place_free(x + global.collision_distance, y) ||
		!place_free(x, y - global.collision_distance) || !place_free(x, y + global.collision_distance))
	{
		speed = 0;	
	}
}