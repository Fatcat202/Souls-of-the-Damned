
function scr_Seki_lightning()
{
	// Pull stats
	attack_index = scr_find_attack_index("Seki_lightning")
	
	
	var dmg_die_total = 1
	var dmg_die_sides = 8
	var dmg_mod = 0;

	// Shoots projectile that hurts all enemies it touches
		
	seki_lightning = instance_create_layer(obj_player_parent.x, obj_player_parent.y, "Projectiles", obj_Seki_lightning);
	seki_lightning.speed = 12;
	seki_lightning.direction = point_direction(x, y, mouse_x, mouse_y);
	seki_lightning.image_angle = seki_lightning.direction;
	
	// Damage
	seki_lightning.damage = scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod;
		
	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * 1.5;
		
		
	// States attack was used for cooldowns
	used = true
		
	

}