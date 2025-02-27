/// @description Insert description here
// You can write your code in this editor


if(other.can_damage)
{

	scr_damage(damage);
	
	var enemy = other.id

	// Stun for 120 frames
	with(enemy)
	{
		scr_stun(game_get_speed(gamespeed_fps) * 2)
	}
	
	scr_knockback(kb_percent)
}
