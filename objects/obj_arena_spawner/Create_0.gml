/// @description Setup

// Locations of data in ds_list
#macro COMBAT_ROUND 0
#macro TYPE 1
#macro DELAY 2
#macro SPAWN 3

// Counts down frames until enemy is spawned
timer = 0;

// Adds a variation to spawn points.
var spawn_range = 100;


// **SPAWN DATA**
waves = ds_list_create();

// Format to create new enemy entry:
// ds_list_add(waves, [round to spawn, object name, frame delay, spawn point])


#region Spawn Points

// Spawn points are set by being added to spawn[]
// 1st place is spawn point number, 2nd is 0 for x and 1 for y

// Spawn Location 0
spawn[0, 0] = 716 + round(random(spawn_range))
spawn[0, 1] = 522 + round(random(spawn_range))

// Spawn Location 1
spawn[1, 0] = 940 + round(random(spawn_range))
spawn[1, 1] = 524 + round(random(spawn_range))

// Spawn Location 2
spawn[2, 0] = 1120 + round(random(spawn_range))
spawn[2, 1] = 560 + round(random(spawn_range))

#endregion Spawn Points


#region Rounds

	#region Round 1

		ds_list_add(waves, [1, obj_enemy_Cacodaemon, 0, 0]);
		ds_list_add(waves, [1, obj_enemy_Cacodaemon, 0, 0]);
		ds_list_add(waves, [1, obj_enemy_Cacodaemon, 0, 0]);
		
		ds_list_add(waves, [1, obj_enemy_Cacodaemon, 0, 1]);
		
		ds_list_add(waves, [1, obj_enemy_Cacodaemon, 0, 2]);
	
	#endregion Round 1

	#region Round 2

		ds_list_add(waves, [2, obj_enemy_Venedaemon, 0, 0]);
		ds_list_add(waves, [2, obj_enemy_Venedaemon, 0, 1]);
		ds_list_add(waves, [2, obj_enemy_Venedaemon, 0, 2]);

	#endregion Round 2

	#region Round 3

		ds_list_add(waves, [3, obj_enemy_Vulnadaemon, 0, 0]);
		ds_list_add(waves, [3, obj_enemy_Vulnadaemon, 0, 1]);
		ds_list_add(waves, [3, obj_enemy_Vulnadaemon, 0, 2]);
	

	#endregion Round 3

#endregion Rounds