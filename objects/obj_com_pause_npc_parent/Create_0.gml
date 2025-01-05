/// @description Pulling Data


// Read name of object and assigns it to object_name
object_name = object_get_name(object_index);
// Isolates the character name from object_name
player_name = string_delete(object_name, 0, 18);


combat_pause_index = 0;
// Determine starting character
for(var i = 1; i <= global.player_index_length; i++)
{
		if (player_name == string(global.arr_player_index_name[i]))
		{
			combat_pause_index = i;
		}
}
