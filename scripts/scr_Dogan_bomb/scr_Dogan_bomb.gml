// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Dogan_bomb()
{
	// Shoots fireball that explodes on impact and does damage in an area
	
	var dmg_die_total = 1
	var dmg_die_sides = 6
	var dmg_mod = 0;
		
	Dogan_bomb = instance_create_layer(obj_player_parent.x, obj_player_parent.y, "Projectiles", obj_Dogan_bomb); 
	Dogan_bomb.speed = 6;
	Dogan_bomb.direction = point_direction(x, y, mouse_x, mouse_y);
	Dogan_bomb.image_angle = Dogan_bomb.direction;
	
	// Damage
	Dogan_bomb.damage = scr_roll_dice(dmg_die_total, dmg_die_sides) + dmg_mod;
		
	// Cooldown
	cooldown = game_get_speed(gamespeed_fps) * 3;
	
	// States attack was used for cooldowns
	used = true
	
	
}