/// @description Insert description here
// You can write your code in this editor

// Check if the player has enough gold
if(global.party_gold >= global.inventory_shop[item].price)
{
	
	var index = 0;
	for(var i = 0; i < global.item_index_length; i++)
	{
		if(global.inventory_shop[item] == global.item_stats[i])
		{
			index = i;
			break;
		}
		
	}
	
	
	scr_inventory_add(index, global.inventory_slots, global.inventory)
	
	
	
	
	
	
	global.party_gold -= global.inventory_shop[item].price
}else
{
	show_debug_message("Not enough gold")
}

// Destroy self and menu
instance_destroy(obj_item_control_menu)
instance_destroy(obj_button_use)