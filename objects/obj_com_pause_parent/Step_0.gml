/// @description Controls


#region Change Attacks

	if(keyboard_check(ord(global.cont_attack_1)))
	{
		active_power = 1;
	}
	if(keyboard_check(ord(global.cont_attack_2)))
	{
		active_power = 2;
	}
	if(keyboard_check(ord(global.cont_attack_3)))
	{
		active_power = 3;
	}
	if(keyboard_check(ord(global.cont_attack_4)))
	{
		active_power = 4;
	}

#endregion Change Attacks


#region Change Character 

	if(keyboard_check_pressed(ord(global.cont_char_1)))
	{
		if(global.total_active_pcs >= 1) scr_change_com_pause_char(1);
	}
	if(keyboard_check_pressed(ord(global.cont_char_2)))
	{
		if(global.total_active_pcs >= 2) scr_change_com_pause_char(2);
	}
	if(keyboard_check_pressed(ord(global.cont_char_3)))
	{
		if(global.total_active_pcs >= 3) scr_change_com_pause_char(3);
	}
	if(keyboard_check_pressed(ord(global.cont_char_4)))
	{
		if(global.total_active_pcs == 4) scr_change_com_pause_char(4);
	}

#endregion Change Character


#region Commands

	// Temporary to allow keyboard controls to test commands

	if(keyboard_check_pressed(ord("Z"))) // Command NPC to seek out nearby enemies
	{
		if(global.command_all == true)
		{
			with obj_ply_npc_parent command_state = "attack_state";
		}else command_state = "attack_state";
		show_debug_message("** ATTACK STATE **");
	}
	if(keyboard_check_pressed(ord("X"))) // Command NPC to hold their ground
	{
		if(global.command_all == true)
		{
			with obj_ply_npc_parent command_state = "defend_state";
		}else command_state = "defend_state";
		show_debug_message("** DEFEND STATE **");
	}
	if(mouse_check_button_pressed(mb_right)) // Select position to move to
	{
		if(global.command_all == true)
		{
			with obj_ply_npc_parent
			{
				previous_command_state = command_state;
				command_state = "move_state";
				target_move_x = mouse_x;
				target_move_y = mouse_y;
				show_debug_message("** MOVE STATE **");
			}
		}else
		{
			command_state_previous = command_state;
			command_state = "move_state";
			target_move_x = mouse_x;
			target_move_y = mouse_y;
			show_debug_message("** MOVE STATE **");
			
		}
	}
	if(keyboard_check_pressed(ord("C"))) // Command NPC to follow player
	{
		if(global.command_all == true)
		{
			obj_ply_npc_parent.command_state = "follow_state";
		}else command_state = "follow_state";
		show_debug_message("** FOLLOW STATE **")
	}
	if(keyboard_check_pressed(ord("V"))) // Toggle Command All
	{
		if(global.command_all == true)
		{
			// Turn command_all off
			global.command_all = false;
		
			// Set sprite frame to frame 0
			image_speed = 0;
			image_index = 0;
			show_debug_message("** COMMAND ALL OFF **");
		
		}else if(global.command_all == false)
		{
			// Turn command_all on
			global.command_all = true;
		
			// Set sprite frame to frame 1
			image_speed = 0;
			image_index = 1;
			show_debug_message("** COMMAND ALL ON **");
		}
	}
#endregion Commands
