/// @description Draw Box and Text


draw_self();

var h_align = draw_get_halign();
var v_align = draw_get_valign();



// Draw name of ability
draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
	draw_text(x, y - 70, name);


// Draw description
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
	draw_text_ext(x, y, description, 14, 130);
	

draw_set_halign(h_align);
draw_set_valign(v_align);
