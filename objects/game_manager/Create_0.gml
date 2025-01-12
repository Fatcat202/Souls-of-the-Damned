
// Randomise randomisation seed
randomise()

#region Global Variables


	#region Variables


		#region database
		
			// Create player_index_length for tracking total number of players in csv
			global.player_index_length = 0;

			// Create player_stats array for tracking stats
			global.player_stats[0] = 0

			// Initialize player index arrays
			global.arr_player_index_name[0] = "No valid player name";
			global.arr_player_index_num[0] = 0;

			// The variable that initially changes when changing characters
			global.selected_char = 1;

			// Create enemy_index_length for tracking total number of enemy in csv
			global.enemy_index_length = 0;

			// Create enemy_stats array for tracking stats
			global.enemy_stats[0] = 0

			// Initialize enemy index arrays
			global.arr_enemy_index_name[0] = "No valid enemy name";
			global.arr_enemy_index_num[0] = 0;
			
			
		#region Swapping Characters
		
			// Assign players to array
			global.arr_players[1] = obj_player_Alok;
			global.arr_players[2] = obj_player_Seki;
			global.arr_players[3] = obj_player_Xan;
			global.arr_players[4] = obj_player_Garyrager;
			global.arr_players[5] = obj_player_Dogan;
			global.arr_players[6] = obj_player_Darien;
			global.arr_players[7] = obj_player_Bronwin;
			global.arr_players[8] = obj_player_Nyx;

			//	Assign npcs to array
			global.arr_npc[1] = obj_npc_Alok;
			global.arr_npc[2] = obj_npc_Seki;
			global.arr_npc[3] = obj_npc_Xan;
			global.arr_npc[4] = obj_npc_Garyrager;
			global.arr_npc[5] = obj_npc_Dogan;
			global.arr_npc[6] = obj_npc_Darien;
			global.arr_npc[7] = obj_npc_Bronwin;
			global.arr_npc[8] = obj_npc_Nyx;
			
			// Assign combat pause objects to array
			global.arr_combat_pause[1] = obj_com_pause_Alok;
			global.arr_combat_pause[2] = obj_com_pause_Seki;
			global.arr_combat_pause[3] = obj_com_pause_Xan;
			global.arr_combat_pause[4] = obj_com_pause_Garyrager;
			global.arr_combat_pause[5] = obj_com_pause_Dogan;
			global.arr_combat_pause[6] = obj_com_pause_Darien;
			global.arr_combat_pause[7] = obj_com_pause_Bronwin;
			global.arr_combat_pause[8] = obj_com_pause_Nyx;
			
			// Assign combat pause npc objects to array
			global.arr_combat_pause_npc[1] = obj_com_pause_npc_Alok;
			global.arr_combat_pause_npc[2] = obj_com_pause_npc_Seki;
			global.arr_combat_pause_npc[3] = obj_com_pause_npc_Xan;
			global.arr_combat_pause_npc[4] = obj_com_pause_npc_Garyrager;
			global.arr_combat_pause_npc[5] = obj_com_pause_npc_Dogan;
			global.arr_combat_pause_npc[6] = obj_com_pause_npc_Darien;
			global.arr_combat_pause_npc[7] = obj_com_pause_npc_Bronwin;
			global.arr_combat_pause_npc[8] = obj_com_pause_npc_Nyx;
			
			// DS list to hold active PC object names
			global.active_pc_list = ds_list_create();
			
			// DS list to hold active PC names
			global.active_pc_names_list = ds_list_create();
			
			// DS list to hold active com pause PC object names
			global.active_pc_com_pause_list = ds_list_create();
			
			// DS list to hold active com pause PC names
			global.active_pc_com_pause_names_list = ds_list_create();
			
			// DS list to hold all active PC objects
			global.active_pc_object_list = ds_list_create();
			
			// DS list to hold active com pause PC objects
			global.active_pc_com_pause_object_list = ds_list_create();
			
			// Tracks active player index in player, npc, and combat paused DS lists. Default to 1
			global.char_index = 1;
			
			// Maxiumum number of playable characters allowed at once
			global.max_pcs = 4;
			
			// Total number of active PCs
			global.total_active_pcs = instance_number(obj_player_parent) + instance_number(obj_npc_parent);
			
			// Total number of active combat paused PCs
			global.total_active_com_pause_pcs = 0;

		#endregion Swapping Characters
	
	#endregion Database
	
	
	#region Pausing
	
		// Sets default game pause state
		global.game_paused = false
		
		// Sets default game combat pause state
		global.game_combat_paused = false
	
		// Sets default of if a pause can occour to false
		global.can_pause = false;
	
		// Sets default of if a pause can occour to false
		global.can_combat_pause = false;
			
		// Creates combat_pause_surf and its buffer
		global.combat_pause_surf = -1;
		global.combat_pause_surf_buffer = -1;
			
			
	#endregion Pausing
	
	
	#region Misc
	
		// Sets default if a cutscene is active to false
		global.cutscene_active = false;

		// Sets time it takes to start regaining armor in seconds
		global.regain_armor_timer = 6;
	
		// Sets speed at which armor regains, divided with fps
		global.regain_armor_speed = 20;
	
		// Sets how many pixel away objects must be from another object to collide 
		// (x2 if both move towards each other)
		global.collision_distance = 2;
	
		// Game resolution
		global.res_w = 640;
		global.res_h = 360;
	
		// Tracks the total number of dead PCs
		global.dead_char = 0;
		
		// Used for commanding all PCs at once
		global.command_all = false;

	
	
	#endregion Misc
	
	
	#region Arena Mechanics
	
		// Initialize player level
		global.player_level = 1;
	
		// Sets starting combat round for arena
		global.combat_round = 1;
		
		// Sets maximum number of combat rounds
		global.max_combat_rounds = 20;
	
		// Tracker for how many enemies remain before the round ends
		global.remaining_enemies = 0;
		
		// Detects if the round has been started and spawning triggered
		global.spawn_triggered = false;
		
		
	
	#endregion Arena Mechanics
	
	
	#region Camera
	
		// Storing previous frames mouse location in relation to GUI
		global.mouse_x_previous = device_mouse_x_to_gui(0);
		global.mouse_y_previous = device_mouse_y_to_gui(0);
	
		// Camera smoothing speed
		global.cam_smoothing = 0.3;
	
	
	#endregion Camera

	
	#endregion Variables


	#region Controls
		// Movement
		global.cont_up = "W";
		global.cont_left = "A";
		global.cont_down = "S";
		global.cont_right = "D";
		// Attacks
		global.cont_attack_1 = "1";
		global.cont_attack_2 = "2";
		global.cont_attack_3 = "3";
		global.cont_attack_4 = "4";
		global.cont_use_attack = mouse_check_button_pressed(mb_left);
		// Characters
		global.cont_char_1 = "5";
		global.cont_char_2 = "6";
		global.cont_char_3 = "7";
		global.cont_char_4 = "8";
		// Misc
		global.cont_menu = "ESC"; // Find actual name
		global.cont_combat_pause = "SPACE"; // Find actual name
		global.cont_quick_save = "F2"; // Find actual name
		global.cont_cam_panning = "P";
	
	#endregion Controls


	#region Enums

		
		enum dot_data // Data for Damage Over Time
		{
			dmg,
			tick_rate,
			duration,
			can_kill
		}


	#endregion Enums
	
	
