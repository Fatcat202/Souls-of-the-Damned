/// @description Update Sprite Index and Text

event_inherited()


// Check if combat paused
if(global.game_combat_paused || global.show_inventory)
{
	if(obj_com_pause_parent.active_power == 1)
	{
		// Set sprite frame to frame 1
		image_speed = 0;
		image_index = 1;
	}
} else // If not combat paused
{
	if(obj_player_parent.active_power == 1)
	{
		// Set sprite frame to frame 1
		image_speed = 0;
		image_index = 1;
	}
}


// Find title and description
var attack = 1;
var attack_name = global.player_attacks_active[# global.selected_char, attack]
var attack_index = scr_find_attack_index(attack_name)

name = global.attack_stats[attack_index].title
description = global.attack_stats[attack_index].desc
