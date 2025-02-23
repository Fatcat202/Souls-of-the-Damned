/// @description Follow Pathfinding Update


// Target pos for following player
var target_follow_x
var target_follow_y

if(instance_exists(obj_player_Nyx))
{
	target_follow_x = obj_player_Nyx.x;
	target_follow_y = obj_player_Nyx.y;
}else if(instance_exists(obj_npc_Nyx))
{
	target_follow_x = obj_npc_Nyx.x;
	target_follow_y = obj_npc_Nyx.y;
}


// Update player grid to show positions of enemies and walls
mp_grid_clear_all(global.mp_grid_player)
mp_grid_add_instances(global.mp_grid_player, obj_enemy_parent, true);
mp_grid_add_instances(global.mp_grid_player, obj_collision_parent, true);

scr_move_along_path(global.mp_grid_player, follow_path, target_follow_x, target_follow_y, 2)