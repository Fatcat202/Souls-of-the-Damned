// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bronwin_basic_attack()
{
	// Shoots single arrow that does damage	
	Bronwin_arrow = instance_create_layer(obj_player_parent.x, obj_player_parent.y, "Projectiles", obj_arrow); 
	Bronwin_arrow.speed = 15;
	Bronwin_arrow.direction = point_direction(x, y, mouse_x, mouse_y);
	Bronwin_arrow.image_angle = Bronwin_arrow.direction;
		
	// Cooldown and reloading
	cooldown = game_get_speed(gamespeed_fps) / global.player_stats[index].main_atk_spd;
}