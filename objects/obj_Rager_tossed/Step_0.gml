/// @description States
// Pull stats
var attack_index = scr_find_attack_index("Garyrager_rager_toss")
var duration = global.attack_stats[attack_index].duration;

switch (state)
{
	
	case "thrown":
		
		// Stats initiated when creating object in script
		// Travel towards enemy and check for collisions with enemies or walls
		speed = move_spd
		
	break;
	
	case "attacking":
		
		if(!instance_exists(enemy))
		{
			state = "returning"
		}else
		{
			// Place Rager onto enemy
			x = enemy.x
			y = enemy.y
			
			// Stop both self and enemy in place
			speed = 0;
			with(enemy)
			{
				scr_stun(game_get_speed(gamespeed_fps) * duration);
			}
		}
		
		
	break;
	
	case "returning":
		// Return path
		alarm[2] = 1;
		
		// Set object sprite
		sprite_index = spr_Rager_side;
		
		// Set can attack cooldown
		can_attack = false;
		alarm[3] = (game_get_speed(gamespeed_fps) * duration) * 0.25
		
	break;
	
}

show_debug_message("State: " + string(state))