/// @description Insert description here
// You can write your code in this editor



if(poison_coating == true)
{
	scr_apply_dot(3, 30, 2, 0);
}


// If can crit, apply crit chance
if(can_crit == true)
{
	// Crit chance of 50%
	var ran = random(100)
	if(ran > 50)
	{
		scr_damage(global.player_stats[index].main_atk_dmg * 1.5);
	} else scr_damage(global.player_stats[index].main_atk_dmg);
} else
{
	scr_damage(global.player_stats[index].main_atk_dmg);
}