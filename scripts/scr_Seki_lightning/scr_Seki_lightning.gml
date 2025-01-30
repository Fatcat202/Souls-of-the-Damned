
function scr_Seki_lightning(){


// Shoots projectile that hurts all enemies it touches
		
		seki_lightning = instance_create_layer(obj_player_parent.x, obj_player_parent.y, "Projectiles", obj_Seki_lightning);
		seki_lightning.speed = 12;
		seki_lightning.direction = point_direction(x, y, mouse_x, mouse_y);
		seki_lightning.image_angle = seki_lightning.direction;
		
		// Cooldown
		cooldown = game_get_speed(gamespeed_fps) * 1.5;
		
		
		// States attack was used for cooldowns
		used = true

}