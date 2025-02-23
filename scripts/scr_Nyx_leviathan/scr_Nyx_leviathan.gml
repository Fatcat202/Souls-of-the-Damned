// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Nyx_leviathan()
{
	var range = 150;
	if(point_distance(x, y, mouse_x, mouse_y <= range))
	{
		// Pull stats
		var attack_index = scr_find_attack_index("Nyx_leviathan")
	
		// Pull variables
		var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
		var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
		var dmg_mod = global.attack_stats[attack_index].dmg_mod
		var crit_chance = global.attack_stats[attack_index].crit_chance
		var crit_mod = global.attack_stats[attack_index].crit_mod
	
		// Shoots a single magic blast dealing damage to the target it hits
		leviathan = instance_create_layer(mouse_x, mouse_y, "Players", obj_leviathan); 

		// Cooldown
		cooldown = game_get_speed(gamespeed_fps) * global.attack_stats[attack_index].cooldown;
	
		// States attack was used for cooldowns
		used = true
	}
}