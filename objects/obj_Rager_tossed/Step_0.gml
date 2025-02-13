/// @description States


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
			// Stop both self and enemy in place
			speed = 0;
			enemy.can_move = false;
		
			// Place Rager onto enemy
			x = enemy.x
			y = enemy.y
		}
		
		
	break;
	
	case "returning":
		
		alarm[2] = 1;
		
		// Set object sprite
		object_set_sprite(object_index, spr_Rager_side)
		
	break;
	
}

show_debug_message("State: " + string(state))