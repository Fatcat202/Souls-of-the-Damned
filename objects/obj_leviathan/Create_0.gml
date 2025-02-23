/// @description Initial Creation


#region Assigning Character and Stats

	// Read name of object and assigns it to object_name
	var object_name = object_get_name(object_index);
	// Isolates the character name from object_name
	var player_name = string_delete(object_name, 0, 8);


	// Index for stats
	index = player_index.leviathan;


#endregion Assigning Character and Stats


#region Duration of Leviathan

	// Find attack index
	var attack_index = scr_find_attack_index("Nyx_leviathan")
	
	// Pull variables
	var duration = global.attack_stats[attack_index].duration
	
	// Start duration timer
	alarm[10] = game_get_speed(gamespeed_fps) * duration

#endregion Duration of Leviathan

#region Assigning Instance Stats

	var dice_hp = global.player_stats[index].dice_hp
	var hp_mod = global.player_stats[index].hp_mod
	
	// Calculate initial HP, taking max with first die and adding the mod
	var hp = dice_hp + hp_mod;
	
	// Set max_hp									
	if(global.player_level > 1)
	{
		//				Subtract 1 due to taking max on first die
		max_hp = hp + scr_roll_dice(global.player_level - 1 , dice_hp) + (hp_mod * global.player_level - 1)
	}else max_hp = hp;
	// Set active HP
	active_health = max_hp
	

	// Armor
	max_armor = global.player_stats[index].dice_armor;
	active_armor = max_armor;
	
	
	// Increase armor with level gain
	armor_gain = scr_roll_dice(1, global.player_stats[index].dice_armor)	
	// Increment armor
	max_armor += armor_gain
	active_armor += armor_gain

	// Speed
	move_spd = global.player_stats[index].move_spd;
	collision_speed = move_spd + global.collision_distance;
	
	
	// Pathfinding
	
		// Paths
		attack_path = path_add()
		follow_path = path_add()
		move_path = path_add()
		
		if(instance_exists(obj_player_Nyx))
		{
			// Target pos for following player
			target_follow_x = obj_player_Nyx.x;
			target_follow_y = obj_player_Nyx.y;
		}
		if(instance_exists(obj_npc_Nyx))
		{
			// Target pos for following player
			target_follow_x = obj_npc_Nyx.x;
			target_follow_y = obj_npc_Nyx.y;
		}

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

