/// @description Initial Creation



#region Assigning Character and Stats

	// Read name of object and assigns it to object_name
	var object_name = object_get_name(object_index);
	// Isolates the character name from object_name
	var player_name = string_delete(object_name, 0, 8);


	// Determine starting character
	for(var i = 1; i <= global.player_index_length; i++)
	{
		if (player_name == string(global.arr_player_index_name[i]))
		{
			index = i;
		}
	}

	// Assigning object name to active pcs array
	var i = ds_list_size(global.active_pc_list)
	if(i < global.total_active_pcs)
	{
		global.active_pc_list[| i] = object_name;
		global.active_pc_names_list[| i] = player_name;
		global.active_pc_object_list[| i] = object_index;
	}else // If list is filled, replace object name instead
	{
		// Find posision in active DS lists
		var list_index = ds_list_find_index(global.active_pc_names_list, player_name)
		show_debug_message("list_index: " + string(list_index));
	
		// Replace position in active DS lists
		ds_list_replace(global.active_pc_list, list_index, object_name)
		ds_list_replace(global.active_pc_names_list, list_index, player_name)
		ds_list_replace(global.active_pc_object_list, list_index, object_index)
	}


#endregion Assigning Character and Stats



#region Assigning Instance Stats

	// Assign active health that can be removed and added to
	active_health = global.player_stats[index].hp;
	max_hp = active_health;

	// Armor
	max_armor = global.player_stats[index].armor;
	active_armor  = max_armor;

	// Speed
	move_spd = global.player_stats[index].move_spd;
	collision_speed = move_spd + global.collision_distance;
	
	
	// Pathfinding
	
	// Paths
	follow_path = path_add();
	move_path = path_add();
	
	// Target pos for following player
	target_follow_x = obj_player_parent.x;
	target_follow_y = obj_player_parent.y;
	
	// Target pos for when ordered to move
	target_move_x = x
	target_move_y = y
	
	
	


#endregion Assigning Instance Stats


#region AI Behavior Variables

	// Set range
	view_range = 250;

	// Set target position values and ID
	target_pos_x = x;
	target_pos_y = y;
	target_id = noone;

	// Array holding ID and weight of found target within range
	arr_options = [];
	
#endregion AI Behavior Variables
