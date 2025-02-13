/// @description Behavior


// Inherit obj_enemy_parent Step event
event_inherited()

var within_range = false;
if(can_move == true)
{
	if(point_distance(x, y, target_pos_x, target_pos_y) <= view_range) within_range = true;
	// Check if player is within collision range
	if(within_range == true)
	{
		scr_move_to_target(view_range)
		
		// Defines that a player is being tracked for melee for some enemy abilites
		melee_player_tracked = true;

	} else
	{
		// Remains still if no player is within range
		speed = 0;
		// Defines that a player is not being tracked for melee for some enemy abilities
		melee_player_tracked = false;
	}
}

// Standard melee attack

// Check if attack cooldown is over and increment tick
atk_tick_0++
if(atk_tick_0 >= game_get_speed(gamespeed_fps) / 4)
{
	// End Cooldown
	can_attack = true;
	can_move = true;
	sprite_index = spr_vulna_passive;
}


var dmg_die_total = 2
var dmg_die_sides = 4
var	dmg_mod = 0;

// Attack if within range
var m_range = sprite_get_width(spr_standard_emelee);
if(can_attack == true && point_distance(x, y, target_pos_x, target_pos_y) <= m_range)
{
	// Create melee attack object
	var melee = instance_create_layer(x, y, "Projectiles", obj_vulna_melee);
		
		// Set direction, and image angle
		melee.direction = point_direction(x, y, target_pos_x, target_pos_y);
		melee.image_angle = melee.direction;
		melee.index = index;
		
		// Send index to attack sprite for stats
		melee.enemy_object = object_index;
		
		// Damage
		melee.damage = scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod;
		
	sprite_index = spr_vulna_attack;
	
	// Restart cooldown
	can_attack = false;
	can_move = false;
	atk_tick_0 = 0;
}