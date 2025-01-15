function scr_attack()
{
	#region Targeting AI
	
		#region Set up Weights
	
			// Create list to store targets in
			var enemy_list = ds_list_create();

			// Store targets in list based on range
			var enemy_num = collision_circle_list(x, y, view_range, obj_enemy_parent, false, true, enemy_list, false);

			if(enemy_num > 0)
			{ 
				// Create array to hold possible actions
				arr_options = array_create(enemy_num);
	
				// Loop through all PCs found
				for(var i = 0; i < enemy_num; i++)
				{
					// Get the next instance ID
					var _id = enemy_list[| i];
		
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
						case obj_enemy_Cacodaemon:
				
							// Set initial weight based on range
							_weight = scr_enemy_default_weight(obj_enemy_Cacodaemon, dis, view_range)
			
						break;
						case obj_enemy_Venedaemon:
					
							// Set initial weight based on range
							_weight = scr_enemy_default_weight(obj_enemy_Venedaemon, dis, view_range)
					
						break;
						case obj_enemy_Vulnadaemon:
				
							// Set initial weight based on range
							_weight = scr_enemy_default_weight(obj_enemy_Vulnadaemon, dis, view_range)
			
						break;
					}

					// Assign the weight to this PCs struct value
					arr_options[i].weight = _weight;
				}
			}

			// Cleanup list
			ds_list_destroy(enemy_list);
			#endregion Weight Modifiers
	
		#region Use Weight
	
			// Find the number with the highest weight
			if(enemy_num > 0)
			{
				// Used to track highest weight
				var highest = 0;
	
				// Check if instances are found
				if(array_length(arr_options) > 0)
				{
					for(var i = 0; i < enemy_num; i++)
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
}