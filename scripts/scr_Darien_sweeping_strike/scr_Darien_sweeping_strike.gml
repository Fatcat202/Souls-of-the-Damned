// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Darien_sweeping_strike()
{
	// Make one attack, covering a much larger area than normal
	
	var attack_index = scr_find_attack_index("Darien_sweeping_strike")
	
	var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
	var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
	var dmg_mod = global.attack_stats[attack_index].dmg_mod
	var crit_chance = global.attack_stats[attack_index].crit_chance
	var crit_mod = global.attack_stats[attack_index].crit_mod
	
	// Shoots a single magic blast dealing damage to the target it hits
	Darien_sweeping_strike = instance_create_layer(x, y, "Projectiles", obj_Darien_sweeping_strike); 
	Darien_sweeping_strike.direction = point_direction(x, y, target_x, target_y);
	Darien_sweeping_strike.image_angle = Darien_sweeping_strike.direction;
	
	
	// Increase size of attack
	Darien_sweeping_strike.image_yscale = 2
	Darien_sweeping_strike.image_yscale = 2
	
	// Damage
	Darien_sweeping_strike.damage = scr_critical(scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod, crit_chance, crit_mod)

	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * 4;

	// States attack was used for cooldowns
	used = true
		
	
}