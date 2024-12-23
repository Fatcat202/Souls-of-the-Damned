
function scr_non_lethal(dmg)
{
		// Apply damage
		other.non_lethal = other.non_lethal + dmg;
		
		// Tint sprite red for 6 frames when damaged
		other.image_blend = c_red;
		other.alarm[11] = game_get_speed(gamespeed_fps) / 10;

}