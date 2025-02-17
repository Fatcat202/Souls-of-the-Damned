/// @description Behavior

// Inherit the parent event
event_inherited()


if(command_state == "attack_state")
{
	scr_move_to_target(move_spd);
	
}


// Make melee attack if within range of attack
var range = sprite_get_width(spr_melee_attack);
var within_range = collision_circle(x, y, range, obj_enemy_parent, false, true);
if(within_range != noone)
{
	if(can_attack == true && point_distance(x, y, target_pos_x, target_pos_y) <= range)
	{
		scr_Darien_basic_attack()
		
		// Attack Cooldown
		alarm[0] = cooldown;
		can_attack = false;
		scr_sprite_direction(point_direction(x, y, target_pos_x, target_pos_y));
	}
}