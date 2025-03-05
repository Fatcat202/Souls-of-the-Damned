// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_resurrection_scroll()
{
	// Bring a player back from the dead
	
	// Find target
	target = instance_position(mouse_x, mouse_y, obj_com_pause_npc_parent)
	
	// Activate when clicking target and when target is dead
	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, target) && target.is_dead)
	{
		with(target)
		{
			// Variables
			var die_num = global.inventory[global.scroll_place].die_num
			var die_sides = global.inventory[global.scroll_place].die_sides
			var die_mod = global.inventory[global.scroll_place].die_mod
			
			
			// Reset death conditions
			is_dead = false;
			can_attack = true;
			can_control = true;
			can_damage = true;
			can_move = true;
			can_regain_armor = true;
			can_heal = true;
	
			// Alter image to show alive
			image_angle = 0;
			image_blend = c_white;
			
			// Reduce total number of characters dead
			global.total_dead--
			
			// Heal the revived character, add overheal
			scr_heal(scr_roll_dice(die_num, die_sides) + die_mod, global.player_level * 2)
			
			// Remove item from inventory
			scr_inventory_remove(global.inventory, global.inventory_slots, global.scroll_place)
			
			// End scroll control
			scr_scroll_control_end()
		}
	}

}