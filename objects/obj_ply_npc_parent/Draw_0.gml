/// @description Drawing Sprite

// Draw A* Paths
//if(path_exists(follow_path)) draw_path(follow_path, x, y, false);
if(path_exists(move_path)) draw_path(move_path, x, y, false);
//if(path_exists(attack_path)) draw_path(attack_path, x, y, false);


event_inherited();

#region HP Healthbar

	var health_percent = (active_health / max_hp) * 100;

	// Only show healthbar if damage has been taken
	if(health_percent != 100)
	{
		draw_healthbar(
		x - 25,  	//The x coordinate of the left of the healthbar
		y - 40,	// The y coordinate of the top of the healthbar
		x + 25,	//The x coordinate of the right of the healthbar
		y - 35,	//The y coordinate of the bottom of the healthbar
		health_percent,		//The variable which defines total health (between 0 and 100)
		c_black, //The colour of the background for the bar
		c_red,	 //The colour of the bar when at no health (0)
		c_green,	//The colour of the bar when at full health (100)
		0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
		true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
		true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
		);
	}
	
#endregion


#region Armor Healthbar

	var armor_percent = (active_armor / max_armor) * 100;

	// Only show healthbar if damage has been taken
	if(armor_percent != 100 && armor_percent > 0)
	{
		draw_healthbar(
		x - 25,  	//The x coordinate of the left of the healthbar
		y - 45,	// The y coordinate of the top of the healthbar
		x + 25,	//The x coordinate of the right of the healthbar
		y - 40,	//The y coordinate of the bottom of the healthbar
		armor_percent,		//The variable which defines total health (between 0 and 100)
		c_black, //The colour of the background for the bar
		c_blue,	 //The colour of the bar when at no health (0)
		c_blue,	//The colour of the bar when at full health (100)
		0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
		true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
		true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
		);
	}
	
#endregion

