
function scr_Xan_quickdraw()
{
	// Set variables
	var range = 150;
	var within_range = collision_circle(x, y, range, obj_enemy_parent, 1, 1);
	var shots = 6;
	
	// Xan's x and y cords
	var xx = x;
	var yy = y;
	
	// Check if enemy is within range at all
	if(within_range != noone)
	{
		
		with(obj_enemy_parent)
		{
			if(point_direction(xx, yy, x, y) <= range && shots != 0)
			{
				// Shoots a bullet from Xan's revolver at 6 enemies within range
				Xan_bullet = instance_create_layer(xx, yy, "Projectiles", obj_bullet); 
				Xan_bullet.speed = 20;
				Xan_bullet.direction = point_direction(xx, yy, x, y);
				Xan_bullet.image_angle = Xan_bullet.direction;
				shots--;
			}
		}
		
		// Cooldown
		if(shots != 6)
		{
			cooldown = game_get_speed(gamespeed_fps) * 12;
		} else cooldown = 0;
		
		// States attack was used for cooldowns
		used = true
	}
}