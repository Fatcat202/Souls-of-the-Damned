
function scr_Seki_basic_attack(target_x, target_y)
{
	// Pull stats
	attack_index = scr_find_attack_index("Seki_basic_attack")
	
	var dmg_die_total = 1
	var dmg_die_sides = 8
	var dmg_mod = 0;
	
	// Shoots a single magic blast dealing damage to the target it hits
	seki_missile = instance_create_layer(x, y, "Projectiles", obj_Seki_missile); 
	seki_missile.speed = 6;
	seki_missile.direction = point_direction(x, y, target_x, target_y);
	seki_missile.image_angle = seki_missile.direction + 90;
	
	// Damage
	seki_missile.damage = scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod;
		
	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * .5;
	
	// States attack was used for cooldowns
	used = true
	
	

}