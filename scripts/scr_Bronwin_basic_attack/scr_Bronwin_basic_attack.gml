// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bronwin_basic_attack()
{
	// Pull stats
	var attack_index = scr_find_attack_index("Bronwin_basic_attack")
	
	var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
	var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
	var dmg_mod = global.attack_stats[attack_index].dmg_mod
	var crit_chance = global.attack_stats[attack_index].crit_chance
	
	// Shoots single arrow that does damage	
	Bronwin_arrow = instance_create_layer(obj_player_parent.x, obj_player_parent.y, "Projectiles", obj_arrow); 
	Bronwin_arrow.speed = 15;
	Bronwin_arrow.direction = point_direction(x, y, mouse_x, mouse_y);
	Bronwin_arrow.image_angle = Bronwin_arrow.direction;
	
	// Damage
	Bronwin_arrow.damage = scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod;
		
	// Cooldown and reloading
	cooldown = game_get_speed(gamespeed_fps) / global.player_stats[index].main_atk_spd;
	
	// States attack was used for cooldowns
	used = true
	
	
}