

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
			global.arr_combat_pause[1] = obj_combat_pause_Alok;
			global.arr_combat_pause[2] = obj_combat_pause_Seki;
			global.arr_combat_pause[3] = obj_combat_pause_Xan;
			global.arr_combat_pause[4] = obj_combat_pause_Garyrager;
			global.arr_combat_pause[5] = obj_combat_pause_Dogan;
			global.arr_combat_pause[6] = obj_combat_pause_Darien;
			global.arr_combat_pause[7] = obj_combat_pause_Bronwin;
			global.arr_combat_pause[8] = obj_combat_pause_Nyx;
			
			
			/* Attempt at reading players and npcs in Players layer and assigning them to an array
			var num_pcs = layer_get_all_elements("Players");
			show_debug_message("Player Count: " + string(num_pcs));
			global.active_pcs = ds_list_create();
			
			for(var i = 0; i < array_length(num_pcs); i++)
			{
				if(layer_get_element_type(num_pcs[i] == layerelementtype_instance))
				{
					with(asset_object)
					{ 
						if(asset_has_tags(object_index, "player", asset_object)) ds_list_add(global.active_pcs, id)
				
					}else if(asset_has_tags(object_index, "npc", asset_object)) ds_list_add(global.active_pcs, id)

				}
			}
			
			show_debug_message("active_pcs: " + string(global.active_pcs))
			*/
			
			
		#endregion Swapping Characters
	
	#endregion Databse
	
	
	#region Pausing
	
			// Sets default game pause state
			global.game_paused = false
		
			// Sets default game combat pause state
			global.game_combat_paused = false
	
			// Sets default of if a pause can occor to false
			global.can_pause = false;
	
			// Sets default of if a pause can occor to false
			global.can_combat_pause = false;
			
			// Creates combat_pause_surf
			global.combat_pause_surf = -1;
			
			
	#endregion Pausing
	
	
	// Initialize player level
	global.player_level = 1;
	
	// Sets default if a cutscene is active to false
	global.cutscene_active = false;

	// Sets time it takes to start regaining armor in seconds
	global.regain_armor_timer = 6;
	
	// Sets speed at which armor regains, divided with fps
	global.regain_armor_speed = 20;
	
	// Sets how many pixel away objects must be from another object to collide 
	// (x2 if both move towards each other)
	global.collision_distance = 5;
	
	// Sets starting combat round for arena
	global.combat_round = 1;
	
	
		
	
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
	global.arr_player_index_num[n] = n

}


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

// Create enemy_stats struct array
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
	//global.enemy_stats[yy].is_flyer = real(ds_grid_get(ds_enemy_stats_csv, xx, yy));

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

#endregion Enemy Stats



#region Levels TODO



#endregion Levels



#region Items TODO



#endregion Items



#region Combat Pausing TODO



#endregion



#region Save Game TODO



#endregion Save Game



#region Load Game TODO



#endregion Load Game



