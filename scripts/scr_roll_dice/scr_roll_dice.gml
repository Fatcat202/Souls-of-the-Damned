function scr_roll_dice(num_dice, num_sides)
{
	// Rolls dice based on total number and sides, then returns total
	
	
	var num = 0;
	for(var i = 0; i < num_dice; i++)
	{
		num += irandom_range(1, num_sides)
	}
	
	return num;
}