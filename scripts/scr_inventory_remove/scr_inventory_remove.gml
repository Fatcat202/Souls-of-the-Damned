function scr_inventory_remove(inventory, inventory_slots, item = -1)
{
	// Remove item from inventory

	if(item != -1)
	{
		for(var i = inventory_slots; i != -1; i--)
		{
			if(inventory[i] == item)
			{
				if(i < inventory_slots) inventory[i] = -1;
					
				return;
			}
		}
	}else
	{
		
		// If no item selected, remove last item in inventory
		for(var i = inventory_slots - 1; i != -1; i--)
		{
			if(inventory[i] != -1)
			{
				
				if(i < inventory_slots) inventory[i] = -1;
					
				return;
			}
		}
	}

}