/// @description Setup

// Locations of data in ds_list
#macro COMBAT_ROUND 0
#macro TYPE 1
#macro DELAY 2
#macro SPAWN 3
#macro RANDOM_SPAWN  r_spawn = random(num_spawn_points - 1)

// Counts down frames until enemy is spawned
timer = 0;

// Adds a variation to spawn points.
var spawn_range = 100;
// Number of spawn points
var num_spawn_points = 3;
// Used for setting a new random spawn point
var r_spawn;

// **SPAWN DATA**
waves = ds_list_create();

// Format to create new enemy entry:
// ds_list_add(waves, [round to spawn, object name, frame delay, spawn point])


#region Spawn Points

	// Spawn points are set by being added to spawn[]. Place in the room to be read.

	// Initialize the spawn array
	spawn = [];

	// Find all instances of obj_spawn_point_parent
	var count = instance_number(obj_spawn_point_parent);
	var spawn_points = [];

	// Populate the spawn_points array with the positions of obj_spawn_point_parent instances
	for (var i = 0; i < count; i++) {
	    var point = instance_find(obj_spawn_point_parent, i);
	    spawn_points[i] = [point.x, point.y];
	}

	// Populate the spawn array with random positions around the spawn points
	for (var i = 0; i < count; i++) {
		// 1st place is spawn point number, 2nd is 0 for x and 1 for y
	    spawn[i, 0] = spawn_points[i][0] + round(random(spawn_range));
	    spawn[i, 1] = spawn_points[i][1] + round(random(spawn_range));
	}

#endregion Spawn Points


#region Rounds

	// To add randomness to spawn locations add between groups of enemies: RANDOM_SPAWN
	// If enemy is to have a random spawn: [wave, obj, delay, r_spawn]

	#region Round 1

		ds_list_add(waves, [1, obj_enemy_Cacodaemon, 0, 0]);
		ds_list_add(waves, [1, obj_enemy_Cacodaemon, 0, 0]);
		ds_list_add(waves, [1, obj_enemy_Cacodaemon, 0, 0]);
		
		ds_list_add(waves, [1, obj_enemy_Cacodaemon, 0, 1]);
		
		ds_list_add(waves, [1, obj_enemy_Cacodaemon, 0, 2]);
	
	#endregion Round 1

	#region Round 2
	
		RANDOM_SPAWN
			ds_list_add(waves, [2, obj_enemy_Cacodaemon, 0, r_spawn]);
		RANDOM_SPAWN
			ds_list_add(waves, [2, obj_enemy_Cacodaemon, 0, r_spawn]);
		RANDOM_SPAWN
			ds_list_add(waves, [2, obj_enemy_Cacodaemon, 0, r_spawn]);

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