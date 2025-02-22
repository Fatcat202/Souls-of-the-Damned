/// @description Insert description here
// You can write your code in this editor

draw_self()

// Positions
var x_gap = 50
var y_gap = 50
		
var x_start = x - 70

var top_row = y - y_gap/2
var bottom_row = y + y_gap/2

var text_gap = 26
			
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)



switch (state)
{
	case "new_game": // Start a new game
		
		// Create start button
		if(!instance_exists(obj_button_start))
		{
			var start = instance_create_layer(x, y_bottom - 30, "Popup_Instances", obj_button_start)
		}
		
		
		// Selecting Characters	
		
		// ** TOP ROW **
		var x_pos = x_start;
		draw_text(x_pos, top_row - text_gap, "Alok")
		if(!instance_exists(obj_sel_Alok))
		{
			instance_create_layer(x_pos, top_row, "Popup_Instances", obj_sel_Alok)
		}
		x_pos += x_gap;
		
		draw_text(x_pos, top_row - text_gap, "Dogan")
		if(!instance_exists(obj_sel_Dogan))
		{
			instance_create_layer(x_pos, top_row, "Popup_Instances", obj_sel_Dogan)
		}
		x_pos += x_gap;
		
		draw_text_ext(x_pos, top_row - text_gap - 6, "Gary / Rager", 12, 38)
		if(!instance_exists(obj_sel_Garyrager))
		{
			instance_create_layer(x_pos, top_row, "Popup_Instances", obj_sel_Garyrager)
		}
		x_pos += x_gap;
		
		draw_text(x_pos, top_row - text_gap, "Seki")
		if(!instance_exists(obj_sel_Seki))
		{
			instance_create_layer(x_pos, top_row, "Popup_Instances", obj_sel_Seki)
		}
		
		// ** BOTTOM ROW **
		x_pos = x_start
		
		draw_text(x_pos, bottom_row - text_gap, "Xan")
		if(!instance_exists(obj_sel_Xan))
		{
			instance_create_layer(x_pos, bottom_row, "Popup_Instances", obj_sel_Xan)
		}
		x_pos += x_gap;
		
		draw_text(x_pos, bottom_row - text_gap, "Bronwin")
		if(!instance_exists(obj_sel_Bronwin))
		{
			instance_create_layer(x_pos, bottom_row, "Popup_Instances", obj_sel_Bronwin)
		}
		x_pos += x_gap;
		
		draw_text(x_pos, bottom_row - text_gap, "Nyx")
		if(!instance_exists(obj_sel_Nyx))
		{
			instance_create_layer(x_pos, bottom_row, "Popup_Instances", obj_sel_Nyx)
		}
		x_pos += x_gap;
		
		draw_text(x_pos, bottom_row - text_gap, "Darien")
		if(!instance_exists(obj_sel_Darien))
		{
			instance_create_layer(x_pos, bottom_row, "Popup_Instances", obj_sel_Darien)
		}
		
		// Reset text changes
		draw_set_color(c_white)
		
	break;
	
	case "load_game": // Load a previous game
		
	break;
	
	case "options": // View and change game settings
		
	break;
	
	case "credits": // View credits
		
	break;
	
	case "none": // Initial empty state before assigning other state
		
	break;
}
