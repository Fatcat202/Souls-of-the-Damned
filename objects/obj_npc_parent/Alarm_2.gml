/// @description Follow Pathfinding Update


path_delete(follow_path)
follow_path = path_add();


// Target pos for following player
target_follow_x = obj_player_parent.x;
target_follow_y = obj_player_parent.y;

// Update player grid to show positions of enemies and walls
mp_grid_clear_all(global.mp_grid_player)
mp_grid_add_instances(global.mp_grid_player, obj_enemy_parent, true);
mp_grid_add_instances(global.mp_grid_player, obj_collision_parent, true);

// Create path on grid
mp_grid_path(global.mp_grid_player, follow_path, x, y, target_follow_x, target_follow_y, true);

// Initiate new path
path_start(follow_path, move_spd, path_action_stop, true);

// Loop alarm 2x a second
alarm_set(2, 30)