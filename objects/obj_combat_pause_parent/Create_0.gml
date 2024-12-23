/// @description Pulling Data
// You can write your code in this editor


// Read name of object and assigns it to object_name
var object_name = object_get_name(object_index);
// Isolates the character name from object_name
var player_name = string_delete(object_name, 0, 17);


combat_pause_index = 0;
// Determine starting character
for(var i = 1; i <= global.player_index_length; i++)
{
	show_debug_message("i: " + string(i));
	show_debug_message(string(global.arr_player_index_name[i]));
		if (player_name == string(global.arr_player_index_name[i]))
		{
			combat_pause_index = i;
			
		}
}



#region Assigning Instance Stats

// Assign active health that can be removed and added to
active_health = global.player_stats[combat_pause_index].hp;
max_hp = active_health;
//active_armor = global.player_stats[combat_pause_index].armor;


#endregion
