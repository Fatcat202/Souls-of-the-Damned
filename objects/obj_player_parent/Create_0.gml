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


show_debug_message("Selected Player: "  + string(global.arr_player_index_name[global.selected_char]))
show_debug_message("global.selected_char" + string(global.selected_char))
show_debug_message("Stats" + string(global.player_stats[global.selected_char]))


#endregion Assigning Character



#region Loading instance stats

max_hp = global.player_stats[global.selected_char].hp;
active_health = max_hp;

player_index = global.selected_char;

max_armor = global.player_stats[global.selected_char].armor;
active_armor = max_armor;

collision_speed = global.player_stats[global.selected_char].move_spd + global.collision_distance;


#endregion

