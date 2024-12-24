/// @description Initial Creation


#region Assigning Character and Stats

// Read name of object and assigns it to object_name
var object_name = object_get_name(object_index);
// Isolates the character name from object_name
var npc_name = string_delete(object_name, 0, 8);

// Index of this npc
npc_index = 0

// Determine starting character
for(var i = 1; i <= global.player_index_length; i++)
{
	show_debug_message("npc i: " + string(i));
	show_debug_message(string(global.arr_player_index_name[i]));
		if (npc_name == string(global.arr_player_index_name[i]))
		{
			npc_index = i;
		}
		show_debug_message("selected_char: " + string(npc_index));
}

#endregion Assigning Character



#region Assigning Instance Stats

// Assign active health that can be removed and added to
active_health = global.player_stats[npc_index].hp;
max_hp = active_health;
max_armor = global.player_stats[global.selected_char].armor;
active_armor  = max_armor;


#endregion

