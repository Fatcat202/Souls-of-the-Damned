// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Garyrager_stunning_strike()
{
	// A powerful strike that stuns the opponent and does extra damage
	
	var attack_index = scr_find_attack_index("Garyrager_stunning_strike")
	
	var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
	var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
	var dmg_mod = global.attack_stats[attack_index].dmg_mod
	var crit_chance = global.attack_stats[attack_index].crit_chance
	var crit_mod = global.attack_stats[attack_index].crit_mod
	
	// Shoots a single magic blast dealing damage to the target it hits
	Garyrager_stunning_strike = instance_create_layer(x, y, "Projectiles", obj_Garyrager_stunning_strike); 
	Garyrager_stunning_strike.direction = point_direction(x, y, target_x, target_y);
	Garyrager_stunning_strike.image_angle = Garyrager_stunning_strike.direction;
		
		
	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * 4;

	// States attack was used for cooldowns
	used = true
		
	// Damage
	Garyrager_stunning_strike.damage = scr_critical(scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod, crit_chance, crit_mod)
	
	
	// States attack was used for cooldowns
	used = true
	
}