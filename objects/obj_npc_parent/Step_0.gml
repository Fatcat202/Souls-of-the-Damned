// Behavior

// NPCs are affected by Damage Over Time
scr_take_dot();

// Players can automatically regain armor over time
scr_regain_armor();


// Follow player if further than 175

var within_range = collision_circle(x, y, 175, obj_player_parent, 1, 0);
	
if(within_range == noone)
{
	speed = global.player_stats[npc_index].move_spd;
	direction = point_direction(x, y, obj_player_parent.x, obj_player_parent.y)
	scr_sprite_direction(direction);

} else speed = 0;