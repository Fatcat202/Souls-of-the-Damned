// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Darien_loh()
{
	// Heal either self or an ally by clicking on them
	
	// Pull stats
	var attack_index = scr_find_attack_index("Darien_loh")
	
	var heal_die_total = global.attack_stats[attack_index].dmg_die_num
	var heal_die_sides = global.attack_stats[attack_index].dmg_die_sides
	var heal_mod = global.attack_stats[attack_index].dmg_mod
	
	var range = 50
	
	
	// If the mouse is over a PC when clicked
	if(position_meeting(mouse_x, mouse_y, obj_ply_npc_parent))
	{
		// Take ID of target clicked on
		var target = instance_position(mouse_x, mouse_y, obj_ply_npc_parent)
		// Check if target is within range
		if(point_distance(x, y, target.x, target.y) <= range)
		{
			// Heal target
			with(target) scr_heal(scr_roll_dice(heal_die_total, heal_die_sides) + heal_mod, 0)
		}

		// Cooldown and reloading
		cooldown = game_get_speed(gamespeed_fps) * 2;
	
		// States attack was used for cooldowns
		used = true
		
	}
}