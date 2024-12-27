/// @description Insert description here


// Deals 1.5x normal damage
scr_damage(global.player_stats[global.selected_char].main_atk_dmg * 1.5);

// Stuns enemy for 120 frames
scr_stun(game_get_speed(gamespeed_fps) * 2);
