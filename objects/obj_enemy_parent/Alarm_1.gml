/// @description Attack Pathfinding Update

// Update grid to show positions of obstacles
mp_grid_clear_all(global.mp_grid_enemy)
mp_grid_add_instances(global.mp_grid_enemy, obj_collision_parent, true);
	
// Move along path towards target
scr_move_along_path(global.mp_grid_enemy, attack_path, target_pos_x, target_pos_y, 1)
