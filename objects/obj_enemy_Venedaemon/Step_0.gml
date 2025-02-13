/// @description Behavior

// Inherit obj_enemy_parent Step event
event_inherited()


// Attacks

var dmg_die_total
var dmg_die_sides
var dmg_mod

if(point_distance(x, y, target_pos_x, target_pos_y) <= 80) // Melee Attack
{
	if(can_move) scr_move_to_target(80)
			
	var m_range = sprite_get_width(spr_standard_emelee);
	if(can_attack == true && point_distance(x, y, target_pos_x, target_pos_y) <= m_range)
	{
		dmg_die_total = 1
		dmg_die_sides = 10
		dmg_mod = 0;
		
		// Create melee object
		melee = instance_create_layer(x, y, "Projectiles", obj_emelee_parent);
			melee.direction = point_direction(x, y, target_pos_x, target_pos_y);
			melee.image_angle = melee.direction;
			melee.index = index;
			
			// Send index to attack sprite for stats
			melee.enemy_object = object_index;
			
			// Damage
			melee.damage = scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod;
		
		can_attack = false;
		can_move = false;
		alarm[0] = game_get_speed(gamespeed_fps) / 4;
	}
}else if(point_distance(x, y, target_pos_x, target_pos_y) <= view_range)
{
	// Fires Vene Blast every 60 - 120 frames semi-randomly


	if(can_attack)
	{
		dmg_die_total = 1
		dmg_die_sides = 10
		dmg_mod = 0;
		
		// Create blast object
		vene_blast = instance_create_layer(x, y, "Projectiles", obj_vene_blast);
			vene_blast.speed = 6;
			vene_blast.direction = point_direction(x, y, target_pos_x, target_pos_y);
			vene_blast.image_angle = vene_blast.direction;
			
			// Damage
			vene_blast.damage = scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod;
			
		// Cooldown
		can_attack = false;
		alarm[0] = game_get_speed(gamespeed_fps) * 1.5 + random(75);
	}
					
}
