/// @description On Hit

// If target cannot be damaged, end early
if(other.can_damage == false) return;
	
scr_damage(global.enemy_stats[index].melee_atk_dmg_1);

scr_knockback(0.45);