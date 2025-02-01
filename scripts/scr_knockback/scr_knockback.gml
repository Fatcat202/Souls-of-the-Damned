
function scr_knockback(length)
{
	
	// Knockback
	other.can_control = false;
	other.can_move = false;
	other.speed = 4
	other.direction = point_direction(x ,y, other.x, other.y)
		
	// I Frames Set
	other.can_damage = false;
		
	// Knockback timer initialising
	other.knocked_back = true;
	other.knockback_cooldown_time = game_get_speed(gamespeed_fps) * length;
	other.knockback_cooldown_timer = 0;
}