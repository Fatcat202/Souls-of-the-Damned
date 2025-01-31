function scr_attack()
{
	// Clear other potential paths
	if(path_exists(follow_path)) path_delete(follow_path);
	if(path_exists(move_path)) path_delete(move_path);


	// Specific actions located in associated npc object
}