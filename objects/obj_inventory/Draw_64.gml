/// @description Display Inventory


if(global.show_inventory == true)
{
	// Gap between slots and edge of inventory
	var spacer = 12;
		
	// Width and height of inventory
	var inv_width = 24 + global.inventory_row_length * 64;
	var inv_height = 64 + (((global.inventory_slots - 1) div global.inventory_row_length) + 1) * 64;

	// x-pos
	var x_pos = (global.res_w / 2) - (inv_width / 2) + (spacer * 2);
	var y_pos = (global.res_h / 2) - (inv_height / 2) + (spacer * 2) - 20;


	// Draw inventory image
	draw_sprite_stretched
	(
		spr_inventory,
		0,
		x_pos - spacer,
		y_pos - spacer,
		inv_width,
		inv_height
	);
	
	// Inventory text
	draw_set_font(fnt_menu)
		draw_set_halign(fa_left)
			draw_text(x_pos + 10, y_pos, "INVENTORY")
		draw_set_halign(fa_center)
	draw_set_font(fnt_default)

	// Gold counter
	draw_set_font(fnt_menu)
		draw_set_halign(fa_right)
			draw_text(x_pos + 375, y_pos, "GOLD: " + string(global.party_gold))
		draw_set_halign(fa_center)
	draw_set_font(fnt_default)

	// Draw inventory slots
	for(var i = 0; i < global.inventory_slots; i++)
	{
		var xx = x_pos + (i mod global.inventory_row_length) * 64;
		var yy = y_pos + (i div global.inventory_row_length) * 64 + 40;
		draw_sprite(spr_inventory_slot, 0, xx, yy)
		if(global.inventory[i] != -1)
		{
			draw_sprite(global.inventory[i].spr, 0, xx, yy);
		}
	}
}
