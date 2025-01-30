
function scr_standard_pmelee(obj_melee, dmg_die_total, dmg_die_sides, dmg_mod)
{
	// Standard melee attack with checks for conditions

	melee_atk = instance_create_layer(x, y, "Projectiles", obj_melee); 
		melee_atk.direction = 0;
		// Check what direction sprite is facing
		melee_atk.image_angle = melee_atk.direction;
		melee_atk.image_xscale = image_xscale;
		// Swing in direction sprite is facing
		if(melee_atk.image_xscale < 0) melee_atk.x = melee_atk.x;
		// Send index to attack sprite for stats
		melee_atk.index = index;
		
		// Conditions
		melee_atk.poison_coating = poison_coating;
		melee_atk.can_crit = can_crit;
		
		//damage
		melee_atk.damage = scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod;
		

	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * global.player_stats[global.selected_char].main_atk_spd;
}