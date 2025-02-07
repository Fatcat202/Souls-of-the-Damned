
function scr_Xan_basic_attack(target_x, target_y)
{
	// Hit first enemy in a line and deal damage.
	// Only so many shots, must reload through timer. Timer is reset when fireing again.
	
	// Pull stats
	attack_index = scr_find_attack_index("Xan_basic_attack")
	
	// Pull variables
	var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
	var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
	var dmg_mod = global.attack_stats[attack_index].dmg_mod
	var crit_chance = global.attack_stats[attack_index].crit_chance
	
	if(bullets != 0)
	{
		// Shoots a single magic blast dealing damage to the target it hits
		Xan_bullet = instance_create_layer(x, y, "Projectiles", obj_bullet); 
		Xan_bullet.speed = 20;
		Xan_bullet.direction = point_direction(x, y, target_x, target_y);
		Xan_bullet.image_angle = Xan_bullet.direction;
		
		// Cooldown and reloading
		cooldown = game_get_speed(gamespeed_fps) / 4;
		reload_timer = 0;
		bullets--;
		
		// States attack was used for cooldowns
		used = true
		
		// Damage
		Xan_bullet.damage = scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod;
	}
	
}