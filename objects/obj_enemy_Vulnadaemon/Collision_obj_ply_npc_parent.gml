/// @description Attack


if(can_attack == true) // **Melee Attack**
{
	// Stop movement upon collision
	speed = 0;
	
	// Set sprite to attack sprite
	sprite_index = spr_vulna_attack;
	
	scr_damage(global.enemy_stats[index].melee_atk_dmg_1);
	scr_apply_dot(3, .5, 4, 0);
	scr_knockback(0.45);

	// Cooldown
	can_attack = false;
	alarm[1] = game_get_speed(gamespeed_fps) / 2;
}