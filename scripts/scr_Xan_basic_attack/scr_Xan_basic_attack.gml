
function scr_Xan_basic_attack()
{
	// Hit first enemy in a line and deal damage.
	// Only so many shots, must reload through timer. Timer is reset when fireing again.
	
	if(bullets != 0)
	{
		// Shoots a single magic blast dealing damage to the target it hits
		Xan_bullet = instance_create_layer(obj_player_parent.x, obj_player_parent.y, "Projectiles", obj_bullet); 
		Xan_bullet.speed = 20;
		Xan_bullet.direction = point_direction(x, y, mouse_x, mouse_y);
		Xan_bullet.image_angle = Xan_bullet.direction;
		
		// Cooldown and reloading
		cooldown = game_get_speed(gamespeed_fps) / 4;
		reload_timer = 0;
		bullets--;
	}
	
}