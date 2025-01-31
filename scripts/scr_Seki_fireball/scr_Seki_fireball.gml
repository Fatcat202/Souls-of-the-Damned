
function scr_Seki_fireball()
{
	var dmg_die_total = 1
	var dmg_die_sides = 6
	var dmg_mod = 0;
	
	// Shoots fireball that explodes on impact and does damage in an area
		
	seki_fireball = instance_create_layer(obj_player_parent.x, obj_player_parent.y, "Projectiles", obj_Seki_fireball); 
	seki_fireball.speed = 6;
	seki_fireball.direction = point_direction(x, y, mouse_x, mouse_y);
	seki_fireball.image_angle = seki_fireball.direction;
	
	// Damage
	seki_fireball.damage = scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod;
		
	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * 3;
	
	// States attack was used for cooldowns
	used = true
	
	

}