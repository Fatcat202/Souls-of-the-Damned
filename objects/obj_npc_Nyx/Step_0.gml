/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Move towards enemy for melee attack if tracked and attack state active
if(command_state == "attack_state")
{
	scr_track_enemy_melee();
	
	// Make melee attack if within range of attack
	var range = sprite_get_width(spr_melee_attack);
	var within_range = collision_circle(x, y, range, obj_enemy_parent, false, true);
	if(within_range != noone)
	{
		if(can_attack == true && point_distance(x, y, target_pos_x, target_pos_y) <= range)
		{
			scr_Nyx_basic_attack()
		
			// Attack Cooldown
			alarm[0] = game_get_speed(gamespeed_fps) * global.player_stats[index].main_atk_spd;
			can_attack = false;
		}
	}
}