#endregion Global Variables


#region Player Stats

	var ds_player_stats_csv = load_csv("player_data.csv");

	// Ensure the grid is valid
	if (ds_player_stats_csv == -1) {
	    show_error("Failed to load CSV file.", true);
	    exit;
	}

	// Initialize stats dictionary constructor
	function p_stats(_hp = 0, _armor = 0, _move_spd = 0, _main_atk_dmg = 0, _main_atk_spd = 0, _kb_percent = 0) constructor {
		hp = _hp;
		armor = _armor;
		move_spd = _move_spd;
		main_atk_dmg = _main_atk_dmg;
		main_atk_spd = _main_atk_spd;
		kb_percent = _kb_percent;
	}

	// Create player_stats struct array
	// **ADD ANOTHER LINE ONCE ANOTHER CHARACTER IS IMPLEMENTED**
	global.player_index_length++; global.player_stats[global.player_index_length] = new p_stats();
	global.player_index_length++; global.player_stats[global.player_index_length] = new p_stats();
	global.player_index_length++; global.player_stats[global.player_index_length] = new p_stats();
	global.player_index_length++; global.player_stats[global.player_index_length] = new p_stats(); 
	global.player_index_length++; global.player_stats[global.player_index_length] = new p_stats();	
	global.player_index_length++; global.player_stats[global.player_index_length] = new p_stats();
	global.player_index_length++; global.player_stats[global.player_index_length] = new p_stats();
	global.player_index_length++; global.player_stats[global.player_index_length] = new p_stats();

	// Assign all values from CSV file into stats database structs
	for(var i = 0; i < global.player_index_length; i++)
	{
		var yy = i + 1;
		var xx = 1;
	
		global.player_stats[yy].hp = real(ds_grid_get(ds_player_stats_csv, xx, yy)); xx++;
		global.player_stats[yy].armor = real(ds_grid_get(ds_player_stats_csv, xx, yy)); xx++;
		global.player_stats[yy].move_spd = real(ds_grid_get(ds_player_stats_csv, xx, yy)); xx++;
		global.player_stats[yy].main_atk_dmg = real(ds_grid_get(ds_player_stats_csv, xx, yy)); xx++;
		global.player_stats[yy].main_atk_spd = real(ds_grid_get(ds_player_stats_csv, xx, yy)); xx++;
		global.player_stats[yy].kb_percent = real(ds_grid_get(ds_player_stats_csv, xx, yy));
	
	}


	// Assign data to player index arrays
	for(var p = 0; p < global.player_index_length; p++)
	{
		var n = p + 1;
		// Sets 1st place in array as names
		global.arr_player_index_name[n] = ds_grid_get(ds_player_stats_csv, 0, n);
		// Sets 2nd place in array as index
		global.arr_player_index_num[n] = n;
	}

		// Cleanup DS grid
		ds_grid_destroy(ds_player_stats_csv);
	
