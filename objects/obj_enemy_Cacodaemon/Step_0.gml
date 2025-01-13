/// @description Behavior


// Inherit obj_enemy_parent Step event
event_inherited()

// Movement
var within_range = false;
if(can_move == true)
{
	if(point_distance(x, y, target_pos_x, target_pos_y) <= 250) within_range = true;
	// Check if player is within collision range
	if(within_range == true)
	{
		// Move towards player, avoiding solid objects along the way
		mp_potential_step(target_pos_x, target_pos_y, global.enemy_stats[index].move_spd, 1);
		scr_sprite_direction(direction);
		scr_non_player_collision(speed);
		
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
	can_attack = true;
	can_move = true;
}

// Closest player or npc
//var nearest = instance_nearest(x, y, obj_ply_npc_parent)

var range = sprite_get_width(spr_standard_emelee);
if(can_attack == true && point_distance(x, y, target_pos_x, target_pos_y) <= range)
{
	// Create blast object
	var melee = instance_create_layer(x, y, "Projectiles", obj_emelee_parent);
		
		// Set direction, and image angle
		melee.direction = point_direction(x, y, target_pos_x, target_pos_y);
		melee.image_angle = melee.direction;
		melee.index = index;
		
	can_attack = false;
	can_move = false;
	atk_tick_0 = 0;
}