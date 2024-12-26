// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_standard_pmelee(){
	
	// Assign sprite
	object_set_sprite(obj_pmelee_parent, spr_melee_attack);
	
	// Melee attack that does damage
		melee_atk = instance_create_layer(obj_player_parent.x + 30, obj_player_parent.y, "Projectiles", obj_pmelee_parent); 
		melee_atk.direction = 0;
		
		// Check what direction sprite is facing
		melee_atk.image_angle = melee_atk.direction;
		melee_atk.image_xscale = image_xscale;

		// Swing in direction sprite is facing
		if(melee_atk.image_xscale < 0) melee_atk.x = melee_atk.x - 40;

		
		// Cooldown
		cooldown_1 = false;
		alarm[1] = game_get_speed(gamespeed_fps) * global.player_stats[global.selected_char].main_atk_spd;
}