/// @description Pulling Data


// Read name of object and assigns it to object_name
object_name = object_get_name(object_index);
// Isolates the character name from object_name
player_name = string_delete(object_name, 0, 14);


combat_pause_index = 0;
// Determine starting character
for(var i = 1; i <= global.player_index_length; i++)
{
		if (player_name == string(global.arr_player_index_name[i]))
		{
			combat_pause_index = i;
		}
}


// Assigning object name to global.arr_active_com_pause_pcs array
var i = array_length(global.arr_active_com_pause_pcs);
if(i < global.total_active_com_pause_pcs)
{
	global.arr_active_com_pause_pcs[i] = object_name;
	global.arr_active_com_pause_pcs_names[i] = player_name;
	scr_data_cross_reference(i)
}

	show_debug_message("global.arr_active_com_pause_pcs: " + string(global.arr_active_com_pause_pcs))
	show_debug_message("global.arr_active_com_pause_pcs_names: " + string(global.arr_active_com_pause_pcs_names))
