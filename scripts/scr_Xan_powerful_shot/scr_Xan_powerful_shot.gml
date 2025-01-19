
function scr_Xan_powerful_shot(target_x, target_y){

	// Fire a powerful shot that travels through enemies and staggers them, dealing a large amount of damage
	
	// Checks if Xan's gun is entirely empty
	if(bullets != 0)
	{
		
		Xan_powerful_shot = instance_create_layer(x, y, "Projectiles", obj_Xan_powerful_shot); 
		Xan_powerful_shot.speed = 20;
		Xan_powerful_shot.direction = point_direction(x, y, target_x, target_y);
		Xan_powerful_shot.image_angle = Xan_powerful_shot.direction;
		
		// Cooldown and reloading
		cooldown = game_get_speed(gamespeed_fps) * 5;
		reload_timer = 0;
		bullets--;
	}
}