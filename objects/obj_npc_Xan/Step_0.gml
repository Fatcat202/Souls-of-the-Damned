/// @description Behavior

// Inherit the parent event
event_inherited()


if(command_state == "attack_state")
{
	scr_track_target_ranged(move_spd);
	
}


// Make melee attack if within range of attack
var range = 200;
var within_range = collision_circle(x, y, range, obj_enemy_parent, false, true);
if(within_range != noone)
{
	if(can_attack == true && point_distance(x, y, target_pos_x, target_pos_y) <= range)
	{
		scr_Xan_basic_attack(target_pos_x, target_pos_y)
		
		// Attack Cooldown
		alarm[0] = game_get_speed(gamespeed_fps) * global.player_stats[index].main_atk_spd;
		can_attack = false;
		scr_sprite_direction(point_direction(x, y, target_pos_x, target_pos_y));
	}
}