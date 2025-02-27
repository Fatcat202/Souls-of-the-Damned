// Behavior
event_inherited()


// Move away from the player if the player comes close

	if(collision_circle(x, y, 40, obj_player_parent, false, false) && can_move)
	{
		if(command_state != "defend_state")
		{
	
			direction = point_direction(x, y, obj_player_parent.x, obj_player_parent.y) * -1
			if(direction < 90) direction -= 180
			else direction += 180
			
			speed = move_spd
		}

	}else
	{
		speed = 0;
	}


#region Targeting AI
	
	if(instance_exists(obj_enemy_parent))
	{ 
	
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
	}

#endregion Targeting AI



if(instance_exists(obj_enemy_parent))
{
	if(point_distance(x, y, target_pos_x, target_pos_y) <= view_range)
	{
		command_state = "attack_state"
	} else
	{
		command_state = "follow_state"
	}
} else
{
	command_state = "follow_state"
}


switch(command_state)
{
	case "attack_state":
		// Clear other potential paths
		if(path_exists(follow_path)) path_delete(follow_path);
		
		// Move towards target
		scr_move_to_target(move_spd);
	
	
		// Make melee attack if within range of attack
		var range = sprite_get_width(spr_melee_attack);
		var within_range = collision_circle(x, y, range, obj_enemy_parent, false, true);
		if(within_range != noone)
		{
			if(can_attack == true && point_distance(x, y, target_pos_x, target_pos_y) <= range)
			{
				
				// Find attack index
				var attack_index = scr_find_attack_index("Nyx_leviathan")
	
				// Pull variables
				var dmg_die_total = global.attack_stats[attack_index].dmg_die_num
				var dmg_die_sides = global.attack_stats[attack_index].dmg_die_sides
				var dmg_mod = global.attack_stats[attack_index].dmg_mod
				var crit_chance = global.attack_stats[attack_index].crit_chance
				var crit_mod = global.attack_stats[attack_index].crit_mod
				var duration = global.attack_stats[attack_index].duration
				var kb_percent = global.attack_stats[attack_index].kb_percent
				
				scr_standard_pmelee(obj_pmelee_parent, dmg_die_total, dmg_die_sides, dmg_mod, crit_chance, crit_mod, kb_percent)
		
				// Attack Cooldown
				alarm[0] = (game_get_speed(gamespeed_fps) * duration) * 0.1
				can_attack = false;
				scr_sprite_direction(point_direction(x, y, target_pos_x, target_pos_y));
			}
		}
		

	break;
	
	case "follow_state":
		// Clear other potential paths
		if(path_exists(attack_path)) path_delete(attack_path);

		// Follow player at a set range. Stop when within range
		var range = 100;

		if(can_move == true)
		{	
			// Follow player Nyx if player Nyx is active
			if(instance_exists(obj_player_Nyx))
			{
				if(point_distance(x, y, obj_player_Nyx.x, obj_player_Nyx.y) > range)
				{
					// Update attack path
					if(!path_exists(follow_path)) follow_path = path_add()
			
					// Update follow path
					alarm[2] = 1;
	
				}else if(point_distance(x, y, obj_player_Nyx.x, obj_player_Nyx.y) <= range)
				{
					if(path_exists(follow_path)) path_delete(follow_path);
				}
				
			// Follow NPC Nyx if NPC Nyx is active
			} else if(instance_exists(obj_npc_Nyx))
			{
				if(point_distance(x, y, obj_npc_Nyx.x, obj_npc_Nyx.y) > range)
				{
					// Update attack path
					if(!path_exists(follow_path)) follow_path = path_add()
			
					// Update follow path
					alarm[2] = 1;
	
				}else if(point_distance(x, y, obj_npc_Nyx.x, obj_npc_Nyx.y) <= range)
				{
					if(path_exists(follow_path)) path_delete(follow_path);
				}
			}
		} else if(path_exists(follow_path)) path_delete(follow_path);
	break;	
}



