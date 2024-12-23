// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Alok_channel(){


// Heal all players within range 100, 6 second cooldown
var within_range = collision_circle(x, y, 100, obj_player_parent, 1, 0)
if(within_range != noone)
{
	with(obj_player_parent)
	{
		// Heal by 30
		scr_heal_player(30, 1, 0);
	}
			
	// Cooldown
	cooldown_4 = false;
	alarm[4] = game_get_speed(gamespeed_fps) * 6;
}
}