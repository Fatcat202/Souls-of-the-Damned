/// @description Initialization


// Pull stats
var attack_index = scr_find_attack_index("Garyrager_rager_toss")
var duration = global.attack_stats[attack_index].duration;


// Start timer for returning to Gary if a enemy is not hit
alarm[0] = game_get_speed(gamespeed_fps) * duration

path_return = path_add()


