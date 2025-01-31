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
spawn_range = 100;
// Number of spawn points
var num_spawn_points = 3;
// Used for setting a new random spawn point
var r_spawn;

// **SPAWN DATA**
waves = ds_list_create();




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


	for (var i = 0; i < count; i++) {
		// 1st place is spawn point number, 2nd is 0 for x and 1 for y
	    spawn[i, 0] = spawn_points[i][0]
	    spawn[i, 1] = spawn_points[i][1]
	}

#endregion Spawn Points


#region Rounds

	// Format to create new enemy entry:
	// ds_list_add(waves, [round to spawn, object name, frame delay, spawn point])

	// To add randomness to spawn locations add between groups of enemies: RANDOM_SPAWN
	// If enemy is to have a random spawn: [wave, obj, delay, r_spawn]
	
	var _round;
	var spawner;

	#region Round 1
	
		_round = 1
		spawner = 0;
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 3
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 4
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 5
	

	
	#endregion Round 1

	#region Round 2
		_round = 2;
		spawner = 0;
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 0
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 3
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 4
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 5
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 6
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 7
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 8
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 9
		

	#endregion Round 2

	#region Round 3
		_round = 3;
		spawner = 0;
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 0
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 3
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 4
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 5
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 6
		
		ds_list_add(waves, [_round, obj_enemy_Venedaemon, 0, spawner]) spawner++ // 7
		ds_list_add(waves, [_round, obj_enemy_Venedaemon, 0, spawner]) spawner++ // 8
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 9
		
	

	#endregion Round 3
	
	#region Round 4
		_round = 4;
		spawner = 0;
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 0
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 3
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 4
		
		ds_list_add(waves, [_round, obj_enemy_Venedaemon, 0, spawner]) spawner++ // 5
		ds_list_add(waves, [_round, obj_enemy_Venedaemon, 0, spawner]) spawner++ // 6
		ds_list_add(waves, [_round, obj_enemy_Venedaemon, 0, spawner]) spawner++ // 7
		ds_list_add(waves, [_round, obj_enemy_Venedaemon, 0, spawner]) spawner++ // 8
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 9
		
	

	#endregion Round 4
	
	#region Round 5
		_round = 5;
		spawner = 0;
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 0
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 3
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 4
		
		ds_list_add(waves, [_round, obj_enemy_Venedaemon, 0, spawner]) spawner++ // 5
		ds_list_add(waves, [_round, obj_enemy_Venedaemon, 0, spawner]) spawner++ // 6
		
		ds_list_add(waves, [_round, obj_enemy_Vulnadaemon, 0, spawner]) spawner++ // 7
		ds_list_add(waves, [_round, obj_enemy_Vulnadaemon, 0, spawner]) spawner++ // 8
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 9
		
	

	#endregion Round 5
	
	#region Round 6
		_round = 6;
		spawner = 0;
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 0
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 3
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 4
		
		ds_list_add(waves, [_round, obj_enemy_Venedaemon, 0, spawner]) spawner++ // 5
		ds_list_add(waves, [_round, obj_enemy_Venedaemon, 0, spawner]) spawner++ // 6
		
		ds_list_add(waves, [_round, obj_enemy_Vulnadaemon, 0, spawner]) spawner++ // 7
		ds_list_add(waves, [_round, obj_enemy_Vulnadaemon, 0, spawner]) spawner++ // 8
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 9
		
	

	#endregion Round 6

#endregion Rounds