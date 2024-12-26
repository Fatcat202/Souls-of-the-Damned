
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
	instance_destroy(obj_player_parent);


// Create player in place of npc
var player = instance_create_layer(global.arr_npc[change_char].x, global.arr_npc[change_char].y, "Players", global.arr_players[change_char]);
	// Transfer stats
	
	// Health and armor
	player.active_health = active_health;
	player.max_hp = max_hp
	player.active_armor = active_armor;
	player.max_armor = max_armor
	
	player.active_power = active_power;
	
	// Cooldowns
	player.cooldown_1 = cooldown_1;
	player.cooldown_timer_1 = cooldown_timer_1;
	player.cooldown_time_1 = cooldown_time_1;
	player.cooldown_2 = cooldown_2;
	player.cooldown_timer_2 = cooldown_timer_2;
	player.cooldown_time_2 = cooldown_time_2;
	player.cooldown_3 = cooldown_3;
	player.cooldown_timer_3 = cooldown_timer_3;
	player.cooldown_time_3 = cooldown_time_3;
	player.cooldown_4 = cooldown_4;
	player.cooldown_timer_4 = cooldown_timer_4;
	player.cooldown_time_4 = cooldown_time_4;

	// Destroy npc
	instance_destroy(global.arr_npc[change_char]);


// Update selected_char
global.selected_char = change_char;

}
