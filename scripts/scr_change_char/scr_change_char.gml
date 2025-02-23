
function scr_change_char(change_char)
{
	// **REPLACE CHARACTERS**

	// Bypass if attempting to swap to active character
	if(global.selected_char == change_char) return;

	scr_data_cross_reference(change_char - 1)
	
	
	// Create npc in place of player
	var npc = instance_create_layer(obj_player_parent.x, obj_player_parent.y, "Players", global.arr_npc[index]);
		
		// Transfer stats to npc from player
		scr_transfer_variables(npc, self)
	
	// Destroy player
	instance_destroy(obj_player_parent);


	// Create player in place of npc
	var player = instance_create_layer(global.arr_npc[global.char_index].x, global.arr_npc[global.char_index].y, "Players", global.arr_players[global.char_index]);
		
		// Transfer stats to player from npc
		scr_transfer_variables(player, global.arr_npc[global.char_index])
		
		
	// Update selected_char
	global.selected_char = change_char;
	
	// Destroy npc
	instance_destroy(global.arr_npc[global.char_index]);
}
