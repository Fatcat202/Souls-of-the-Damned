/// @description Reset Path


if(state == "returning")
{
	
	var xx, yy;
	
	// Gather x and y cords of Gary
	if(instance_exists(obj_npc_Garyrager))
	{
		xx = obj_npc_Garyrager.x;
		yy = obj_npc_Garyrager.y;
	}
	if(instance_exists(obj_player_Garyrager))
	{
		xx = obj_player_Garyrager.x;
		yy = obj_player_Garyrager.y;
	}
	

	// Update player grid to show positions of enemies and walls
	mp_grid_clear_all(global.mp_grid_player)
	mp_grid_add_instances(global.mp_grid_player, obj_collision_parent, true);
	
	path_return = path_add()
	
	// Begin moving along path towards Gary
	scr_move_along_path(global.mp_grid_player, path_return, xx, yy, 2)
	
	// Reset alarm
	alarm_set(2, 5)

}