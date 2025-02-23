function scr_critical(damage, chance, modifier)
{

	var rand = irandom_range(0, 100);
	if(rand <= chance)
	{
		show_debug_message("Critical Hit! " + string(floor(damage * modifier)));
		return floor(damage * modifier);
	} else return damage;
}