/// @description Drawing Self and Paths


// Draw A* Paths
if(path_exists(follow_path)) draw_path(follow_path, x, y, false)
if(path_exists(move_path)) draw_path(move_path, x, y, false)
if(path_exists(attack_path)) draw_path(attack_path, x, y, false)

draw_self()