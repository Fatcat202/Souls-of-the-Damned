/// @description Toggle Inventory

// Prevent inventory pausing if on death screen
if(!global.game_death_paused && !global.game_esc_paused)
{
	// Activate Inventory Pause
	if(global.show_inventory = false)
	{
		global.show_inventory = true;
		if (!global.game_combat_paused) scr_inventory_pause()
		
		// Create Inventory Menu object
		instance_create_layer(0, 0, "Inventory", obj_inventory);

	}else // Deactivate Inventory Pause
	{
		global.show_inventory = false;
		
		// Resume (Rest located in obj_player_parent Create)
		global.end_inventory_pause = true;
		
		if (!global.game_combat_paused) instance_activate_all()
		
		// Create Inventory Menu object
		instance_destroy(obj_inventory);
		layer_destroy_instances("Inventory");
	}
}