// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Alok_channel()
{
	var range = 100;
	// Heal all players within range 100, 6 second cooldown
	var within_range = collision_circle(x, y, range, obj_player_parent, 1, 0)
	if(within_range != noone)
	{
		// Heal self
		with(obj_player_parent)
		{
			// Heal by 30
			scr_heal(30, 0);
		}
	
		// Heal allies
		with(obj_npc_parent)
		{
			if(point_distance(x, y, obj_player_parent.x, obj_player_parent.y) <= range)
			{
				// Heal by 30
				scr_heal(30, 0);
			}
		}
		// Cooldown
		cooldown = game_get_speed(gamespeed_fps) * 6;
	}
}