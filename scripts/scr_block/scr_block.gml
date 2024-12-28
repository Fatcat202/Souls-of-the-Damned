// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_block()
{
	// Block damage
	if mouse_check_button(mb_left)
	{
		can_damage = false;
		blocking = true;
	}else 
	{
		can_damage = true;
		blocking = false;
		blocking_cooldown_timer = 0;
	}
		
	// Checks each frame to see if the mouse is held down
	cooldown = game_get_speed(gamespeed_fps) / 60;
}