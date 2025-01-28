function scr_non_player_collision()
{
	var collision_speed = move_spd + global.collision_distance;
	
	// X direction
	if(!place_free (x - collision_speed, y)) // Left
	{
		direction += x;
	}else if(!place_free (x + collision_speed, y)) // Right
	{
		direction -= y;
	}
	// Y direction
	if(!place_free (x, y - collision_speed)) // Up
	{
		direction += y;
	}else if(!place_free (x, y + collision_speed)) // Down
	{
		direction -= y;
	}
	
	// Force objects outside of other objects if stuck or overlaping
	if(place_meeting(x, y, obj_collision_parent) && place_meeting(x, y, obj_enemy_parent) && place_meeting(x, y, obj_player_parent) && place_meeting(x, y, obj_npc_parent))
	{
		for(var i = 0; i < 1000; i++)
		{
			// Right
			if(!place_meeting(x + i, y, obj_collision_parent) && !place_meeting(x + i, y, obj_enemy_parent) && !place_meeting(x + i, y, obj_player_parent) && !place_meeting(x + i, y, obj_npc_parent))
			{
				x += i;
				break;	
			}

			// Left
			if(!place_meeting(x - i, y, obj_collision_parent) && !place_meeting(x - i, y, obj_enemy_parent) && !place_meeting(x - i, y, obj_player_parent) && !place_meeting(x - i, y, obj_npc_parent))
			{
				x -= i;
				break;	
			}
		
			// Up
			if(!place_meeting(x, y + i, obj_collision_parent) && !place_meeting(x, y + i, obj_enemy_parent) && !place_meeting(x, y + i, obj_player_parent) && !place_meeting(x, y + i, obj_npc_parent))
			{
				y += i;
				break;	
			}
		
			// Down
			if(!place_meeting(x, y - i, obj_collision_parent) && !place_meeting(x, y - i, obj_enemy_parent) && !place_meeting(x, y - i, obj_player_parent) && !place_meeting(x, y - i, obj_npc_parent))
			{
				y -= i;
				break;	
			}
		
			// Top Right
			if(!place_meeting(x + i, y + i, obj_collision_parent) && !place_meeting(x + i, y + i, obj_enemy_parent) && !place_meeting(x + i, y + i, obj_player_parent) && !place_meeting(x + i, y + i, obj_npc_parent))
			{
				x += i;
				y += i;
				break;	
			}
			
			// Top Left
			if(!place_meeting(x - i, y + i, obj_collision_parent) && !place_meeting(x - i, y + i, obj_enemy_parent) && !place_meeting(x - i, y + i, obj_player_parent) && !place_meeting(x - i, y + i, obj_npc_parent))
			{
				x -= i;
				y += i;
				break;	
			}
			
			// Bottom Right
			if(!place_meeting(x + i, y - i, obj_collision_parent) && !place_meeting(x + i, y - i, obj_enemy_parent) && !place_meeting(x + i, y - i, obj_player_parent) && !place_meeting(x + i, y - i, obj_npc_parent))
			{
				x += i;
				y -= i;
				break;	
			}
			
			// Bottom Left
			if(!place_meeting(x - i, y - i, obj_collision_parent) && !place_meeting(x - i, y - i, obj_enemy_parent) && !place_meeting(x - i, y - i, obj_player_parent) && !place_meeting(x - i, y - i, obj_npc_parent))
			{
				x -= i;
				y -= i;
				break;	
			}
		}	
	}
}