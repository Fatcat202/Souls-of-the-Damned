/// @description Insert description here
// You can write your code in this editor

// Draw black rectangle to darken background
draw_set_alpha(0.5)
	draw_set_color(c_black);
		draw_rectangle(0, 0, global.cam_target_x + (global.res_w), global.cam_target_y + (global.res_h), false)
	draw_set_color(c_white)
draw_set_alpha(1);
	

// Death Text
draw_set_halign(fa_center)
	draw_set_font(fnt_menu)
		draw_text(death_button_x, death_text_y, "You Have Died")
	draw_set_font(fnt_default)
draw_set_halign(fa_center)