
function scr_change_com_pause_char(change_char)
{
	// **REPLACE CHARACTERS**

	// Bypass if attempting to swap to active character
	if(global.selected_char == change_char) return;
	
	scr_data_cross_reference(change_char - 1)

	// Create npc in place of player
	var npc = instance_create_layer(x, y, "Combat_Paused", global.arr_combat_pause_npc[index]);
		// Transfer stats to npc from player
	
		// Health and armor
		npc.active_health = active_health;
		npc.max_hp = max_hp;
		npc.active_armor = active_armor;
		npc.max_armor = max_armor;
		npc.non_lethal = non_lethal;
	
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
	
		// Status
		npc.can_damage = can_damage;
		npc.can_attack = can_attack;
		npc.can_regain_armor = can_regain_armor;
		npc.can_move = can_move;
		npc.stunned = stunned;
		npc.is_flyer = is_flyer;
		npc.blocking = blocking;
		npc.poison_coating = poison_coating;
		npc.knocked_back = knocked_back;
		npc.can_control = can_control;
		npc.can_heal = can_heal;
		npc.index = index;
		npc.active_power = active_power;
		npc.command_state = command_state;
	
		// Timers
		npc.dot_tick = dot_tick;
		npc.non_lethal_tick = non_lethal_tick;
		npc.armor_regain_cooldown_time = armor_regain_cooldown_time
		npc.armor_regain_cooldown_timer = armor_regain_cooldown_timer
		npc.stun_cooldown_time = stun_cooldown_time;
		npc.stun_cooldown_timer = stun_cooldown_timer;
		npc.blocking_cooldown_timer = blocking_cooldown_timer;
		npc.poison_coating_timer = poison_coating_timer;
		npc.poison_coating_timer = poison_coating_time;
		npc.knockback_cooldown_timer = knockback_cooldown_timer;
		npc.knockback_cooldown_time = knockback_cooldown_time;
		

		// Destroy player
		instance_destroy(obj_com_pause_parent);


	// Create player in place of npc
	var player = instance_create_layer(global.arr_combat_pause_npc[global.char_index].x, global.arr_combat_pause_npc[global.char_index].y, "Combat_Paused", global.arr_combat_pause[global.char_index]);
		// Transfer stats to player from npc		
		
		// Health and armor
		player.active_health = global.arr_combat_pause_npc[global.char_index].active_health;
		player.max_hp = global.arr_combat_pause_npc[global.char_index].max_hp;
		player.active_armor = global.arr_combat_pause_npc[global.char_index].active_armor;
		player.max_armor = global.arr_combat_pause_npc[global.char_index].max_armor;
		player.non_lethal = global.arr_combat_pause_npc[global.char_index].non_lethal;
	
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
	
		// Status
		player.can_damage = global.arr_combat_pause_npc[global.char_index].can_damage;
		player.can_attack = global.arr_combat_pause_npc[global.char_index].can_attack;
		player.can_regain_armor = global.arr_combat_pause_npc[global.char_index].can_regain_armor;
		player.can_move = global.arr_combat_pause_npc[global.char_index].can_move;
		player.stunned = global.arr_combat_pause_npc[global.char_index].stunned;
		player.is_flyer = global.arr_combat_pause_npc[global.char_index].is_flyer;
		player.blocking = global.arr_combat_pause_npc[global.char_index].blocking;
		player.poison_coating = global.arr_combat_pause_npc[global.char_index].poison_coating;
		player.knocked_back = global.arr_combat_pause_npc[global.char_index].knocked_back;
		player.can_control = global.arr_combat_pause_npc[global.char_index].can_control;
		player.can_heal = global.arr_combat_pause_npc[global.char_index].can_heal;
		player.index = global.arr_combat_pause_npc[global.char_index].index;
		player.active_power = global.arr_combat_pause_npc[global.char_index].active_power;
		player.command_state = global.arr_combat_pause_npc[global.char_index].command_state;
	
		// Timers
		player.dot_tick = global.arr_combat_pause_npc[global.char_index].dot_tick;
		player.non_lethal_tick = global.arr_combat_pause_npc[global.char_index].non_lethal_tick;
		player.armor_regain_cooldown_time = global.arr_combat_pause_npc[global.char_index].armor_regain_cooldown_time
		player.armor_regain_cooldown_timer = global.arr_combat_pause_npc[global.char_index].armor_regain_cooldown_timer
		player.stun_cooldown_time = global.arr_combat_pause_npc[global.char_index].stun_cooldown_time;
		player.stun_cooldown_timer = global.arr_combat_pause_npc[global.char_index].stun_cooldown_timer;
		player.blocking_cooldown_timer = global.arr_combat_pause_npc[global.char_index].blocking_cooldown_timer;
		player.poison_coating_timer = global.arr_combat_pause_npc[global.char_index].poison_coating_timer;
		player.poison_coating_timer = global.arr_combat_pause_npc[global.char_index].poison_coating_time;
		player.knockback_cooldown_timer = global.arr_combat_pause_npc[global.char_index].knockback_cooldown_timer;
		player.knockback_cooldown_time = global.arr_combat_pause_npc[global.char_index].knockback_cooldown_time;

		
	// Destroy npc
	instance_destroy(global.arr_combat_pause_npc[global.char_index]);
	
	// Update selected_char
	global.selected_char = change_char;
}