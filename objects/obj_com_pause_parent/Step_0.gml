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
	var i = 1;
	if(keyboard_check_pressed(ord(global.cont_char_1)))
	{
		if(global.total_active_pcs > i) scr_change_com_pause_char(1); i++
	}
	if(keyboard_check_pressed(ord(global.cont_char_2)))
	{
		if(global.total_active_pcs > i) scr_change_com_pause_char(2); i++
	}
	if(keyboard_check_pressed(ord(global.cont_char_3)))
	{
		if(global.total_active_pcs > i) scr_change_com_pause_char(3); i++
	}
	if(keyboard_check_pressed(ord(global.cont_char_4)))
	{
		if(global.total_active_pcs > i) scr_change_com_pause_char(4); i++
	}

#endregion Change Character


#region Commands

	// Temporary to allow keyboard controls to test commands

	if(keyboard_check_pressed(ord("Z")))
	{
		if(global.command_all == true)
		{
			obj_ply_npc_parent.command_state = "attack_state";
		}else command_state = "attack_state";
		show_debug_message("** ATTACK STATE **");
	}
	if(keyboard_check_pressed(ord("X")))
	{
		if(global.command_all == true)
		{
			obj_ply_npc_parent.command_state = "defend_state";
		}else command_state = "defend_state";
		show_debug_message("** DEFEND STATE **");
	}
	if(keyboard_check_pressed(ord("C")))
	{
		if(global.command_all == true)
		{
			obj_ply_npc_parent.command_state = "move_state";
		}else command_state = "move_state";
	}
	if(keyboard_check_pressed(ord("V")))
	{
		if(global.command_all == true)
		{
			obj_ply_npc_parent.command_state = "follow_state";
		}else command_state = "follow_state";
		show_debug_message("** FOLLOW STATE **")
	}
	if(keyboard_check_pressed(ord("B"))) // Toggle Command All
	{
		if(global.command_all == true)
		{
			// Turn command_all off
			global.command_all = false;
		
			// Set sprite frame to frame 0
			image_speed = 0;
			image_index = 0;
		
		}else if(global.command_all == false)
		{
			// Turn command_all on
			global.command_all = true;
		
			// Set sprite frame to frame 1
			image_speed = 0;
			image_index = 1;
		}
	}
#endregion Commands
