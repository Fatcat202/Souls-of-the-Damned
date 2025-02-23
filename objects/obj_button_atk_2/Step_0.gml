/// @description Update Sprite Index and Text

event_inherited()

// Check if combat paused
if(global.game_combat_paused || global.show_inventory)
{
	if(obj_com_pause_parent.active_power == 2)
	{
		// Set sprite frame to frame 1
		image_speed = 0;
		image_index = 1;
	}
} else // If not combat paused
{
	if(obj_player_parent.active_power == 2)
	{
		// Set sprite frame to frame 1
		image_speed = 0;
		image_index = 1;
	}
}



var attack = 2;
var attack_name = global.player_attacks_active[# global.selected_char, attack]
var attack_index = scr_find_attack_index(attack_name)

// Find title and description
name = global.attack_stats[attack_index].title
description = global.attack_stats[attack_index].desc

// Find Sprite
if(global.attack_stats[attack_index].spr != -1)
{
	sprite_index = global.attack_stats[attack_index].spr
}else
{
	sprite_index = spr_atk_2
}