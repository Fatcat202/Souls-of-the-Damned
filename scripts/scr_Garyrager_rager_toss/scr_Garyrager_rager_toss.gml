// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Garyrager_rager_toss()
{
	// Create Rager object
	// Set speed and direction
	// Change sprite to spr_Gary
	
	
	// Pull stats
	var attack_index = scr_find_attack_index("Garyrager_rager_toss")

	
	
	// Throw Rager at an enemy
	Garyrager_rager_toss = instance_create_layer(x, y, "Projectiles", obj_Rager_tossed); 
	Garyrager_rager_toss.speed = 6;
	Garyrager_rager_toss.direction = point_direction(x, y, mouse_x, mouse_y)
	Garyrager_rager_toss.image_xscale = image_xscale

	
	Garyrager_rager_toss.range = game_get_speed(gamespeed_fps) * 2
	Garyrager_rager_toss.duration = game_get_speed(gamespeed_fps) * 2
	Garyrager_rager_toss.cooldown = game_get_speed(gamespeed_fps) * global.attack_stats[attack_index].cooldown;
	

	// Swap sprite
	object_set_sprite(object_index, spr_Gary_side)
	
	// State attack has been used
	used = true;

	// Rager object triggers DOT upon hitting enemy
	// If no enemy is hit within range, run back to Gary and check for any enemy collisions along the way
	// Enemy cannot move, takes damage, Rager changes to spr_Rager_flurrya
	// Rager runs back to Gary, running under enemies and avoiding walls
	// Change spr_Gary to spr_Garyrager
}