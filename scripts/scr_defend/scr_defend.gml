function scr_defend()
{
	// Clear other potential paths, only auto attack
	path_clear_points(follow_path);
	path_clear_points(move_path);
	path_clear_points(attack_path);

}