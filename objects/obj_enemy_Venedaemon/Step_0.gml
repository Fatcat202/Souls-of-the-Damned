/// @description Behavior

if(can_move)
{
var within_blast_range = collision_circle(x, y, 300, obj_player_parent, true, true);

// If within 120, move towards player and attack
scr_track_player(120);

if(within_blast_range != noone)
{
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
			vene_blast.direction = point_direction(x, y, obj_player_parent.x, obj_player_parent.y);
			vene_blast.image_angle = vene_blast.direction;
			
			// Cooldown
			can_attack = false;
			alarm[1] = game_get_speed(gamespeed_fps) + random(60);
		}
	
		// Point in direction of enemy while shooting
		direction = point_direction(x, y, obj_player_parent.x, obj_player_parent.y);
		scr_sprite_direction(direction);
	}
} else speed = 0;

} else speed = 0;