/// @description On Collision


scr_damage(damage);
if(other.active_health != 1) scr_apply_dot(scr_roll_dice(1, 4), 1, 4, 0);
scr_knockback(0.45);