// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Nyx_scales()
{
	// Give target increased armor
	
	// Pull stats
	var attack_index = scr_find_attack_index("Nyx_scales")
	
	var armor_die_total = global.attack_stats[attack_index].dmg_die_num
	var armor_die_sides = global.attack_stats[attack_index].dmg_die_sides
	var armor_mod = global.attack_stats[attack_index].dmg_mod
	var armor_duration = game_get_speed(gamespeed_fps) * global.attack_stats[attack_index].duration
	
	var range = 50
	var bonus_armor_tick = 0;
	
	
	// If the mouse is over a PC when clicked
	if(position_meeting(mouse_x, mouse_y, obj_ply_npc_parent))
	{
		// Take ID of target clicked on
		var target = instance_position(mouse_x, mouse_y, obj_ply_npc_parent)
		// Check if target is within range
		if(point_distance(x, y, target.x, target.y) <= range)
		{
			// Heal target
			with(target)
			{
				// Increase active armor by dice roll, overheal over max
				active_armor += scr_roll_dice(armor_die_total, armor_die_sides) + armor_mod
				can_regain_armor = true;
				
				// Set overheal armor duration timer
				bonus_armor = true;
				bonus_armor_duration_time = armor_duration;
				bonus_armor_duration_timer = 0;

			}
		}

		// Cooldown and reloading
		cooldown = game_get_speed(gamespeed_fps) * global.attack_stats[attack_index].cooldown;
	
		// States attack was used for cooldowns
		used = true
		
	}
}