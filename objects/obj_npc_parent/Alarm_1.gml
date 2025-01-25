/// @description Attack Pathfinding Update


path_delete(attack_path)
attack_path = path_add();


// Update player grid to show positions of enemies and walls
mp_grid_clear_all(global.mp_grid_player)
mp_grid_add_instances(global.mp_grid_player, obj_collision_parent, true);

// Create path on grid
mp_grid_path(global.mp_grid_player, attack_path, x, y, target_pos_x, target_pos_y, true);

// Initiate new path
path_start(attack_path, move_spd, path_action_stop, true);

// Loop alarm 2x a second
alarm_set(1, 30)