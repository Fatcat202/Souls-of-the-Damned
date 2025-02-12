/// @description Hitting Enemy

// Set attack state
state = "attacking"

// Find enemy index
enemy = other.object_index

// Enact DOT
var temp_dmg = 4
scr_apply_dot(temp_dmg, 30, duration, true)

// Set object sprite
//object_set_sprite(object_index, spr_Rager_flurry)