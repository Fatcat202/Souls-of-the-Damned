
function scr_Seki_lightning()
{
	// Pull stats
	var attack_index = scr_find_attack_index("Seki_lightning")

	// Pull variables
	var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
	var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
	var dmg_mod = global.attack_stats[attack_index].dmg_mod
	var crit_chance = global.attack_stats[attack_index].crit_chance
	var crit_mod = global.attack_stats[attack_index].crit_mod

	// Shoots projectile that hurts all enemies it touches
		
	seki_lightning = instance_create_layer(obj_player_parent.x, obj_player_parent.y, "Projectiles", obj_Seki_lightning);
	seki_lightning.speed = 12;
	seki_lightning.direction = point_direction(x, y, mouse_x, mouse_y);
	seki_lightning.image_angle = seki_lightning.direction;
	
	// Damage
	seki_lightning.damage = scr_critical(scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod, crit_chance, crit_mod)
		
	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * 1.5;
		
		
	// States attack was used for cooldowns
	used = true
		
	

}