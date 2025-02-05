/// @description Update Location

if(mouse_check_button(mb_right) && obj_inventory.held == true)
{
	x = clamp(mouse_x, global.cam_x, global.cam_x + global.res_w - (sprite_get_width(sprite_index)));
	y = clamp(mouse_y, global.cam_y + (sprite_get_height(sprite_index) / 2), global.cam_y + global.res_h - (sprite_get_height(sprite_index) / 2));
}


// Update variables
spr_width = sprite_get_width(sprite_index);
spr_height = sprite_get_height(sprite_index);

xx = x + spr_width / 2;
yy = y + spr_height / 2;

title_y = y - 60;
description_y = title_y + 40;


h_align = draw_get_halign();
v_align = draw_get_valign();

draw_self();



draw_set_halign(fa_center);
draw_set_valign(fa_top);
	draw_set_font(fnt_help_screen);
	
		// Write Title
		draw_text_ext(xx, title_y, title, 14, 150);
		
		// Write Description
		draw_text_ext(xx, description_y, description, 14, 140);
		
	draw_set_font(fnt_default);
draw_set_halign(h_align);
draw_set_valign(v_align);
		
