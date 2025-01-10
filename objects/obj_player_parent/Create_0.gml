/// @description Initial Creation

event_inherited();

#region Assigning Character

	// Read name of object and assigns it to object_name
	object_name = object_get_name(object_index);
	// Isolates the character name from object_name
	player_name = string_delete(object_name, 0, 11);

	// Determine starting character
	for(var i = 1; i <= global.player_index_length; i++)
	{
		if (player_name == string(global.arr_player_index_name[i]))
		{
			global.selected_char = i;
		}
	}

	// Assigning object name to active pcs array
	var i = ds_list_size(global.active_pc_list)
	if(i < global.total_active_pcs)
	{
		global.active_pc_list[| i] = object_name;
		global.active_pc_names_list[| i] = player_name;

	}else // If list is filled, replace object name instead
	{
		// Find posision in active DS lists
		var list_index = ds_list_find_index(global.active_pc_names_list, player_name)
		show_debug_message("list_index: " + string(list_index));
	
		// Replace position in active DS lists
		ds_list_replace(global.active_pc_list, list_index, object_name)
		ds_list_replace(global.active_pc_names_list, list_index, player_name)
	}

#endregion Assigning Character


#region Loading instance stats

	// Index for databases, changing characters, and other functions
	index = global.selected_char;

	// Health
	max_hp = global.player_stats[index].hp;
	active_health = max_hp;

	// Armor
	max_armor = global.player_stats[index].armor;
	active_armor = max_armor;

	// Speed
	move_spd = global.player_stats[index].move_spd;
	collision_speed = move_spd + global.collision_distance;


#endregion