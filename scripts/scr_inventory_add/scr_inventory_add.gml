function scr_inventory_add(item, inventory_slots, inventory)
{
	// Add item to inventory
	
	var slot = scr_inventory_search(inventory, inventory_slots, item)
	if(slot < inventory_slots) inventory[slot] = global.item_stats[item];
		
}
