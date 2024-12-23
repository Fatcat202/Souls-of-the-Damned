
function scr_change_char(change_char)
{
	// **REPLACE CHARACTERS**

	// Bypass if attempting to swap to active character
	if(global.selected_char == change_char)
	{
		return;
	}

// Create npc in place of player
var npc = instance_create_layer(obj_player_parent.x, obj_player_parent.y, "Players", global.arr_npc[global.selected_char]);
	// Transfer stats
	npc.active_health = active_health;
	npc.active_power = active_power;

	// Destroy player
	instance_destroy(obj_player_parent);


// Create player in place of npc
var player = instance_create_layer(global.arr_npc[change_char].x, global.arr_npc[change_char].y, "Players", global.arr_players[change_char]);
	// Transfer stats
	player.active_health = global.arr_npc[change_char].active_health;
	player.active_power = active_power;

	// Destroy npc
	instance_destroy(global.arr_npc[change_char]);


// Update selected_char
global.selected_char = change_char;

}
