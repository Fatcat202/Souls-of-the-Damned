// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_swap_com_pause(xx = x, yy = y)
{
	// Swap all characters from regular objects to com pause objects
	
	
	// Set total_active_com_pause_pcs
	global.total_active_com_pause_pcs = global.total_active_pcs;
	

	// Checks if players exist, if it does replace with combat pause object
	// Loop through all active pcs
	for(var n = 0; n < global.total_active_pcs; n++)
	{
		// Loop through all potential npcs
		for(var i = 1; i <= 8; i++)
		{
			// If player, replace player with com pause player
			if(object_get_name(global.arr_players[i]) == global.active_pc_list[| n])
			{
				var combat_pause_char = instance_create_layer(xx, yy, "Combat_Paused", global.arr_combat_pause[i]);	
					// Transfer Stats
					scr_transfer_variables(combat_pause_char, obj_player_parent.id)

				// If npc, replace with combat pause npc
			}else if(object_get_name(global.arr_npc[i]) == global.active_pc_list[| n])
			{
				var combat_pause_npc = instance_create_layer(global.arr_npc[i].x, global.arr_npc[i].y, "Combat_Paused", global.arr_combat_pause_npc[i]);
					// Transfer stats
					scr_transfer_variables(combat_pause_npc, global.arr_npc[i])
				
			}
		}
	}
	
	
	// Swap enemies
	with(obj_enemy_parent)
	{
		for(var i = 1; i <= global.enemy_index_length; i++)
		{
			if(object_get_name(global.arr_enemy[i]) == object_get_name(object_index))
			{
				var combat_pause_enemy = instance_create_layer(x, y, "Combat_Paused", global.arr_com_pause_enemy[i]);	
			
				// Transfer Stats
				scr_enemy_transfer_variables(combat_pause_enemy, id)
			}
		}
	}
	
	// Swap Leviathan if he exists
	if(instance_exists(obj_leviathan))
	{
		var combat_pause_enemy = instance_create_layer(obj_leviathan.x, obj_leviathan.y, "Combat_Paused", obj_leviathan_com_pause)
		scr_transfer_variables(obj_leviathan_com_pause, obj_leviathan)	
	}
}