function scr_inventory_remove(item_type)
{
	// Remove item from inventory
	var slot = scr_inventory_search(item_type)
	if(slot != -1)
	{
		global.inventory[slot] = -1;
		return true;
	}
	else return false;
}