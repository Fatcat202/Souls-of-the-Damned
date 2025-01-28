/// @description Controls


#region Change Attacks

	if(keyboard_check(ord(global.cont_attack_1)))
	{
		active_power = 1;
		obj_button_attack_parent.image_index = 0;
		obj_button_atk_1.image_index = 1;
	}
	if(keyboard_check(ord(global.cont_attack_2)))
	{
		active_power = 2;
		obj_button_attack_parent.image_index = 0;
		obj_button_atk_2.image_index = 1;
	}
	if(keyboard_check(ord(global.cont_attack_3)))
	{
		active_power = 3;
		obj_button_attack_parent.image_index = 0;
		obj_button_atk_3.image_index = 1;
	}
	if(keyboard_check(ord(global.cont_attack_4)))
	{
		active_power = 4;
		obj_button_attack_parent.image_index = 0;
		obj_button_atk_4.image_index = 1;
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
			with (obj_ply_npc_parent)
			{
				command_state = "attack_state";
				
			}
			show_debug_message("** ALL ATTACK STATE **");
		}else
		{
			command_state = "attack_state";
			show_debug_message("** ATTACK STATE **");
			
		}
		obj_button_follow.image_index = 0;
		obj_button_defend.image_index = 0;
		
		obj_button_attack.image_index = 1;
	}
	if(keyboard_check_pressed(ord("X"))) // Command NPC to hold their ground
	{
		if(global.command_all == true)
		{
			with (obj_ply_npc_parent)
			{
				command_state = "defend_state";

			}
			show_debug_message("** ALL DEFEND STATE **");
		}else
		{
			command_state = "defend_state";
			show_debug_message("** DEFEND STATE **");

		}
		
		obj_button_attack.image_index = 0;
		obj_button_follow.image_index = 0;
		
		obj_button_defend.image_index = 1;
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
				
				// Clear all path points if there are any
				if(path_exists(follow_path)) path_delete(follow_path);
				if(path_exists(attack_path)) path_delete(attack_path);
	
				// Clear move path point if there are any, then create a new one
				if(path_exists(move_path)) path_delete(move_path);
				move_path = path_add();

				// Update player grid to show positions of enemies and walls
				mp_grid_clear_all(global.mp_grid_player)
				mp_grid_add_instances(global.mp_grid_player, obj_enemy_parent, true);
				mp_grid_add_instances(global.mp_grid_player, obj_collision_parent, true);

				// Create path on grid
				mp_grid_path(global.mp_grid_player, move_path, x, y, target_move_x, target_move_y, true);

			}
			show_debug_message("** ALL MOVE STATE **");
		}else
		{
			command_state_previous = command_state;
			command_state = "move_state";
			target_move_x = mouse_x;
			target_move_y = mouse_y;
			show_debug_message("** MOVE STATE **");
			
			// Clear all follow path points if there are any
			if(path_exists(follow_path)) path_delete(follow_path);
			if(path_exists(attack_path)) path_delete(attack_path);
	
			// Clear move path point if there are any, then create a new one
			if(path_exists(move_path)) path_delete(move_path)
			move_path = path_add();

			// Update player grid to show positions of enemies and walls
			mp_grid_clear_all(global.mp_grid_player)
			mp_grid_add_instances(global.mp_grid_player, obj_enemy_parent, true);
			mp_grid_add_instances(global.mp_grid_player, obj_collision_parent, true);

			// Create path on grid
			mp_grid_path(global.mp_grid_player, move_path, x, y, target_move_x, target_move_y, true);
			
		}
	}
	if(keyboard_check_pressed(ord("C"))) // Command NPC to follow player
	{
		if(global.command_all == true)
		{
			with (obj_ply_npc_parent)
			{
				command_state = "follow_state";

			}
			show_debug_message("** ALL FOLLOW STATE **");
		}else
		{
			command_state = "follow_state";
			show_debug_message("** FOLLOW STATE **");

		}
		obj_button_attack.image_index = 0;
		obj_button_defend.image_index = 0;
		
		obj_button_follow.image_index = 1;
	}
	if(keyboard_check_pressed(ord("V"))) // Toggle Command All
	{
		if(global.command_all == true)
		{
			// Turn command_all off
			global.command_all = false;
			
			obj_button_command_all.image_index = 0;
		
			show_debug_message("** COMMAND ALL OFF **");
		
		}else if(global.command_all == false)
		{
			// Turn command_all on
			global.command_all = true;
			
			obj_button_command_all.image_index = 1;
		
			show_debug_message("** COMMAND ALL ON **");
		}
	}
#endregion Commands