#endregion Player Stats



#region Enemy Stats

	var ds_enemy_stats_csv = load_csv("enemy_data.csv");

	// Ensure the grid is valid
	if (ds_enemy_stats_csv == -1) {
	    show_error("Failed to load CSV file.", true);
	    exit;
	}

	// Initialize stats dictionary constructor
	function e_stats(_hp = 0, _armor = 0, _move_spd = 0, _melee_atk_dmg_1 = 0, _melee_atk_dmg_2 = 0, _ranged_atk_dmg_1 = 0, _ranged_atk_dmg_2 = 0, _kb_percent = 0, _is_flyer = 0) constructor {
		hp = _hp;
	    armor = _armor;
	    move_spd = _move_spd;
	    melee_atk_dmg_1 = _melee_atk_dmg_1;
		melee_atk_dmg_2 = _melee_atk_dmg_2;
		ranged_atk_dmg_1 = _ranged_atk_dmg_1;
		ranged_atk_dmg_2 = _ranged_atk_dmg_2;
	    kb_percent = _kb_percent;
		is_flyer = _is_flyer;
	}

	// Create enemy_stats struct array. Add another line with another added enemy.
	global.enemy_index_length++; global.enemy_stats[global.enemy_index_length] = new e_stats(); 
	global.enemy_index_length++; global.enemy_stats[global.enemy_index_length] = new e_stats();
	global.enemy_index_length++; global.enemy_stats[global.enemy_index_length] = new e_stats(); 

	// Assign all values from CSV file into stats database structs
	for(var i = 0; i < global.enemy_index_length; i++)
	{
		var yy = i + 1;
		var xx = 1;
	
		global.enemy_stats[yy].hp = real(ds_grid_get(ds_enemy_stats_csv, xx, yy)); xx++;
		global.enemy_stats[yy].armor = real(ds_grid_get(ds_enemy_stats_csv, xx, yy)); xx++;
		global.enemy_stats[yy].move_spd = real(ds_grid_get(ds_enemy_stats_csv, xx, yy)); xx++;
		global.enemy_stats[yy].melee_atk_dmg_1 = real(ds_grid_get(ds_enemy_stats_csv, xx, yy)); xx++;
		global.enemy_stats[yy].melee_atk_dmg_2 = real(ds_grid_get(ds_enemy_stats_csv, xx, yy)); xx++;
		global.enemy_stats[yy].ranged_atk_dmg_1 = real(ds_grid_get(ds_enemy_stats_csv, xx, yy)); xx++;
		global.enemy_stats[yy].ranged_atk_dmg_2 = real(ds_grid_get(ds_enemy_stats_csv, xx, yy)); xx++;
		global.enemy_stats[yy].main_atk_speed = real(ds_grid_get(ds_enemy_stats_csv, xx, yy)); xx++;
		global.enemy_stats[yy].kb_percent = real(ds_grid_get(ds_enemy_stats_csv, xx, yy)); xx++;
		global.enemy_stats[yy].is_flyer = ds_grid_get(ds_enemy_stats_csv, xx, yy);

	}

	// Assign data to enemy index arrays
	for(var p = 0; p < global.enemy_index_length; p++)
	{
		var n = p + 1;
		// Sets 1st place in array as names
		global.arr_enemy_index_name[n] = ds_grid_get(ds_enemy_stats_csv, 0, n);
		// Sets 2nd place in array as index
		global.arr_enemy_index_num[n] = n;
	}

	// Cleanup DS grid
	ds_grid_destroy(ds_enemy_stats_csv);

#endregion Enemy Stats



#region Camera

	// Resolution
	view_width = 640;
	view_height = 360;

	// Scaling (hardcoded for now)
	window_scale = 1;

	// Set size of window and center it
	window_set_size(view_width * window_scale, view_height * window_scale);
	alarm[0] = 1;

	surface_resize(application_surface, view_width * window_scale, view_height * window_scale);

#endregion Camera



#region Levels TODO



#endregion Levels TODO



#region Items TODO



#endregion Items TODO



#region Save Game TODO



#endregion Save Game TODO



#region Load Game TODO



#endregion Load Game
