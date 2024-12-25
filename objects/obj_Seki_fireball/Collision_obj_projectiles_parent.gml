/// @description Destroy


// Change sprite to explosion on impact
sprite_index = Spr_explosion;
speed = 0;
	
// Destruction on explosion animation end
alarm[0] = game_get_speed(gamespeed_fps) / 4;