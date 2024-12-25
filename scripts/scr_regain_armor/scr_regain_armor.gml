
function scr_regain_armor()
{
	if(can_regain_armor == true && active_armor < max_armor)
	{
		if(active_armor >= 0)
		{
			can_regain_armor = false
			alarm[6] = game_get_speed(gamespeed_fps) / global.regain_armor_speed;
			active_armor++;
		}
	}
}