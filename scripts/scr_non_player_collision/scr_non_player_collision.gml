// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_non_player_collision(move_spd)
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
	if(place_meeting(x, y, obj_solid))
	{
		for(var i = 0; i < 1000; i++)
		{
			// Right
			if(!place_meeting(x + i, y, obj_solid))
			{
				x += i;
				break;	
			}

			// Left
			if(!place_meeting(x - i, y, obj_solid))
			{
				x -= i;
				break;	
			}
		
			// Up
			if(!place_meeting(x, y + i, obj_solid))
			{
				y += i;
				break;	
			}
		
			// Down
			if(!place_meeting(x, y - i, obj_solid))
			{
				y -= i;
				break;	
			}
		
			// Top Right
			if(!place_meeting(x + i, y - i, obj_solid))
			{
				x += i;
				y -= i;
				break;	
			}
			
			// Top Left
			if(!place_meeting(x - i, y - i, obj_solid))
			{
				x -= i;
				y -= i;
				break;	
			}
			
			// Bottom Right
			if(!place_meeting(x + i, y + i, obj_solid))
			{
				x += i;
				y += i;
				break;	
			}
			
			// Bottom Left
			if(!place_meeting(x - i, y - i, obj_solid))
			{
				x += i;
				y -= i;
				break;	
			}
		}	
	}
}