
function scr_standard_pmelee(obj_melee, dmg_die_total, dmg_die_sides, dmg_mod, crit_chance)
{
	// Standard melee attack with checks for conditions

	melee_atk = instance_create_layer(x, y, "Projectiles", obj_melee);
		// Determine direction based on if attacker is contolled by player
		if(can_control)
		{
			melee_atk.direction = point_direction(x, y, mouse_x, mouse_y)
		} else
		{
			melee_atk.direction = direction;
			melee_atk.image_xscale = image_xscale;
		}
		// Check what direction sprite is facing
		melee_atk.image_angle = melee_atk.direction;
		
		// Send index to attack sprite for stats
		melee_atk.pc_object = object_index;
		
		
		// Conditions
		melee_atk.poison_coating = poison_coating;
		melee_atk.sneak_attack = sneak_attack
		
		// Crit chance
		var damage = scr_critical(scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod, crit_chance, 1.5)
		// Damage
		melee_atk.damage = damage
		

	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * global.player_stats[global.selected_char].main_atk_spd;
}