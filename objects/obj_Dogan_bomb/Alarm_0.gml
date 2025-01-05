/// @description Fuse Timer


// Change sprite to explosion on impact
sprite_index = Spr_explosion;
speed = 0;

// Deal damage
scr_damage(10);
	
// Destruction on explosion animation end
triggered = true;
