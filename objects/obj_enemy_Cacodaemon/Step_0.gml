/// @description Behavior


// Inherit obj_enemy_parent Step event
event_inherited()



// Movement
var within_range = false;
if(can_move == true)
{
	if(point_distance(x, y, target_pos_x, target_pos_y) <= view_range) within_range = true;
	// Check if player is within collision range
	if(within_range == true)
	{
		// Move towards player avoiding solid objects along the way
		scr_move_to_target(view_range)
		
		
	} else // If not within range
	{
		// Remove Path
		if(path_exists(attack_path)) path_delete(attack_path)

	}
}

// Standard melee attack

// Check if attack cooldown is over and increment tick
atk_tick_0++
if(atk_tick_0 >= game_get_speed(gamespeed_fps) / 4)
{
	can_attack = true;
	can_move = true;
}

// Closest player or npc

var dmg_die_total = global.enemy_stats[index].dice_melee_atk_num
var dmg_die_sides = global.global.enemy_stats[index].dice_melee_atk_sides
var dmg_mod = global.enemy_stats[index].dice_melee_atk_mod

var range = sprite_get_width(spr_standard_emelee);
if(can_attack == true && point_distance(x, y, target_pos_x, target_pos_y) <= range)
{
	// Create attack object
	var melee = instance_create_layer(x, y, "Projectiles", obj_emelee_parent);
		
		// Set direction, and image angle
		melee.direction = point_direction(x, y, target_pos_x, target_pos_y);
		melee.image_angle = melee.direction;
		melee.index = index;
		
		// Send index to attack sprite for stats
		melee.enemy_object = object_index;
		
		// Damage
		melee.damage = scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod;
		
	can_attack = false;
	can_move = false;
	atk_tick_0 = 0;
}