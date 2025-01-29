/// @description Behavior

// Inherit obj_enemy_parent Step event
event_inherited()


// Attacks

if(point_distance(x, y, target_pos_x, target_pos_y) <= 80) // Melee Attack
{
	if(can_move) scr_move_to_target(80)
			
	var m_range = sprite_get_width(spr_standard_emelee);
	if(can_attack == true && point_distance(x, y, target_pos_x, target_pos_y) <= m_range)
	{
		// Create blast object
		melee = instance_create_layer(x, y, "Projectiles", obj_emelee_parent);
			melee.direction = point_direction(x, y, target_pos_x, target_pos_y);
			melee.image_angle = melee.direction;
			melee.index = index;
		
		can_attack = false;
		can_move = false;
		alarm[0] = game_get_speed(gamespeed_fps) / 4;
	}
}else if(point_distance(x, y, target_pos_x, target_pos_y) <= view_range)
{
	// Fires Vene Blast every 60 - 120 frames semi-randomly


	if(can_attack)
	{
		// Create blast object
		vene_blast = instance_create_layer(x, y, "Projectiles", obj_vene_blast);
			vene_blast.speed = 6;
			vene_blast.direction = point_direction(x, y, target_pos_x, target_pos_y);
			vene_blast.image_angle = vene_blast.direction;
			
		// Cooldown
		can_attack = false;
		alarm[0] = game_get_speed(gamespeed_fps) * 1.5 + random(75);
	}
					
}
