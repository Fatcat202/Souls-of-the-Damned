/// @description Pulling Data


// Read name of object and assigns it to object_name
object_name = object_get_name(object_index);
// Isolates the character name from object_name
player_name = string_delete(object_name, 0, 14);


// Determine starting character
for(var i = 1; i <= global.player_index_length; i++)
{
	if (player_name == string(global.arr_player_index_name[i]))
	{
		index = i;
	}
}


// Assigning object name to global.arr_active_com_pause_pcs array
var i = ds_list_size(global.active_pc_com_pause_list)
if(i < global.total_active_com_pause_pcs)
{
	global.active_pc_com_pause_list[| i] = object_name;
	global.active_pc_com_pause_names_list[| i] = player_name;
	global.selected_char = i + 1;
	pc_index = i + 1;

}else // If list is filled, replace object name instead
{
	// Find posision in active DS lists
	var list_index = ds_list_find_index(global.active_pc_com_pause_names_list, player_name)
	show_debug_message("list_index: " + string(list_index));
	
	// Replace position in active DS lists
	ds_list_replace(global.active_pc_com_pause_list, list_index, object_name)
	ds_list_replace(global.active_pc_com_pause_names_list, list_index, player_name)
	global.selected_char = list_index + 1;
	pc_index = list_index + 1;
}




	