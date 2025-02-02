function scr_critical(damage, chance, modifier)
{
	// d100 check against chance to see if a crit is applied
	
	var rand = irandom_range(0, 100);
	if(rand <= chance)
	{
		show_debug_message("Critical Hit! " + string(round(damage * modifier)));
		return round(damage * modifier);
	} else return damage;
}