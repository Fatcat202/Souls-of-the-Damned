/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited()

// Move towards enemy for melee attack if tracked and attack state active
if(command_state == "attack_state")
{
	scr_track_enemy_melee();
}

