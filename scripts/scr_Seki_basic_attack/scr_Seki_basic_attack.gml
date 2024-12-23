
function scr_Seki_basic_attack()
{
	// Shoots a single magic blast dealing damage to the target it hits
	seki_missile = instance_create_layer(obj_player_parent.x, obj_player_parent.y, "Projectiles", obj_Seki_missile); 
	seki_missile.speed = 6;
	seki_missile.direction = point_direction(x, y, mouse_x, mouse_y);
	seki_missile.image_angle = seki_missile.direction + 90;
		
	// Cooldown
	cooldown_1 = false;
	alarm[1] = game_get_speed(gamespeed_fps) / 4;

}