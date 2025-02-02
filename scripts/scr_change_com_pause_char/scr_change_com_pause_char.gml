
function scr_change_com_pause_char(change_char)
{
	// **REPLACE CHARACTERS**

	// Bypass if attempting to swap to active character
	if(global.selected_char == change_char) return;
	
	scr_data_cross_reference(change_char - 1)

	// Create npc in place of player
	var npc = instance_create_layer(x, y, "Combat_Paused", global.arr_combat_pause_npc[index]);
		
		// Transfer stats to npc from player
		scr_transfer_variables(npc, self)


		// Destroy player
		instance_destroy(obj_com_pause_parent);


	// Create player in place of npc
	var player = instance_create_layer(global.arr_combat_pause_npc[global.char_index].x, global.arr_combat_pause_npc[global.char_index].y, "Combat_Paused", global.arr_combat_pause[global.char_index]);
	
	// Transfer stats to player from npc		
		scr_transfer_variables(player, global.arr_combat_pause_npc[global.char_index])
		
	// Destroy npc
	instance_destroy(global.arr_combat_pause_npc[global.char_index]);
	
	// Update selected_char
	global.selected_char = change_char;
}