/// @description Insert description here


#region HP Healthbar

var health_percent = (global.player_stats[global.arr_player_index_num[global.selected_char]].active_health / global.player_stats[global.arr_player_index_num[global.selected_char]].hp) * 100;
var xx1 = display_get_gui_width() / 2;

	draw_healthbar(
	0, //xx1 - 25,  	//The x coordinate of the left of the healthbar
	0, //40,	// The y coordinate of the top of the healthbar
	0, //xx1 + 25,	//The x coordinate of the right of the healthbar
	0, //35,	//The y coordinate of the bottom of the healthbar
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

var armor_percent = (global.player_stats[global.arr_player_index_num[global.selected_char]].active_armor / global.player_stats[global.arr_player_index_num[global.selected_char]] * 100);
var xx2 = display_get_gui_width() / 2;

	draw_healthbar(
	xx2 - 25,  	//The x coordinate of the left of the healthbar
	45,	// The y coordinate of the top of the healthbar
	xx2 + 25,	//The x coordinate of the right of the healthbar
	40,	//The y coordinate of the bottom of the healthbar
	armor_percent,		//The variable which defines total health (between 0 and 100)
	c_black, //The colour of the background for the bar
	c_blue,	 //The colour of the bar when at no health (0)
	c_blue,	//The colour of the bar when at full health (100)
	0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
	true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
	true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
	);

	
#endregion