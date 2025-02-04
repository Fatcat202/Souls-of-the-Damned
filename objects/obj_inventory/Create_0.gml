

// Gap between slots and edge of inventory
spacer = 12;
		
// Width and height of inventory
inv_width = 24 + global.inventory_row_length * 64;
inv_height = 64 + (((global.inventory_slots - 1) div global.inventory_row_length) + 1) * 64;

// x-pos
x_pos = global.cam_target_x + (global.res_w / 2) - (inv_width / 2) + (spacer * 2);
y_pos = global.cam_target_y + (global.res_h / 2) - (inv_height / 2) + (spacer * 2) - 20;


// Inventory Controls
inventory_hover = -1;
slot_hover = -1;
inventory_drag = -1;
slot_drag = -1;
item_drag = -1;
state = -1;


	
function mouse_over()
{
	slot_hover = -1;
	inventory_hover = -1;
	
	
	// Create mouse over boxes for inventory slots
	for(var i = 0; i < global.inventory_slots; i++)
	{
		var xx = x_pos + (i mod global.inventory_row_length) * 64;
		var yy = y_pos + (i div global.inventory_row_length) * 64 + 40;
	
		var spr_width = sprite_get_width(spr_inventory_slot);
	
		if(point_in_rectangle(mouse_x, mouse_y, xx, yy, xx + 64, yy + 64))
		{
			slot_hover = i;
			inventory_hover = id;
		}
	}
}


state_free = function()
{
	mouse_over();
	
	if(mouse_check_button(mb_left)) && (slot_hover != -1) && (inventory_hover != -1)
	{
		//Enter drag state
		state = state_drag;
		item_drag = inventory_hover;
		inventory_drag = inventory_hover;
		slot_drag = slot_hover;
	}
}

state_drag = function()
{
	mouse_over();
	
	if(!mouse_check_button(mb_left))
	{
		//Swap with slot if hovering
		if(slot_hover != -1) scr_inventory_swap(slot_drag, slot_hover)
		
		//Return to free state
		state = state_free;
		item_drag = -1;
		inventory_drag = -1;
		slot_drag = -1;
	}
}
	
state = state_free;

	
	
	
	
	
	