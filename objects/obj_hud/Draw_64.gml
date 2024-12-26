/// @description HUD GUI


var xx = display_get_gui_width() / 2;
var yy = display_get_gui_height() / 2;



// Display if not combat paused
if(global.game_combat_paused == false)
{
	
	#region HP Healthbar
		var health_percent = (obj_player_parent.active_health / obj_player_parent.max_hp) * 100;

		draw_healthbar(
		xx - 100,  	//The x coordinate of the left of the healthbar
		655,	// The y coordinate of the top of the healthbar
		xx + 100,	//The x coordinate of the right of the healthbar
		645,	//The y coordinate of the bottom of the healthbar
		health_percent,		//The variable which defines total health (between 0 and 100)
		c_black, //The colour of the background for the bar
		c_red,	 //The colour of the bar when at no health (0)
		c_lime,	//The colour of the bar when at full health (100)
		0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
		true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
		true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
		);
	#endregion HP Healthbar


	#region Armor Healthbar
	var armor_percent = (obj_player_parent.active_armor / obj_player_parent.max_armor) * 100;


	draw_healthbar(
	xx - 100,  	//The x coordinate of the left of the healthbar
	640,	// The y coordinate of the top of the healthbar
	xx + 100,	//The x coordinate of the right of the healthbar
	630,	//The y coordinate of the bottom of the healthbar
	armor_percent,		//The variable which defines total health (between 0 and 100)
	c_black, //The colour of the background for the bar
	c_blue,	 //The colour of the bar when at no health (0)
	c_blue,	//The colour of the bar when at full health (100)
	0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
	true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
	true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
	);
	#endregion Armor Healthbar


	#region Attacks




	#endregion Attacks
	
	
	#region Player Name
	
		// Displays text stating player name
		draw_text(xx, 610, global.arr_players[global.selected_char].player_name)
		draw_set_halign(fa_center);
		
	#endregion Player Name


	// Display if combat paused
} else if(global.game_combat_paused == true)
{
	
	#region HP Healthbar
		var health_percent = (global.arr_combat_pause[global.selected_char].active_health / global.arr_combat_pause[global.selected_char].max_hp) * 100;

		draw_healthbar(
		xx - 100,  	//The x coordinate of the left of the healthbar
		655,	// The y coordinate of the top of the healthbar
		xx + 100,	//The x coordinate of the right of the healthbar
		645,	//The y coordinate of the bottom of the healthbar
		health_percent,		//The variable which defines total health (between 0 and 100)
		c_black, //The colour of the background for the bar
		c_red,	 //The colour of the bar when at no health (0)
		c_lime,	//The colour of the bar when at full health (100)
		0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
		true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
		true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
		);
	#endregion HP Healthbar


	#region Armor Healthbar
		var armor_percent = (global.arr_combat_pause[global.selected_char].active_armor / global.arr_combat_pause[global.selected_char].max_armor) * 100;

		draw_healthbar(
		xx - 100,  	//The x coordinate of the left of the healthbar
		640,	// The y coordinate of the top of the healthbar
		xx + 100,	//The x coordinate of the right of the healthbar
		630,	//The y coordinate of the bottom of the healthbar
		armor_percent,		//The variable which defines total health (between 0 and 100)
		c_black, //The colour of the background for the bar
		c_blue,	 //The colour of the bar when at no health (0)
		c_blue,	//The colour of the bar when at full health (100)
		0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
		true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
		true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
		);
	#endregion Armor Healthbar
	
	
	#region Player Name
	
		// Displays text stating player name
		draw_text(xx, 610, global.arr_combat_pause[global.selected_char].player_name);
		draw_set_halign(fa_center);
			
	#endregion Player Name
	
	
	#region Combat Paused
	
		// Displays text stating player name
		draw_text(xx, 100, "Combat Paused");
		draw_set_halign(fa_center);
			
	#endregion Combat Paused
	
	
}