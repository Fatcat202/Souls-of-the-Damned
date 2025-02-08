
function scr_Seki_basic_attack(target_x, target_y)
{
	// Pull stats
	var attack_index = scr_find_attack_index("Seki_basic_attack")
	
	// Pull variables
	var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
	var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
	var dmg_mod = global.attack_stats[attack_index].dmg_mod
	var crit_chance = global.attack_stats[attack_index].crit_chance
	var crit_mod = global.attack_stats[attack_index].crit_mod
	
	// Shoots a single magic blast dealing damage to the target it hits
	seki_missile = instance_create_layer(x, y, "Projectiles", obj_Seki_missile); 
	seki_missile.speed = 6;
	seki_missile.direction = point_direction(x, y, target_x, target_y);
	seki_missile.image_angle = seki_missile.direction + 90;
	
	// Damage
	seki_missile.damage = scr_critical(scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod, crit_chance, crit_mod)
		
	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * .5;
	
	// States attack was used for cooldowns
	used = true
	
	

}