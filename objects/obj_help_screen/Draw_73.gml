/// @description Draw Button


// Set Font
draw_set_font(fnt_help_screen)

// Set Location for left text
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//Draw Text
draw_text(x - 150, y - 20, help_text_left);

// Set Location for right text
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//Draw Text
draw_text(x, y - 20, help_text_right);

// Reset Location
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Reset Font
draw_set_font(fnt_default);

