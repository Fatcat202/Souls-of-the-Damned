/// @description Ricochet Arrows

// Pull stats
var attack_index = scr_find_attack_index("Bronwin_ricochet_shot")
	
var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
var dmg_mod = global.attack_stats[attack_index].dmg_mod
var crit_chance = global.attack_stats[attack_index].crit_chance
var crit_mod = global.attack_stats[attack_index].crit_mod

if(shots < total_shots)
{
	
	// Shoots single arrow that does damage	
	Bronwin_arrow = instance_create_layer(x, y, "Projectiles", obj_ricochet_arrow); 
	Bronwin_arrow.speed = 15;
	Bronwin_arrow.direction = point_direction(x, y, mouse_x, mouse_y);
	Bronwin_arrow.image_angle = Bronwin_arrow.direction;
	Bronwin_arrow.imbue_attack = imbue_attack;
	
	// Damage
	Bronwin_arrow.damage = scr_critical(scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod, crit_chance, crit_mod)
	
	// Increment number of shots made
	shots++
}

alarm_set(1, game_get_speed(gamespeed_fps) * 0.34)