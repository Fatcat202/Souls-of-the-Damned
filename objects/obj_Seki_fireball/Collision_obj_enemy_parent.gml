/// @description Hitting enemy
// You can write your code in this editor

// Change sprite to explosion on impact
sprite_index = Spr_explosion;
speed = 0;

// Deal damage
scr_damage(10);

// Destruction on explosion animation end
alarm[0] = game_get_speed(gamespeed_fps) / 4;