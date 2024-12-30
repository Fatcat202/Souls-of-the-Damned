/// @description Setup

// Locations of data in ds_list
#macro COMBAT_ROUND 0
#macro TYPE 1
#macro DELAY 2

// Counts down frames until enemy is spawned
timer = 0;


// **SPAWN DATA**
waves = ds_list_create();

// Format to create:
// ds_list_add(waves, [round to spawn, object name, frame delay])

#region Round 1

	ds_list_add(waves, [1, obj_enemy_Cacodaemon, 50]);
	
#endregion Round 1

#region Round 2

	ds_list_add(waves, [2, obj_enemy_Venedaemon, 0]);

#endregion Round 2

#region Round 3

	ds_list_add(waves, [3, obj_enemy_Vulnadaemon, 0]);

#endregion Round 3

