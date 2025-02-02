/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

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
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 0
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2

	
	#endregion Round 1

	#region Round 2
		_round = 2;
		spawner = 0;
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 0
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2

		

	#endregion Round 2

	#region Round 3
		_round = 3;
		spawner = 0;
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 0
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2
		
	

	#endregion Round 3
	
	#region Round 4
		_round = 4;
		spawner = 0;
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 0
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2
		
	

	#endregion Round 4
	
	#region Round 5
		_round = 5;
		spawner = 0;
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 0
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2
		
	

	#endregion Round 5
	
	#region Round 6
		_round = 6;
		spawner = 0;
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 0
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2
		
	

	#endregion Round 6
	
	
	#region Round 7
		_round = 7;
		spawner = 0;
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 0
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2
		
	

	#endregion Round 7
	
	
	#region Round 8
		_round = 8;
		spawner = 0;
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 0
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2
		

	#endregion Round 8
	
	
	#region Round 9
		_round = 9;
		spawner = 9;
		
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 0
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 1
		ds_list_add(waves, [_round, obj_enemy_Cacodaemon, 0, spawner]) spawner++ // 2

		

	#endregion Round 9

#endregion Rounds