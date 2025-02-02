function scr_inventory_search(item_type)
{
	// Search for item position in inventory. If it does not exist, return -1
	
	for(var i = 0; i < global.inventory_slots; i++)
	{
		if(global.inventory[i] == item_type)
		{
			return(i);
		}else return -1;
	}
}