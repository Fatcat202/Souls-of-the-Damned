/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Move away from enemy if within range
if(command_state == "attack_state") scr_track_enemy_ranged();