/// @description Cleanup


// Clear DS Lists
ds_list_destroy(global.active_pc_com_pause_list)
ds_list_destroy(global.active_pc_com_pause_names_list)
ds_list_destroy(global.active_pc_com_pause_object_list)
ds_list_destroy(global.active_pc_list)
ds_list_destroy(global.active_pc_names_list)
ds_list_destroy(global.active_pc_object_list)

// Clear MP Grids
mp_grid_destroy(global.mp_grid)
mp_grid_destroy(global.mp_grid_enemy)
mp_grid_destroy(global.mp_grid_player)