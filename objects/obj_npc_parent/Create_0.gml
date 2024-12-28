/// @description Initial Creation



#region Assigning Character and Stats

// Read name of object and assigns it to object_name
var object_name = object_get_name(object_index);
// Isolates the character name from object_name
var npc_name = string_delete(object_name, 0, 8);

// Index of this npc
index = 0

// Determine starting character
for(var i = 1; i <= global.player_index_length; i++)
{
	if (npc_name == string(global.arr_player_index_name[i]))
	{
		index = i;
	}
}

// Assigning object name to active pcs array
var i = array_length(global.arr_active_pcs)
if(i < global.max_pcs)
{
	global.arr_active_pcs[i] = object_name;
	global.arr_active_pcs_names[i] = npc_name;
}


show_debug_message("i: " + string(i))
show_debug_message("global.arr_active_pcs :" + string(global.arr_active_pcs))
show_debug_message("global.arr_active_pcs_names :" + string(global.arr_active_pcs_names))

#endregion Assigning Character



#region Assigning Instance Stats

// Assign active health that can be removed and added to
active_health = global.player_stats[index].hp;
max_hp = active_health;
max_armor = global.player_stats[index].armor;
active_armor  = max_armor;


#endregion

