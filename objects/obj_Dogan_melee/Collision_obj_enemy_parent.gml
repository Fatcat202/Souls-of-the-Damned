/// @description Insert description here
// You can write your code in this editor

// Pull stats
var attack_index = scr_find_attack_index("Dogan_poison")
	
var dmg_dice_num = global.attack_stats[attack_index].dmg_die_num
var dmg_dice_sides = global.attack_stats[attack_index].dmg_die_sides
var dmg_mod = global.attack_stats[attack_index].dmg_mod
var duration = global.attack_stats[attack_index].duration

if(poison_coating == true)
{
	scr_apply_dot(dmg_dice_num, dmg_dice_sides, dmg_mod, 0.5, duration, true, true);
}

if sneak_attack == true
{
	damage = scr_critical(damage, 50, 2)
} scr_critical(damage, 10, 1.5)

if(other.can_damage) scr_damage(damage);

scr_knockback(kb_percent)