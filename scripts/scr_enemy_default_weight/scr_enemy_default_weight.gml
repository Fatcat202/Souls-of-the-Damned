
function scr_enemy_default_weight(enemy_object, dis, view_range)
{
	// Variables to determine default weight of players for enemy AI
	
	// Set initial weight based on range
	var weight = round(scr_map_value(dis, view_range, 5, 0, 70));
	
	return weight;
}