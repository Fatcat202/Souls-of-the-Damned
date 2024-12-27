// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_stun(time)
{
	// Freeze target in place and prevent attacks
	other.speed = 0;
	other.can_move = 0;
	other.can_attack = false;
	
	
	// Set Stunned Timer
	other.stunned = true;
	other.stun_cooldown = 0;
	other.stun_cooldown_time = time;
	
	
}