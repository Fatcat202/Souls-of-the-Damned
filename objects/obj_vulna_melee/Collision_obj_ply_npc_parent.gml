/// @description On Collision


scr_damage(global.enemy_stats[index].melee_atk_dmg_1);
if(other.active_health != 1) scr_apply_dot(3, 1, 4, 0);
scr_knockback(0.45);