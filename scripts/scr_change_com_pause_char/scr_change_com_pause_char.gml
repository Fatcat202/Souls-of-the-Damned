
function scr_change_com_pause_char(change_char)
{
	// **REPLACE CHARACTERS**

	// Bypass if attempting to swap to active character
	if(global.selected_char == change_char) return;
	
	var current_total_pcs = array_length(global.arr_active_pcs)

	scr_data_cross_reference(change_char - 1)
	
	
	
	// Create npc in place of player
	var npc = instance_create_layer(obj_com_pause_parent.x, obj_com_pause_parent.y, "Combat_Paused", global.arr_combat_pause_npc[global.char_index]);
		// Transfer stats to npc from player
	
		// Health and armor
		npc.active_health = active_health;
		npc.max_hp = max_hp
		npc.active_armor = active_armor;
		npc.max_armor = max_armor
	
		npc.active_power = active_power;
	
		// Cooldowns
		npc.cooldown_1 = cooldown_1;
		npc.cooldown_timer_1 = cooldown_timer_1;
		npc.cooldown_time_1 = cooldown_time_1;
		npc.cooldown_2 = cooldown_2;
		npc.cooldown_timer_2 = cooldown_timer_2;
		npc.cooldown_time_2 = cooldown_time_2;
		npc.cooldown_3 = cooldown_3;
		npc.cooldown_timer_3 = cooldown_timer_3;
		npc.cooldown_time_3 = cooldown_time_3;
		npc.cooldown_4 = cooldown_4;
		npc.cooldown_timer_4 = cooldown_timer_4;
		npc.cooldown_time_4 = cooldown_time_4;

		// Destroy player
		instance_destroy(obj_com_pause_parent);


	// Create player in place of npc
	var player = instance_create_layer(global.arr_combat_pause_npc[global.char_index].x, global.arr_combat_pause_npc[global.char_index].y, "Combat_Paused", global.arr_combat_pause[global.char_index]);
		// Transfer stats to player from npc
	
		// Health and armor
		player.active_health = global.arr_combat_pause_npc[global.char_index].active_health;
		player.max_hp = global.arr_combat_pause_npc[global.char_index].max_hp
		player.active_armor = global.arr_combat_pause_npc[global.char_index].active_armor;
		player.max_armor = global.arr_combat_pause_npc[global.char_index].max_armor
	
		player.active_power = global.arr_combat_pause_npc[global.char_index].active_power;
	
		// Cooldowns
		player.cooldown_1 = global.arr_combat_pause_npc[global.char_index].cooldown_1;
		player.cooldown_timer_1 = global.arr_combat_pause_npc[global.char_index].cooldown_timer_1;
		player.cooldown_time_1 = global.arr_combat_pause_npc[global.char_index].cooldown_time_1;
		player.cooldown_2 = global.arr_combat_pause_npc[global.char_index].cooldown_2;
		player.cooldown_timer_2 = global.arr_combat_pause_npc[global.char_index].cooldown_timer_2;
		player.cooldown_time_2 = global.arr_combat_pause_npc[global.char_index].cooldown_time_2;
		player.cooldown_3 = global.arr_combat_pause_npc[global.char_index].cooldown_3;
		player.cooldown_timer_3 = global.arr_combat_pause_npc[global.char_index].cooldown_timer_3;
		player.cooldown_time_3 = global.arr_combat_pause_npc[global.char_index].cooldown_time_3;
		player.cooldown_4 = global.arr_combat_pause_npc[global.char_index].cooldown_4;
		player.cooldown_timer_4 = global.arr_combat_pause_npc[global.char_index].cooldown_timer_4;
		player.cooldown_time_4 = global.arr_combat_pause_npc[global.char_index].cooldown_time_4;

	// Destroy npc
	instance_destroy(global.arr_combat_pause_npc[global.char_index]);

	// Update selected_char
	global.selected_char = change_char;
}