/// @description Insert description here
// You can write your code in this editor

// Pull stats
var attack_index = scr_find_attack_index("Dogan_poison")
	
var dmg_dice_num = global.attack_stats[attack_index].dmg_dice_num
var dmg_dice_sides = global.attack_stats[attack_index].dmg_dice_sides
var dmg_mod = global.attack_stats[attack_index].dmg_mod

if(poison_coating == true)
{
	scr_apply_dot(dmg_dice_num, dmg_dice_sides, dmg_mod, 30, 2, 0);
}

if sneak_attack == true
{
	damage = scr_critical(damage, 50, 2)
} scr_critical(damage, 10, 1.5)

if(other.can_damage) scr_damage(damage);