// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_poison_coating(cooldown_time)
{
	// Allows for poison debuff ability, applying DOT to attacks
	
	poison_coating = true;
	
	cooldown = game_get_speed(gamespeed_fps) * cooldown_time;
	poison_coating_time = cooldown / 2;
	poison_coating_timer = 0;
}