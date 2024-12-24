// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_combat_resume()
{
	
	
	// States that the game is not combat paused
	global.game_combat_paused = false;
	global.combat_pause = false;
	
	// Makes sure game speed is set to 60 to prevent issues
	game_set_speed(60, gamespeed_fps);
	
	
	instance_activate_all();
	instance_destroy(obj_combat_pause_parent);
	
	
	
}