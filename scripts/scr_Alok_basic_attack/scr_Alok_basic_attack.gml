
function scr_Alok_basic_attack(){

// Melee attack that does damage
		alok_melee = instance_create_layer(obj_player_parent.x + 30, obj_player_parent.y, "Projectiles", obj_Alok_melee); 
		alok_melee.direction = 0;
		
		// Check what direction sprite is facing
		alok_melee.image_angle = alok_melee.direction;
		alok_melee.image_xscale = image_xscale;

		
		// Swing in direction sprite is facing
		if(alok_melee.image_xscale < 0) alok_melee.x = alok_melee.x - 40;
		
		// Cooldown
		cooldown_1 = false;
		alarm[1] = game_get_speed(gamespeed_fps) * 0.25;

}