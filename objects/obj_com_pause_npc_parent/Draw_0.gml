/// @description Draw Self


// Draw Sprite
draw_self();

// Draw Healthbars
event_inherited();

// Draw A* Paths
draw_path(follow_path, x, y, false)
draw_path(move_path, x, y, false)
draw_path(attack_path, x, y, false)
