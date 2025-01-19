function scr_player_default_weight(player_object, dis, view_range)
{
	// Variables to determine default weight of players for enemy AI
	
	// Set initial weight based on range
	var weight = round(scr_map_value(dis, view_range, 5, 0, 70));
	if(player_object.is_dead == true) weight = 0;
	
	return weight;
}