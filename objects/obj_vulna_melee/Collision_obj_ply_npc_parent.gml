/// @description On Collision

// DOT stats
var dmg_dice_num = 1
var dmg_dice_sides = 4
var dmg_mod = 0

if(!other.can_damage) return;

scr_damage(damage);
if(other.active_health != 1) scr_apply_dot(dmg_dice_num, dmg_dice_sides, dmg_mod, 1, 4, 0);
scr_knockback(0.45);