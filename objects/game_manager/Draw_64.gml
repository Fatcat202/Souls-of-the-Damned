/// @description HUD GUI


var xx = display_get_gui_width() / 2;
var yy = display_get_gui_height() / 2;
var healthbar_thickness = 10;
var hp_healthbar_y_top = 655;
var armor_healthbar_y_top = 640;
var healthbar_half_width = 100;
var hp_healthbar_y_bottom = hp_healthbar_y_top + healthbar_thickness;
var armor_healthbar_y_bottom = armor_healthbar_y_top + healthbar_thickness


#region Combat Round
	
	// Displays text stating combat round
	draw_text(xx, 50, "Combat Round: " + string(global.combat_round));
	draw_set_halign(fa_center);
		
#endregion Combat Round


	
#region Not Combat Paused

// Check if combat paused
if(!global.game_combat_paused)
{

	#region HP Healthbar
		var health_percent = (obj_player_parent.active_health / obj_player_parent.max_hp) * 100;

		draw_healthbar(
		xx - healthbar_half_width,  	//The x coordinate of the left of the healthbar
		hp_healthbar_y_top,	// The y coordinate of the top of the healthbar
		xx + healthbar_half_width,	//The x coordinate of the right of the healthbar
		hp_healthbar_y_bottom,	//The y coordinate of the bottom of the healthbar
		health_percent,		//The variable which defines total health (between 0 and 100)
		c_black, //The colour of the background for the bar
		c_red,	 //The colour of the bar when at no health (0)
		c_green,	//The colour of the bar when at full health (100)
		0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
		true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
		true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
		);
		
		// Displaying health over healthbar
		draw_text(xx, hp_healthbar_y_top - (healthbar_thickness / 2), "HP: " + string(obj_player_parent.active_health) + " / " + string(obj_player_parent.max_hp))
		draw_set_halign(fa_center);
		
	#endregion HP Healthbar


	#region Armor Healthbar
		var armor_percent = (obj_player_parent.active_armor / obj_player_parent.max_armor) * 100;


		draw_healthbar(
		xx - healthbar_half_width,  	//The x coordinate of the left of the healthbar
		armor_healthbar_y_top,	// The y coordinate of the top of the healthbar
		xx + healthbar_half_width,	//The x coordinate of the right of the healthbar
		armor_healthbar_y_bottom,	//The y coordinate of the bottom of the healthbar
		armor_percent,		//The variable which defines total health (between 0 and 100)
		c_black, //The colour of the background for the bar
		c_blue,	 //The colour of the bar when at no health (0)
		c_blue,	//The colour of the bar when at full health (100)
		0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
		true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
		true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
		);
		
		// Displaying armor over healthbar
		draw_text(xx, armor_healthbar_y_top - (healthbar_thickness / 2), "Armor: " + string(obj_player_parent.active_armor) + " / " + string(obj_player_parent.max_armor))
		draw_set_halign(fa_center);
		
	#endregion Armor Healthbar


	#region Attacks TODO




	#endregion Attacks
	
	
	#region Player Name Text
	
		// Displays text stating player name
		draw_text(xx, armor_healthbar_y_top - 20, global.arr_players[global.char_index].player_name + "    Level: " + string(global.player_level))
		draw_set_halign(fa_center);
		
	#endregion Player Name Text

#endregion Not Combat Paused


#region Combat Paused

	// Display if combat paused
} else if(global.game_combat_paused == true)
{
	
	#region HP Healthbar
		var health_percent = (global.arr_combat_pause[global.selected_char].active_health / global.arr_combat_pause[global.selected_char].max_hp) * 100;

		draw_healthbar(
		xx - healthbar_half_width,  	//The x coordinate of the left of the healthbar
		hp_healthbar_y_top,	// The y coordinate of the top of the healthbar
		xx + healthbar_half_width,	//The x coordinate of the right of the healthbar
		hp_healthbar_y_bottom,	//The y coordinate of the bottom of the healthbar
		health_percent,		//The variable which defines total health (between 0 and 100)
		c_black, //The colour of the background for the bar
		c_red,	 //The colour of the bar when at no health (0)
		c_green,	//The colour of the bar when at full health (100)
		0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
		true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
		true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
		);
		
		// Displaying health over healthbar
		draw_text(xx, hp_healthbar_y_top - (healthbar_thickness / 2), "HP: " + string(global.arr_combat_pause[global.selected_char].active_health) + " / " + string(global.arr_combat_pause[global.selected_char].max_hp))
		draw_set_halign(fa_center);
		
	#endregion HP Healthbar


	#region Armor Healthbar
		var armor_percent = (global.arr_combat_pause[global.selected_char].active_armor / global.arr_combat_pause[global.selected_char].max_armor) * 100;

		draw_healthbar(
		xx - 100,  	//The x coordinate of the left of the healthbar
		armor_healthbar_y_top,	// The y coordinate of the top of the healthbar
		xx + 100,	//The x coordinate of the right of the healthbar
		armor_healthbar_y_bottom,	//The y coordinate of the bottom of the healthbar
		armor_percent,		//The variable which defines total health (between 0 and 100)
		c_black, //The colour of the background for the bar
		c_blue,	 //The colour of the bar when at no health (0)
		c_blue,	//The colour of the bar when at full health (100)
		0,		//Where the bar is "anchored" (0 = left, 1 = right, 2 = top, 3 = bottom)
		true,	//Whether the bar's background is drawn (true) or not (false). If false, the backcol argument is disregarded.
		true	//Whether the bar's elements have a 1px wide black border (true) or not (false).
		);
		
		// Displaying armor over healthbar
		draw_text(xx, armor_healthbar_y_top - (healthbar_thickness / 2), "Armor: " + string(global.arr_combat_pause[global.selected_char].active_armor) + " / " + string(global.arr_combat_pause[global.selected_char].max_armor))
		draw_set_halign(fa_center);
		
	#endregion Armor Healthbar
	
	
	#region Attacks TODO
	
	
	
	#endregion Attacks
	
	
	#region Player Name text
	
		// Displays text stating player name
		draw_text(xx, armor_healthbar_y_top - 20, global.arr_combat_pause[global.selected_char].player_name + "    Level: " + string(global.player_level));
		draw_set_halign(fa_center);
			
	#endregion Player Name Text
	
	
	#region Combat Paused Text
	
		// Displays text stating player name
		draw_text(xx, 100, "Combat Paused");
		draw_set_halign(fa_center);
			
	#endregion Combat Paused Text

}

#endregion Not Combat Paused

