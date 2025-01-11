
function scr_regain_armor()
{
	var total = game_get_speed(gamespeed_fps) / global.regain_armor_speed;
	if(active_armor < max_armor)
	{
		armor_tick++
		if(armor_tick >= total)
		{
			active_armor++;
			armor_tick = 0;
		}
	}
}