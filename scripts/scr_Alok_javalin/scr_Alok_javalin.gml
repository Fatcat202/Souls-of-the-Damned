
function scr_Alok_javalin()
{
	
	// Pull stats
	attack_index = scr_find_attack_index("Alok_javalin")
	
	var dmg_die_total = 2
	var dmg_die_sides = 8
	var dmg_mod = 0;

	// Projectile that hits enemy and does damage
	alok_javelin = instance_create_layer(obj_player_parent.x, obj_player_parent.y, "Projectiles", obj_Alok_javelin);
	alok_javelin.speed = 6
	alok_javelin.direction = point_direction(x, y, mouse_x, mouse_y);
	alok_javelin.image_angle = alok_javelin.direction;
	
	// Damage
	alok_javelin.damage = scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod;
		
	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * 1.5;
	
	// States attack was used for cooldowns
	used = true
	
	
}