// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_stun(time)
{
	// Freeze target in place and prevent attacks
	speed = 0;
	can_move = false;
	can_attack = false;
	
	if(path_exists(attack_path)) path_delete(attack_path)
	
	// Set Stunned Timer
	stunned = true;
	stun_cooldown_timer = 0;
	stun_cooldown_time = time;
	
	
}