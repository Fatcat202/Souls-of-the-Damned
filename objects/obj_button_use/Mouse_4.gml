/// @description Use


// If selected item is a scroll
if(global.inventory[item].is_scroll == 1)
{
	// Activate scroll control, found in game_manager_step_0
	scr_scroll_control()
	
	// Save script of scroll being used
	global.scroll_script = global.inventory[item].scr
	global.scroll_place = item
	
}else// If selected item is not a scroll
{
	// Execute script and remove from inventory
	script_execute(global.inventory[item].scr)
	scr_inventory_remove(global.inventory, global.inventory_slots, item)
}



// Destroy self and menu
instance_destroy(obj_item_control_menu)
instance_destroy(obj_button_use)

