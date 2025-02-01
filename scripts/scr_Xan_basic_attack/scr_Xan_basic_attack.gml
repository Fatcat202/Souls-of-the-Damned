
function scr_Xan_basic_attack(target_x, target_y)
{
	// Hit first enemy in a line and deal damage.
	// Only so many shots, must reload through timer. Timer is reset when fireing again.
	
	var dmg_die_total = 1
	var dmg_die_sides = 10
	var dmg_mod = 0;
	
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