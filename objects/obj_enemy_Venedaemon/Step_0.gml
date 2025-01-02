/// @description Behavior

if(can_move)
{

// Closest player or npc
var nearest = instance_nearest(x, y, obj_ply_npc_parent)

// If within 120, move towards player and attack
scr_track_player(120);




// If within blast range, then stop movement and shoot vene blast at player/npc
var within_blast_range = collision_circle(x, y, 300, obj_ply_npc_parent, true, true);
if(within_blast_range != noone)
{
	// Will not continue if within melee range
	if(melee_player_tracked == false)
	{
		// Stops all movement
		speed = 0;
	
		if(can_attack == true)
		{// Fires Vene Blast every 60 - 120 frames semi-randomly
		
			// Create blast object
			var vene_blast = instance_create_layer(x + 30, y + 30, "Projectiles", obj_vene_blast);
		
			// Set speed, direction, and image angle
			vene_blast.speed = 6;
			vene_blast.direction = point_direction(x, y, nearest.x, nearest.y);
			vene_blast.image_angle = vene_blast.direction;
			
			// Cooldown
			can_attack = false;
			alarm[1] = game_get_speed(gamespeed_fps) + random(60);
		}
	
		// Point in direction of enemy while shooting
		direction = point_direction(x, y, nearest.x, nearest.y);
		scr_sprite_direction(direction);
	}else
	{
		
		// Standard Melee
		var range = sprite_get_width(spr_standard_emelee);
		if(can_attack == true && point_distance(x, y, nearest.x, nearest.y) <= range)
		{
			// Create blast object
			var melee = instance_create_layer(x, y, "Projectiles", obj_emelee_parent);
		
				// Set direction, and image angle
				melee.direction = point_direction(x, y, nearest.x, nearest.y);
				melee.image_angle = melee.direction;
				melee.index = index;
	
			alarm[1] = game_get_speed(gamespeed_fps) / 4;
			can_attack = false;
		}
	}

} else speed = 0;

} else speed = 0;