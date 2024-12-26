/// @description Initial Creation


#region Assigning Character

// Read name of object and assigns it to object_name
var object_name = object_get_name(object_index);
// Isolates the character name from object_name
var player_name = string_delete(object_name, 0, 11);

// Determine starting character
for(var i = 1; i <= global.player_index_length; i++)
{
		if (player_name == string(global.arr_player_index_name[i]))
		{
			global.selected_char = i;
		}
}



#endregion Assigning Character



#region Loading instance stats

index = global.selected_char;

max_hp = global.player_stats[index].hp;
active_health = max_hp;

max_armor = global.player_stats[index].armor;
active_armor = max_armor;

collision_speed = global.player_stats[index].move_spd + global.collision_distance;


#endregion


show_debug_message("Selected Player: "  + string(global.arr_player_index_name[index]))
show_debug_message("index" + string(index))
show_debug_message("Stats" + string(global.player_stats[index]))