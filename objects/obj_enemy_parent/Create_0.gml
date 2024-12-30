/// @description Creation

#region Determening Enemy for Stats

// Read name of object and assigns it to object_name
var object_name = object_get_name(object_index);
// Isolates the character name from object_name
var enemy_name = string_delete(object_name, 0, 10);
// Initialise this_enemy to track instance data
index = 0;

// Determine starting character
for(var i = 1; i <= global.enemy_index_length; i++)
{
		if (enemy_name == string(global.arr_enemy_index_name[i]))
		{
			index = i;
		}
}

#endregion Assigning Character and Stats


#region Loading instance stats

// Assign active health that can be removed and added to
max_hp = global.enemy_stats[index].hp;
active_health = max_hp;
armor_percent = global.enemy_stats[index].armor;

#endregion

