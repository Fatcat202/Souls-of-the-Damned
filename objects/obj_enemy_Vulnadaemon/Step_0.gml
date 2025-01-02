/// @description Behavior

if(can_move == true)
{
	// Move towards player to attack if within 400
	scr_track_player(400);
}else speed = 0 ;

var nearest = instance_nearest(x, y, obj_ply_npc_parent)

// Standard Melee
var range = sprite_get_width(spr_standard_emelee);
if(can_attack == true && point_distance(x, y, nearest.x, nearest.y) <= range)
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
}
