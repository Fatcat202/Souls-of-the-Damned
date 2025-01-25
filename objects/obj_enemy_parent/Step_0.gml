
scr_non_player_collision(speed)

#region Targeting AI

	#region Set up Weights
	
		// Create list to store targets in
		var pc_list = ds_list_create();

		// Store targets in list based on range
		var pc_num = collision_circle_list(x, y, view_range, obj_ply_npc_parent, false, true, pc_list, false);

		if(pc_num > 0)
		{ 
			// Create array to hold possible actions
			arr_options = array_create(pc_num);
	
			// Loop through all PCs found
			for(var i = 0; i < pc_num; i++)
			{
				// Get the next instance ID
				var _id = pc_list[| i];
		
				// Store weight for how valuable it is seen by AI
				var _weight = 0;
		
				// Create a struct which holds the pc id and its weight value
				arr_options[i] = {id : _id, weight : _weight}
		
				// Store distance to instance
				var dis = distance_to_object(_id);
				
	#endregion Set up Weights
			
	#region Weight Modifiers
				// Weight modifiers for each player
				switch(_id.object_index)
				{
					case obj_npc_Alok:
				
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_npc_Alok, dis, view_range);
			
					break;
					case obj_player_Alok:
					
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_player_Alok, dis, view_range);
					
					break;
					case obj_npc_Darien:
				
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_npc_Darien, dis, view_range);
			
					break;
					case obj_player_Darien:
				
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_player_Darien, dis, view_range);
			
					break;
					case obj_npc_Dogan:
				
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_npc_Dogan, dis, view_range);
			
					break;
					case obj_player_Dogan:
				
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_player_Dogan, dis, view_range);
			
					break;
					case obj_npc_Garyrager:
				
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_npc_Garyrager, dis, view_range);
			
					break;
					case obj_player_Garyrager:
				
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_player_Garyrager, dis, view_range);
			
					break;
					case obj_npc_Seki:
			
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_npc_Seki, dis, view_range);
			
					break;
					case obj_player_Seki:
			
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_player_Seki, dis, view_range);
			
					break;
					case obj_npc_Xan:
			
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_npc_Xan, dis, view_range);
			
					break;
					case obj_player_Xan:
			
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_player_Xan, dis, view_range);
			
					break;
					case obj_npc_Bronwin:
			
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_npc_Bronwin, dis, view_range);
			
					break;
					case obj_player_Bronwin:
			
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_player_Bronwin, dis, view_range);
			
					break;
					case obj_npc_Nyx:
			
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_npc_Nyx, dis, view_range);
			
					break;
					case obj_player_Nyx:
			
						// Set initial weight based on range
						_weight = scr_player_default_weight(obj_player_Nyx, dis, view_range);
			
					break;
				}

				// Assign the weight to this PCs struct value
				arr_options[i].weight = _weight;
			}
		}

		// Cleanup list
		ds_list_destroy(pc_list);
		#endregion Weight Modifiers
	
	#region Use Weight
	
		// Find the number with the highest weight
		if(pc_num > 0)
		{
			// Used to track highest weight
			var highest = 0;
	
			// Check if instances are found
			if(array_length(arr_options) > 0)
			{
				for(var i = 0; i < pc_num; i++)
				{
					if(arr_options[i].weight > arr_options[highest].weight)
					{
						highest = i;
					}
				}
			}

			// If there is a highest weight, set target if weight is not 0
			if(arr_options[highest].weight != 0)
			{	
				// Get ID of the highest weighted PC
				var _id = arr_options[highest].id;
		
				// Collect target values
				target_pos_x = _id.x;
				target_pos_y = _id.y;
				target_id = _id;
				//show_debug_message("target_pos_x: " + string(target_pos_x))
				//show_debug_message("target_pos_y: " + string(target_pos_y))
				//show_debug_message("target_id: " + string(target_id))
				//show_debug_message("highest: " + string(highest))
			}
		}
	#endregion Use Weight

#endregion Targeting AI