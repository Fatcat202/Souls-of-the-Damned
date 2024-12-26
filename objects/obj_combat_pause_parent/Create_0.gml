/// @description Pulling Data


// Read name of object and assigns it to object_name
object_name = object_get_name(object_index);
// Isolates the character name from object_name
player_name = string_delete(object_name, 0, 17);


combat_pause_index = 0;
// Determine starting character
for(var i = 1; i <= global.player_index_length; i++)
{
		if (player_name == string(global.arr_player_index_name[i]))
		{
			combat_pause_index = i;
		}
}


#region Assigning Instance Stats

// Assign active health that can be removed and added to
max_hp = global.player_stats[combat_pause_index].hp;
active_hp = max_hp;
max_armor = global.player_stats[combat_pause_index].armor;
active_armor = max_armor;


#endregion
