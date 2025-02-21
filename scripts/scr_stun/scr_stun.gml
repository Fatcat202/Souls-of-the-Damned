// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_stun(time, self_other = other)
{
	// Freeze target in place and prevent attacks
	self_other.speed = 0;
	self_other.can_move = 0;
	self_other.can_attack = false;
	
	
	// Set Stunned Timer
	self_other.stunned = true;
	self_other.stun_cooldown = 0;
	self_other.stun_cooldown_time = time;
	
	
}