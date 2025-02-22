

draw_self()

// Set Font
draw_set_font(fnt_menu)

// Set Location
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set Color
draw_set_color(c_black)

//Draw Text
draw_text(x, y, button_text);

// Reset Color
draw_set_color(c_white)

// Reset Location
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Reset Font
draw_set_font(fnt_default);