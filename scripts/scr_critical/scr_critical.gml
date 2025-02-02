function scr_critical(damage, chance, modifier)
{
	// d100 check against chance to see if a crit is applied
	
	var rand = irandom_range(0, 100);
	if(rand >= chance)
	{
		return damage * modifier;
	} else return damage;
}