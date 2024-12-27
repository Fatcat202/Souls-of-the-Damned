/// @description Initial Creation


#region Assigning Character

// Read name of object and assigns it to object_name
object_name = object_get_name(object_index);
// Isolates the character name from object_name
player_name = string_delete(object_name, 0, 11);

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

move_spd = global.player_stats[index].move_spd;
collision_speed = move_spd + global.collision_distance;


#endregion
