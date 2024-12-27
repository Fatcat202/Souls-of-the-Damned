
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
		
		// Send index to attack sprite for stats
		melee_atk.index = index;

		// Cooldown
		cooldown = game_get_speed(gamespeed_fps) * global.player_stats[global.selected_char].main_atk_spd;
}