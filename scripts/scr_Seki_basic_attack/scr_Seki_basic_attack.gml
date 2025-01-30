
function scr_Seki_basic_attack(target_x, target_y)
{
	// Shoots a single magic blast dealing damage to the target it hits
	seki_missile = instance_create_layer(x, y, "Projectiles", obj_Seki_missile); 
	seki_missile.speed = 6;
	seki_missile.direction = point_direction(x, y, target_x, target_y);
	seki_missile.image_angle = seki_missile.direction + 90;
		
	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) / 4;
	
	// States attack was used for cooldowns
	used = true

}