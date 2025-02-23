/// @description Insert description here


// Deals 1.5x normal damage
if(other.can_damage) scr_damage(damage);

// Stuns enemy for 120 frames
with(other) scr_stun(game_get_speed(gamespeed_fps) * 2);
