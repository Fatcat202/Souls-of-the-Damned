function scr_inventory_add(item_type)
{
	// Add item to inventory
	
	var slot = scr_inventory_search(item_type)
	if(slot != -1)
	{
		global.inventory[slot] = item_type;
		return true;
	}else return false;
}