/// @description Behavior
var nearest;
if(can_move == true)
{
	// Move towards player to attack if within 400
	nearest = scr_track_player(400);
}else speed = 0 ;



// Standard Melee
var range = sprite_get_width(spr_standard_emelee);
if(can_attack == true && point_distance(x, y, nearest.x, nearest.y) <= range && nearest.is_dead == false)
{
	// Create blast object
	var melee = instance_create_layer(x, y, "Projectiles", obj_emelee_parent);
		
		// Set direction, and image angle
		melee.direction = point_direction(x, y, nearest.x, nearest.y);
		melee.image_angle = melee.direction;
		melee.index = index;
		
	
	// Set sprite to attack sprite
	sprite_index = spr_vulna_attack;
	
	alarm[1] = game_get_speed(gamespeed_fps) / 2;
	can_attack = false;
	can_move = false;
}
