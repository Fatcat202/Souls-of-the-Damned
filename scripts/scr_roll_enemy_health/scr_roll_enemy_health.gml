function scr_roll_enemy_health()
{
	var dice_hp_num = global.enemy_stats[index].dice_hp_num
	var dice_hp_sides = global.enemy_stats[index].dice_hp_sides
	var dice_hp_mod = global.enemy_stats[index].dice_hp_mod
	
	// Calculate initial HP, taking max with first die and adding the mod
	var hp = global.enemy_stats[index].dice_hp_sides + dice_hp_mod;
	
	
	// Set max_hp		Subtract 1 due to taking max on first die
	max_hp = hp + scr_roll_dice(dice_hp_num - 1, dice_hp_sides)
	// Set active HP
	active_health = max_hp
}