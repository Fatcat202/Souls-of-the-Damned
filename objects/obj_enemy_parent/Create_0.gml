/// @description Creation



#region Determening Enemy for Stats

// Read name of object and assigns it to object_name
var object_name = object_get_name(object_index);
// Isolates the character name from object_name
var enemy_name = string_delete(object_name, 0, 10);
// Initialise this_enemy to track instance data
enemy_index = 0;

// Determine starting character
for(var i = 1; i <= global.enemy_index_length; i++)
{
	//show_debug_message("i: " + string(i));
	//show_debug_message(string(global.arr_enemy_index_name[i]));
		if (enemy_name == string(global.arr_enemy_index_name[i]))
		{
			enemy_index = i;
			
		}
		//show_debug_message("enemy_index: " + string(enemy_index));
}

/*
// Debug messages
show_debug_message("enemy_name: " + string(enemy_name));
show_debug_message("enemy_index: " + string(global.enemy_index_length));
show_debug_message("Loaded stats for " + string(global.arr_enemy_index_name[enemy_index] + ":" + string(global.enemy_stats[enemy_index])));
*/

#endregion Assigning Character and Stats



#region Loading instance stats

// Assign active health that can be removed and added to
max_hp = global.enemy_stats[enemy_index].hp;
active_health = max_hp;
armor_percent = global.enemy_stats[enemy_index].armor;

#endregion



#region



#endregion


