/// @description Behavior

if(can_move == true)
{
	scr_track_player(250);
}else speed = 0;

// Standard melee attack

// Check if attack cooldown is over and increment tick
atk_tick++
if(atk_tick >= game_get_speed(gamespeed_fps) / 4)
{
	can_attack = true;
	can_move = true;
}




// Closest player or npc
var nearest = instance_nearest(x, y, obj_ply_npc_parent)

var range = sprite_get_width(spr_standard_emelee);
if(can_attack == true && point_distance(x, y, nearest.x, nearest.y) <= range)
{
	// Create blast object
	var melee = instance_create_layer(x, y, "Projectiles", obj_emelee_parent);
		
		// Set direction, and image angle
		melee.direction = point_direction(x, y, nearest.x, nearest.y);
		melee.image_angle = melee.direction;
		melee.index = index;
		
	can_attack = false;
	can_move = false;
	atk_tick = 0;
}