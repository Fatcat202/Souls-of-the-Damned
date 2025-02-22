/// @description Attack Pathfinding Update


// Update player grid to show positions of enemies and walls
mp_grid_clear_all(global.mp_grid_player)
mp_grid_add_instances(global.mp_grid_player, obj_collision_parent, true);

scr_move_along_path(global.mp_grid_player, attack_path, target_pos_x, target_pos_y, 1)