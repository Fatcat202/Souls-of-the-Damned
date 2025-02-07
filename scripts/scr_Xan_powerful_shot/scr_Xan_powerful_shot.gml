
function scr_Xan_powerful_shot(target_x, target_y){

	// Fire a powerful shot that travels through enemies and staggers them
	
	// Pull stats
	attack_index = scr_find_attack_index("Xan_powerful_shot")

	// Pull variables
	var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
	var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
	var dmg_mod = global.attack_stats[attack_index].dmg_mod
	var crit_chance = global.attack_stats[attack_index].crit_chance
	
	// Checks if Xan's gun has enough ammo
	if(bullets >= 2)
	{
		
		Xan_powerful_shot = instance_create_layer(x, y, "Projectiles", obj_Xan_powerful_shot); 
		Xan_powerful_shot.speed = 20;
		Xan_powerful_shot.direction = point_direction(x, y, target_x, target_y);
		Xan_powerful_shot.image_angle = Xan_powerful_shot.direction;
		
		// Damage
		Xan_powerful_shot.damage = scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod;
		
		// Cooldown and reloading
		cooldown = game_get_speed(gamespeed_fps) * 5;
		reload_timer = 0;
		bullets -= 2;
		
		
		// Knockback
		can_control = false;
		can_move = false;
		speed = 4
		direction = point_direction(x, y, -mouse_x, -mouse_y)

		
		// Knockback timer initialising
		knocked_back = true;
		knockback_cooldown_time = game_get_speed(gamespeed_fps) * 0.2;
		knockback_cooldown_timer = 0;
		
		// States attack was used for cooldowns
		used = true
	}
}