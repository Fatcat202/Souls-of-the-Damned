/// @description HUD GUI


#region HP Healthbar

var health_percent = (obj_player_parent.active_health / obj_player_parent.max_hp) * 100;
var xx1 = display_get_gui_width() / 2;

	draw_healthbar(
	xx1 - 100,  	//The x coordinate of the left of the healthbar
	655,	// The y coordinate of the top of the healthbar
	xx1 + 100,	//The x coordinate of the right of the healthbar
	645,	//The y coordinate of the bottom of the healthbar
	health_percent,		//The variable which defines total health (between 0 and 100)
	c_black, //The colour of the background for the bar
	c_red,	 //The colour of the bar when at no health (0)
	c_lime,	//The colour of the bar when at full health (100)
	0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
	true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
	true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
	);

	
#endregion


#region Armor Healthbar

var armor_percent = (obj_player_parent.active_armor / obj_player_parent.max_armor * 100);
var xx2 = display_get_gui_width() / 2;

	draw_healthbar(
	xx2 - 100,  	//The x coordinate of the left of the healthbar
	640,	// The y coordinate of the top of the healthbar
	xx2 + 100,	//The x coordinate of the right of the healthbar
	630,	//The y coordinate of the bottom of the healthbar
	armor_percent,		//The variable which defines total health (between 0 and 100)
	c_black, //The colour of the background for the bar
	c_blue,	 //The colour of the bar when at no health (0)
	c_blue,	//The colour of the bar when at full health (100)
	0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
	true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
	true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
	);

	
#endregion