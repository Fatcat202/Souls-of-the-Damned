// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Dogan_bomb()
{
	// Throw bomb which deals damage in area on impact or after fuse
	
	var attack_index = scr_find_attack_index("Dogan_bomb")
	
	var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
	var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
	var dmg_mod = global.attack_stats[attack_index].dmg_mod
	var crit_chance = global.attack_stats[attack_index].crit_chance
	
		
	Dogan_bomb = instance_create_layer(obj_player_parent.x, obj_player_parent.y, "Projectiles", obj_Dogan_bomb); 
	Dogan_bomb.speed = 6;
	Dogan_bomb.direction = point_direction(x, y, mouse_x, mouse_y);
	Dogan_bomb.image_angle = Dogan_bomb.direction;
	
	// Damage
	Dogan_bomb.damage = scr_critical(scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod , crit_chance, 1.5)
		
	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * 3;
	
	// States attack was used for cooldowns
	used = true
	
	
}