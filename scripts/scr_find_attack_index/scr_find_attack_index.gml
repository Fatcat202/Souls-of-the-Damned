function scr_find_attack_index(attack_name)
{
	// Locate position of attack in attack_stats array to assign stats with index
	var attack_index = 0
	
	for(var i = 1; i <= global.attack_index_length; i++)
	{
		if (attack_name == string(global.arr_attack_index_name[i]))
		{
			attack_index = i;
			
			return attack_index;
		}
	}
	
	// **DEBUG**
	if(debug_mode)
	{
		if(attack_index != 0)
		{
			show_debug_message("attack_index: " + string(attack_index))
		}else show_error("NO ATTACK INDEX LOCATED", true)
	}
}