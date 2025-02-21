// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Nyx_dragons_breath()
{
	// A fire breath attack
	
	// Pull stats
	var attack_index = scr_find_attack_index("Nyx_dragons_breath")

	
	// Release breath attack damaging enemies in the area	
	dragons_breath = instance_create_layer(x, y, "Projectiles", obj_Nyx_dragons_breath); 
	dragons_breath.direction = point_direction(x, y, mouse_x, mouse_y);
	dragons_breath.image_angle = dragons_breath.direction;

		
	// Cooldown and reloading
	cooldown = game_get_speed(gamespeed_fps) * global.attack_stats[attack_index].cooldown;
	
	// States attack was used for cooldowns
	used = true
	
}